.class Ledu/ucla/cs/zyuan/apps/smaliplayground/MainService$1;
.super Lnet/mobileinsight/milab/ITask$Stub;
.source "MainService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/ucla/cs/zyuan/apps/smaliplayground/MainService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainService;


# direct methods
.method constructor <init>(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainService;)V
    .locals 0
    .param p1, "this$0"    # Ledu/ucla/cs/zyuan/apps/smaliplayground/MainService;

    .prologue
    .line 60
    iput-object p1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainService$1;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainService;

    invoke-direct {p0}, Lnet/mobileinsight/milab/ITask$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public basicTypes(IJZFDLjava/lang/String;)V
    .locals 0
    .param p1, "anInt"    # I
    .param p2, "aLong"    # J
    .param p4, "aBoolean"    # Z
    .param p5, "aFloat"    # F
    .param p6, "aDouble"    # D
    .param p8, "aString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 87
    return-void
.end method

.method public exit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 78
    const-string/jumbo v0, "WebLatencyExp"

    const-string/jumbo v1, "exit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainService$1;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainService;

    invoke-virtual {v0}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainService;->stopSelf()V

    .line 80
    return-void
.end method

.method public getOutput()Lnet/mobileinsight/milab/TaskObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lnet/mobileinsight/milab/TaskObject;

    invoke-direct {v0}, Lnet/mobileinsight/milab/TaskObject;-><init>()V

    .line 69
    .local v0, "toSend":Lnet/mobileinsight/milab/TaskObject;
    const-string/jumbo v1, "WebLatencyExp"

    invoke-virtual {v0, v1}, Lnet/mobileinsight/milab/TaskObject;->setTaskName(Ljava/lang/String;)V

    .line 70
    const-string/jumbo v1, "Collect LTE latency in accessing a webpage"

    invoke-virtual {v0, v1}, Lnet/mobileinsight/milab/TaskObject;->setTaskDescription(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainService$1;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainService;

    invoke-static {v1}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainService;->access$000(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/mobileinsight/milab/TaskObject;->setPathOutputFolder(Ljava/lang/String;)V

    .line 72
    const-string/jumbo v1, "NetLoggerLatency"

    invoke-virtual {v0, v1}, Lnet/mobileinsight/milab/TaskObject;->setPluginNameMI(Ljava/lang/String;)V

    .line 73
    return-object v0
.end method

.method public getPid()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    return v0
.end method
