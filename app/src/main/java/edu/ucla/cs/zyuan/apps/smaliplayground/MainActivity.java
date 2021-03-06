package edu.ucla.cs.zyuan.apps.smaliplayground;

import android.Manifest;
import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.Snackbar;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.telephony.TelephonyManager;
import android.text.format.DateFormat;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.webkit.ValueCallback;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ToggleButton;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;

public class MainActivity extends AppCompatActivity {

    private final String LOG_TAG = "WebLatency";
    private final String logPath = "latency-analyzer";
    private final String logFileNameBase = "chrome_timing_";

    private final int MY_PERMISSIONS_WRITE_EXTERNAL_STORAGE = 337;

    private final String logFilePath = Environment.getExternalStorageDirectory()
            .getAbsolutePath() + "/" + logPath;
//    Date date = new Date(location.getTime());
//    DateFormat dateFormat = android.text.format.DateFormat.getDateFormat(getApplicationContext());
//    String a = DateFormat.format("yyyy-MM-dd hh:mm:ss", new java.util.Date());

    private File logFile = null;

    private OutputStream os;

    private WebView mWebView;

    private TextView latencyTextView;
    private EditText mWebsiteAddr;
    private boolean mAutoReload = true;

    private Timer mTimer;
    private TelephonyManager mTelephonyManager;
    private WifiManager mWifiManager;

    private JSONObject timings;

    private String jsData = "";
    private String carrierName = "";
    private int dataNetworkType = 0;
    private int navigationStart = 0;
    private int unloadEventStart = 0;
    private int unloadEventEnd = 0;
    private int redirectStart = 0;
    private int redirectEnd = 0;
    private int fetchStart = 0;
    private int domainLookupStart = 0;
    private int domainLookupEnd = 0;
    private int connectStart = 0;
    private int connectEnd = 0;
    private int secureConnectionStart = 0;
    private int requestStart = 0;
    private int responseStart = 0;
    private int responseEnd = 0;
    private int domLoading = 0;
    private int domInteractive = 0;
    private int domContentLoadedEventStart = 0;
    private int domContentLoadedEventEnd = 0;
    private int domComplete = 0;
    private int loadEventStart = 0;
    private int loadEventEnd = 0;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.KITKAT) {
            mWebView.setWebContentsDebuggingEnabled(true);
        }

        mWifiManager = (WifiManager) this.getApplicationContext().getSystemService(Context.WIFI_SERVICE);
        mWifiManager.setWifiEnabled(false);
        mTelephonyManager = (TelephonyManager) this.getApplicationContext().getSystemService(Context.TELEPHONY_SERVICE);

        logFile = new File(logFilePath, logFileNameBase + getLogMetadata() + ".txt");

        FloatingActionButton fab = (FloatingActionButton) findViewById(R.id.fab);
        fab.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                // Handle reload
//                mWebView.reload();
                mWebView.loadUrl(mWebsiteAddr.getText().toString());
                jsData = "";

                getDataFromJs("JSON.stringify(window.performance.timing)", mWebView);
                Snackbar.make(view, "Page successfully refreshed", Snackbar.LENGTH_LONG)
                        .setAction("Action", null).show();
            }
        });

        // Here, thisActivity is the current activity
        if (ContextCompat.checkSelfPermission(this,
                Manifest.permission.WRITE_EXTERNAL_STORAGE)
                != PackageManager.PERMISSION_GRANTED) {

            // Should we show an explanation?
            if (ActivityCompat.shouldShowRequestPermissionRationale(this,
                    Manifest.permission.WRITE_EXTERNAL_STORAGE)) {
            } else {
                ActivityCompat.requestPermissions(this,
                        new String[]{Manifest.permission.WRITE_EXTERNAL_STORAGE},
                        MY_PERMISSIONS_WRITE_EXTERNAL_STORAGE);
            }
        }

        if (!isExternalStorageWritable() || !isExternalStorageReadable()) {
            Log.w(LOG_TAG, "External storage is not R/W!");
        }

        mWebsiteAddr = (EditText) findViewById(R.id.visit_site);
        mWebView = (WebView) findViewById(R.id.my_webview);
        mWebView.getSettings().setJavaScriptEnabled(true); // enable javascript

        latencyTextView = (TextView) findViewById(R.id.latency_textview);
        latencyTextView.setText(R.string.load_latency);

        final Activity activity = this;

        mWebView.setWebViewClient(new WebViewClient() {
            @Override
            public void onReceivedError (WebView view, WebResourceRequest request, WebResourceError error) {
                Toast.makeText(activity, error.toString(), Toast.LENGTH_SHORT).show();
            }

        });

//        mWebView.loadUrl("https://www.google.com");
        mWebView.loadUrl(mWebsiteAddr.getText().toString());

        mTimer = null;

        ToggleButton auto_toggle_button = (ToggleButton) findViewById(R.id.auto_toggle_button);
        auto_toggle_button.setTextOff("Auto Mode OFF");
        auto_toggle_button.setTextOn("Auto Mode ON");
        auto_toggle_button.setChecked(true);

        Log.i(LOG_TAG, "Initializing toggle button");
        mTimer = new Timer();
        mTimer.schedule(new TimerTask() {
            @Override
            public void run() {
                TimerMethod();
            }
        }, 0, 20000);

        auto_toggle_button.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                if (isChecked) {
                    // The toggle is enabled
                    Log.i(LOG_TAG, "Toggle button is checked, automatically fetch webpage");

                    if (mTimer != null) {
                        mTimer.cancel();
                    }
                    mAutoReload = true;

                    mTimer = new Timer();
                    mTimer.schedule(new TimerTask() {
                        @Override
                        public void run() {
                            TimerMethod();
                        }

                    }, 0, 20000);
                } else {
                    // The toggle is disabled
                    Log.i(LOG_TAG, "Toggle button is not checked, disable automatic refreshing");
                    mAutoReload = false;

                    if (mTimer != null) {
                        mTimer.cancel();
                    }
                }
            }
        });

        callSmaliTestFunc();
    }


    @Override
    protected void onDestroy() {
        super.onDestroy();
        Log.w(LOG_TAG, "Closing weblatency app, re-enable WiFi");
        mWifiManager.setWifiEnabled(true);
    }

    private void callSmaliTestFunc() {
        Logging mLogging = new Logging();
        mLogging.TestLogging();
    }

    private void TimerMethod()
    {
        //This method is called directly by the timer
        //and runs in the same thread as the timer.

        //We call the method that will work with the UI
        //through the runOnUiThread method.
        if (mAutoReload) {
            this.runOnUiThread(Timer_Tick);
        }
    }

    private Runnable Timer_Tick = new Runnable() {
        public void run() {
            // This method runs in the same thread as the UI.

            // Do something to the UI thread here
            mWebView.reload();
            Log.i(LOG_TAG, "Reloaded web view");
            jsData = "";
            getDataFromJs("JSON.stringify(window.performance.timing)", mWebView);
        }
    };

    private String getLogMetadata() {
        String carrierName = mTelephonyManager.getNetworkOperatorName().replace(" ", "");;
        String timestamp = ((Long) (System.currentTimeMillis() / 1000)).toString();
        //String datetime = new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(new java.util.Date());
        String datetime = DateFormat.format("yyyyMMdd_HHmmss", new java.util.Date()).toString();
        return datetime + "_" + timestamp + "_" + android.os.Build.MANUFACTURER.replace(" ", "")
                + "-" + android.os.Build.MODEL.replace(" ", "") +"_" + carrierName;
    }

    private void parseJsData(String jsString) {
        try{
            timings = new JSONObject(jsString);
        } catch (Exception e) {
            Log.w(LOG_TAG, "Wrong parsing JSON data: " + jsString);
        }

        if (timings != null) {
            try {
                navigationStart = timings.getInt("navigationStart");
                unloadEventStart = timings.getInt("unloadEventStart");
                unloadEventEnd = timings.getInt("unloadEventEnd");
                redirectStart = timings.getInt("redirectStart");
                redirectEnd = timings.getInt("redirectEnd");
                fetchStart = timings.getInt("fetchStart");
                domainLookupStart = timings.getInt("domainLookupStart");
                domainLookupEnd = timings.getInt("domainLookupEnd");
                connectStart = timings.getInt("connectStart");
                connectEnd = timings.getInt("connectEnd");
                secureConnectionStart = timings.getInt("secureConnectionStart");
                requestStart = timings.getInt("requestStart");
                responseStart = timings.getInt("responseStart");
                responseEnd = timings.getInt("responseEnd");
                domLoading = timings.getInt("domLoading");
                domInteractive = timings.getInt("domInteractive");
                domContentLoadedEventStart = timings.getInt("domContentLoadedEventStart");
                domContentLoadedEventEnd = timings.getInt("domContentLoadedEventEnd");
                domComplete = timings.getInt("domComplete");
                loadEventStart = timings.getInt("loadEventStart");
                loadEventEnd = timings.getInt("loadEventEnd");

                calculateLatencies();
            } catch (JSONException e) {
                Log.w(LOG_TAG, "Exception in parsing json object" + e);
            }
        }
    }

    private void calculateLatencies() {
        StringBuilder latency = new StringBuilder();
        latency.append(String.format(Locale.US, "**["+ mTelephonyManager.getNetworkOperatorName() + "], "));
        latency.append(String.format(Locale.US, "pageLoadTime: %d, ", (loadEventStart - navigationStart)));
        latency.append(String.format(Locale.US, "pageRequestTime: %d, ", (loadEventStart - fetchStart)));
        latency.append(String.format(Locale.US, "dnsTime: %d, ", (domainLookupEnd - domainLookupStart)));
        latency.append(String.format(Locale.US, "tcpConnTime: %d, ", (connectEnd - connectStart)));
        latency.append(String.format(Locale.US, "httpRequestLatency: %d, ", (responseStart - requestStart)));
        latency.append(String.format(Locale.US, "httpConnTime: %d, ", (responseEnd - requestStart)));
        latency.append(String.format(Locale.US, "networkTime: %d, ", (responseEnd - domainLookupStart)));
        latency.append(String.format(Locale.US, "renderingTime: %d ", (domComplete - domLoading)));

        latencyTextView.setText(latency.toString().replaceAll(", ", "ms,\n"));
        writeExternalStorageFile(logFile, latency.toString());
    }


    private void getDataFromJs(String command, WebView webView) {
        // build anonymous function to execute javascript
        String js = String.format("(function() { return %s })();", command);

        webView.evaluateJavascript(js, new ValueCallback<String>() {
            @Override
            public void onReceiveValue(String s) {
                jsData = s.replaceAll("^\"|\"$", "");
                jsData = jsData.replaceAll("\\\\", "");
                parseJsData(jsData);

                if (!hasExternalStorageFile(logFile)) {
                    Log.w(LOG_TAG, "Creating " + logFile.toString());
                    createExternalStorageFile(logFilePath);
                }

                writeExternalStorageFile(logFile, jsData);
            }
        });
    }

    void createExternalStorageFile(String logFilePath) {
        File dir = new File(logFilePath);
        if (!dir.exists()) {
            Log.d(LOG_TAG, "Creating log file dir: " + dir);
            dir.mkdirs();
        }
    }

    void writeExternalStorageFile(File logFile, String data) {
        Log.d(LOG_TAG, "Received data: " + data);

        try {
            os = new FileOutputStream(logFile, true);
            os.write(data.getBytes());
            os.write("\n".getBytes());
            os.flush();
            os.close();
        } catch (IOException e) {
            // Unable to create file, likely because external storage is not currently mounted.
            Log.w("ExternalStorage", "Error writing " + os, e);
        }
    }

    void deleteExternalStorageFile(File file) {
        if (file != null) {
            file.delete();
        }
    }

    boolean hasExternalStorageFile(File file) {
        return file.exists() && file != null;
    }

    /* Checks if external storage is available for read and write */
    public boolean isExternalStorageWritable() {
        String state = Environment.getExternalStorageState();
        if (Environment.MEDIA_MOUNTED.equals(state)) {
            return true;
        }
        return false;
    }

    /* Checks if external storage is available to at least read */
    public boolean isExternalStorageReadable() {
        String state = Environment.getExternalStorageState();
        if (Environment.MEDIA_MOUNTED.equals(state) ||
                Environment.MEDIA_MOUNTED_READ_ONLY.equals(state)) {
            return true;
        }
        return false;
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement
        if (id == R.id.action_settings) {
            return true;
        }

        return super.onOptionsItemSelected(item);
    }
}
