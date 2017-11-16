package edu.ucla.cs.zyuan.apps.smaliplayground;

import android.util.Log;

/**
 * Created by zengwen on 11/15/17.
 */

public class Logging {

    private final String mLogTag = "";
    private int num = 0;

    public void TestLogging() {
        Log.i(mLogTag, "GoogleAuthUtil");
        Log.w("TempTag", "%d" + num);
    }
}
