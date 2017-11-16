.class public Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final MY_PERMISSIONS_WRITE_EXTERNAL_STORAGE:I

.field private Timer_Tick:Ljava/lang/Runnable;

.field private carrierName:Ljava/lang/String;

.field private connectEnd:I

.field private connectStart:I

.field private dataNetworkType:I

.field private domComplete:I

.field private domContentLoadedEventEnd:I

.field private domContentLoadedEventStart:I

.field private domInteractive:I

.field private domLoading:I

.field private domainLookupEnd:I

.field private domainLookupStart:I

.field private fetchStart:I

.field private jsData:Ljava/lang/String;

.field private latencyTextView:Landroid/widget/TextView;

.field private loadEventEnd:I

.field private loadEventStart:I

.field private logFile:Ljava/io/File;

.field private final logFileNameBase:Ljava/lang/String;

.field private final logFilePath:Ljava/lang/String;

.field private final logPath:Ljava/lang/String;

.field private mAutoReload:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTimer:Ljava/util/Timer;

.field private mWebView:Landroid/webkit/WebView;

.field private mWebsiteAddr:Landroid/widget/EditText;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private navigationStart:I

.field private os:Ljava/io/OutputStream;

.field private redirectEnd:I

.field private redirectStart:I

.field private requestStart:I

.field private responseEnd:I

.field private responseStart:I

.field private secureConnectionStart:I

.field private timings:Lorg/json/JSONObject;

.field private unloadEventEnd:I

.field private unloadEventStart:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 47
    const-string/jumbo v0, "WebLatency"

    iput-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->LOG_TAG:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "latency-analyzer"

    iput-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->logPath:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "chrome_timing_"

    iput-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->logFileNameBase:Ljava/lang/String;

    .line 51
    const/16 v0, 0x151

    iput v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->MY_PERMISSIONS_WRITE_EXTERNAL_STORAGE:I

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "latency-analyzer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->logFilePath:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->logFile:Ljava/io/File;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->mAutoReload:Z

    .line 75
    const-string/jumbo v0, ""

    iput-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->jsData:Ljava/lang/String;

    .line 76
    const-string/jumbo v0, ""

    iput-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->carrierName:Ljava/lang/String;

    .line 77
    iput v2, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->dataNetworkType:I

    .line 78
    iput v2, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->navigationStart:I

    .line 79
    iput v2, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->unloadEventStart:I

    .line 80
    iput v2, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->unloadEventEnd:I

    .line 81
    iput v2, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->redirectStart:I

    .line 82
    iput v2, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->redirectEnd:I

    .line 83
    iput v2, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->fetchStart:I

    .line 84
    iput v2, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->domainLookupStart:I

    .line 85
    iput v2, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->domainLookupEnd:I

    .line 86
    iput v2, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->connectStart:I

    .line 87
    iput v2, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->connectEnd:I

    .line 88
    iput v2, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->secureConnectionStart:I

    .line 89
    iput v2, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->requestStart:I

    .line 90
    iput v2, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->responseStart:I

    .line 91
    iput v2, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->responseEnd:I

    .line 92
    iput v2, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->domLoading:I

    .line 93
    iput v2, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->domInteractive:I

    .line 94
    iput v2, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->domContentLoadedEventStart:I

    .line 95
    iput v2, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->domContentLoadedEventEnd:I

    .line 96
    iput v2, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->domComplete:I

    .line 97
    iput v2, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->loadEventStart:I

    .line 98
    iput v2, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->loadEventEnd:I

    .line 247
    new-instance v0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$5;

    invoke-direct {v0, p0}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$5;-><init>(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;)V

    iput-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->Timer_Tick:Ljava/lang/Runnable;

    return-void
.end method

.method private TimerMethod()V
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->mAutoReload:Z

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->Timer_Tick:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 245
    :cond_0
    return-void
.end method

.method static synthetic access$000(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    .prologue
    .line 45
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->mWebsiteAddr:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    .prologue
    .line 45
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$200(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    .prologue
    .line 45
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->jsData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->jsData:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 0
    .param p0, "x0"    # Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/webkit/WebView;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->getDataFromJs(Ljava/lang/String;Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$400(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->TimerMethod()V

    return-void
.end method

.method static synthetic access$500(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    .prologue
    .line 45
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$502(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 45
    iput-object p1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->mTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$602(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->mAutoReload:Z

    return p1
.end method

.method static synthetic access$700(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->parseJsData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    .prologue
    .line 45
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->logFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$900(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    .prologue
    .line 45
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->logFilePath:Ljava/lang/String;

    return-object v0
.end method

.method private calculateLatencies()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .local v0, "latency":Ljava/lang/StringBuilder;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "**["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "], "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "pageLoadTime: %d, "

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->loadEventStart:I

    iget v5, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->navigationStart:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "pageRequestTime: %d, "

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->loadEventStart:I

    iget v5, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->fetchStart:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "dnsTime: %d, "

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->domainLookupEnd:I

    iget v5, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->domainLookupStart:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "tcpConnTime: %d, "

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->connectEnd:I

    iget v5, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->connectStart:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "httpRequestLatency: %d, "

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->responseStart:I

    iget v5, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->requestStart:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "httpConnTime: %d, "

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->responseEnd:I

    iget v5, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->requestStart:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "networkTime: %d, "

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->responseEnd:I

    iget v5, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->domainLookupStart:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "renderingTime: %d "

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->domComplete:I

    iget v5, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->domLoading:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->latencyTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ", "

    const-string/jumbo v4, "ms,\n"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->logFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->writeExternalStorageFile(Ljava/io/File;Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method private callSmaliTestFunc()V
    .locals 1

    .prologue
    .line 231
    new-instance v0, Ledu/ucla/cs/zyuan/apps/smaliplayground/Logging;

    invoke-direct {v0}, Ledu/ucla/cs/zyuan/apps/smaliplayground/Logging;-><init>()V

    .line 232
    .local v0, "mLogging":Ledu/ucla/cs/zyuan/apps/smaliplayground/Logging;
    invoke-virtual {v0}, Ledu/ucla/cs/zyuan/apps/smaliplayground/Logging;->TestLogging()V

    .line 233
    return-void
.end method

.method private getDataFromJs(Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 325
    const-string/jumbo v1, "(function() { return %s })();"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "js":Ljava/lang/String;
    new-instance v1, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$6;

    invoke-direct {v1, p0}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$6;-><init>(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;)V

    invoke-virtual {p2, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 342
    return-void
.end method

.method private getLogMetadata()Ljava/lang/String;
    .locals 8

    .prologue
    .line 260
    iget-object v3, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, " "

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "carrierName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "timestamp":Ljava/lang/String;
    const-string/jumbo v3, "yyyyMMdd_HHmmss"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "datetime":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v5, " "

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v5, " "

    const-string/jumbo v6, ""

    .line 265
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 264
    return-object v3
.end method

.method private parseJsData(Ljava/lang/String;)V
    .locals 4
    .param p1, "jsString"    # Ljava/lang/String;

    .prologue
    .line 270
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->timings:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->timings:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 277
    :try_start_1
    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->timings:Lorg/json/JSONObject;

    const-string/jumbo v2, "navigationStart"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->navigationStart:I

    .line 278
    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->timings:Lorg/json/JSONObject;

    const-string/jumbo v2, "unloadEventStart"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->unloadEventStart:I

    .line 279
    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->timings:Lorg/json/JSONObject;

    const-string/jumbo v2, "unloadEventEnd"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->unloadEventEnd:I

    .line 280
    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->timings:Lorg/json/JSONObject;

    const-string/jumbo v2, "redirectStart"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->redirectStart:I

    .line 281
    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->timings:Lorg/json/JSONObject;

    const-string/jumbo v2, "redirectEnd"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->redirectEnd:I

    .line 282
    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->timings:Lorg/json/JSONObject;

    const-string/jumbo v2, "fetchStart"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->fetchStart:I

    .line 283
    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->timings:Lorg/json/JSONObject;

    const-string/jumbo v2, "domainLookupStart"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->domainLookupStart:I

    .line 284
    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->timings:Lorg/json/JSONObject;

    const-string/jumbo v2, "domainLookupEnd"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->domainLookupEnd:I

    .line 285
    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->timings:Lorg/json/JSONObject;

    const-string/jumbo v2, "connectStart"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->connectStart:I

    .line 286
    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->timings:Lorg/json/JSONObject;

    const-string/jumbo v2, "connectEnd"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->connectEnd:I

    .line 287
    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->timings:Lorg/json/JSONObject;

    const-string/jumbo v2, "secureConnectionStart"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->secureConnectionStart:I

    .line 288
    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->timings:Lorg/json/JSONObject;

    const-string/jumbo v2, "requestStart"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->requestStart:I

    .line 289
    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->timings:Lorg/json/JSONObject;

    const-string/jumbo v2, "responseStart"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->responseStart:I

    .line 290
    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->timings:Lorg/json/JSONObject;

    const-string/jumbo v2, "responseEnd"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->responseEnd:I

    .line 291
    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->timings:Lorg/json/JSONObject;

    const-string/jumbo v2, "domLoading"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->domLoading:I

    .line 292
    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->timings:Lorg/json/JSONObject;

    const-string/jumbo v2, "domInteractive"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->domInteractive:I

    .line 293
    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->timings:Lorg/json/JSONObject;

    const-string/jumbo v2, "domContentLoadedEventStart"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->domContentLoadedEventStart:I

    .line 294
    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->timings:Lorg/json/JSONObject;

    const-string/jumbo v2, "domContentLoadedEventEnd"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->domContentLoadedEventEnd:I

    .line 295
    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->timings:Lorg/json/JSONObject;

    const-string/jumbo v2, "domComplete"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->domComplete:I

    .line 296
    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->timings:Lorg/json/JSONObject;

    const-string/jumbo v2, "loadEventStart"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->loadEventStart:I

    .line 297
    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->timings:Lorg/json/JSONObject;

    const-string/jumbo v2, "loadEventEnd"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->loadEventEnd:I

    .line 299
    invoke-direct {p0}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->calculateLatencies()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 304
    :cond_0
    :goto_1
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "WebLatency"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Wrong parsing JSON data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 300
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 301
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "WebLatency"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception in parsing json object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method createExternalStorageFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "logFilePath"    # Ljava/lang/String;

    .prologue
    .line 345
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 346
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 347
    const-string/jumbo v1, "WebLatency"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Creating log file dir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 350
    :cond_0
    return-void
.end method

.method deleteExternalStorageFile(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 368
    if-eqz p1, :cond_0

    .line 369
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 371
    :cond_0
    return-void
.end method

.method hasExternalStorageFile(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 374
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExternalStorageReadable()Z
    .locals 2

    .prologue
    .line 388
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "state":Ljava/lang/String;
    const-string/jumbo v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "mounted_ro"

    .line 390
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 391
    :cond_0
    const/4 v1, 0x1

    .line 393
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isExternalStorageWritable()Z
    .locals 2

    .prologue
    .line 379
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "state":Ljava/lang/String;
    const-string/jumbo v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    const/4 v1, 0x1

    .line 383
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 103
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const v0, 0x7f0a001a

    invoke-virtual {p0, v0}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->setContentView(I)V

    .line 105
    const v0, 0x7f0800ab

    invoke-virtual {p0, v0}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/Toolbar;

    .line 106
    .local v9, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0, v9}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->mWebView:Landroid/webkit/WebView;

    invoke-static {v4}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 112
    :cond_0
    invoke-virtual {p0}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 113
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 114
    invoke-virtual {p0}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 116
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->logFilePath:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "chrome_timing_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->getLogMetadata()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->logFile:Ljava/io/File;

    .line 118
    const v0, 0x7f080046

    invoke-virtual {p0, v0}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/design/widget/FloatingActionButton;

    .line 119
    .local v8, "fab":Landroid/support/design/widget/FloatingActionButton;
    new-instance v0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$1;

    invoke-direct {v0, p0}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$1;-><init>(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;)V

    invoke-virtual {v8, v0}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const-string/jumbo v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    const-string/jumbo v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 148
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->isExternalStorageWritable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->isExternalStorageReadable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 149
    :cond_2
    const-string/jumbo v0, "WebLatency"

    const-string/jumbo v1, "External storage is not R/W!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_3
    const v0, 0x7f0800b9

    invoke-virtual {p0, v0}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->mWebsiteAddr:Landroid/widget/EditText;

    .line 153
    const v0, 0x7f080063

    invoke-virtual {p0, v0}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->mWebView:Landroid/webkit/WebView;

    .line 154
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 156
    const v0, 0x7f080057

    invoke-virtual {p0, v0}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->latencyTextView:Landroid/widget/TextView;

    .line 157
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->latencyTextView:Landroid/widget/TextView;

    const v1, 0x7f0d0022

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 159
    move-object v6, p0

    .line 161
    .local v6, "activity":Landroid/app/Activity;
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$2;

    invoke-direct {v1, p0, v6}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$2;-><init>(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 170
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->mWebsiteAddr:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->mTimer:Ljava/util/Timer;

    .line 174
    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ToggleButton;

    .line 175
    .local v7, "auto_toggle_button":Landroid/widget/ToggleButton;
    const-string/jumbo v0, "Auto Mode OFF"

    invoke-virtual {v7, v0}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 176
    const-string/jumbo v0, "Auto Mode ON"

    invoke-virtual {v7, v0}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {v7, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 179
    const-string/jumbo v0, "WebLatency"

    const-string/jumbo v1, "Initializing toggle button"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->mTimer:Ljava/util/Timer;

    .line 181
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->mTimer:Ljava/util/Timer;

    new-instance v1, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$3;

    invoke-direct {v1, p0}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$3;-><init>(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x4e20

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 188
    new-instance v0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$4;

    invoke-direct {v0, p0}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$4;-><init>(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;)V

    invoke-virtual {v7, v0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 219
    invoke-direct {p0}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->callSmaliTestFunc()V

    .line 220
    return-void

    .line 142
    .end local v6    # "activity":Landroid/app/Activity;
    .end local v7    # "auto_toggle_button":Landroid/widget/ToggleButton;
    :cond_4
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v5

    const/16 v1, 0x151

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 399
    invoke-virtual {p0}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 400
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 225
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 226
    const-string/jumbo v0, "WebLatency"

    const-string/jumbo v1, "Closing weblatency app, re-enable WiFi"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 228
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 408
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 411
    .local v0, "id":I
    const v1, 0x7f080017

    if-ne v0, v1, :cond_0

    .line 412
    const/4 v1, 0x1

    .line 415
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method writeExternalStorageFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .param p1, "logFile"    # Ljava/io/File;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 353
    const-string/jumbo v1, "WebLatency"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Received data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->os:Ljava/io/OutputStream;

    .line 357
    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->os:Ljava/io/OutputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 358
    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->os:Ljava/io/OutputStream;

    const-string/jumbo v2, "\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 359
    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->os:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 360
    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->os:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :goto_0
    return-void

    .line 361
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "ExternalStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error writing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->os:Ljava/io/OutputStream;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
