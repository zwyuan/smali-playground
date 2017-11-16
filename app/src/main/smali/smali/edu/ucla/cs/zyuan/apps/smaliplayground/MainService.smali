.class public Ledu/ucla/cs/zyuan/apps/smaliplayground/MainService;
.super Landroid/app/Service;
.source "MainService.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final absoluteLogPath:Ljava/lang/String;

.field private final mBinder:Lnet/mobileinsight/milab/ITask$Stub;

.field private final pluginName:Ljava/lang/String;

.field private final relativeLogPath:Ljava/lang/String;

.field private final taskDescription:Ljava/lang/String;

.field private final taskName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 22
    const-string/jumbo v0, "WebLatencyExp"

    iput-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainService;->LOG_TAG:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "WebLatencyExp"

    iput-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainService;->taskName:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "Collect LTE latency in accessing a webpage"

    iput-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainService;->taskDescription:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, "NetLoggerLatency"

    iput-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainService;->pluginName:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "imc"

    iput-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainService;->relativeLogPath:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "imc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainService;->absoluteLogPath:Ljava/lang/String;

    .line 60
    new-instance v0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainService$1;

    invoke-direct {v0, p0}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainService$1;-><init>(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainService;)V

    iput-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainService;->mBinder:Lnet/mobileinsight/milab/ITask$Stub;

    return-void
.end method

.method static synthetic access$000(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ledu/ucla/cs/zyuan/apps/smaliplayground/MainService;

    .prologue
    .line 20
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainService;->absoluteLogPath:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    const-string/jumbo v1, "WebLatencyExp"

    const-string/jumbo v2, "onBind"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v0, "dialogIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 47
    invoke-virtual {p0, v0}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainService;->startActivity(Landroid/content/Intent;)V

    .line 48
    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainService;->mBinder:Lnet/mobileinsight/milab/ITask$Stub;

    return-object v1
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 34
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 53
    const-string/jumbo v1, "WebLatencyExp"

    const-string/jumbo v2, "onDestroy()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string/jumbo v1, "WebLatencyExp"

    const-string/jumbo v2, "Closing weblatency app, re-enable WiFi"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 56
    .local v0, "mWifiManager":Landroid/net/wifi/WifiManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 57
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 58
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 38
    const-string/jumbo v0, "WebLatencyExp"

    const-string/jumbo v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v0, 0x1

    return v0
.end method
