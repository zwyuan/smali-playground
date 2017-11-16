.class public Ledu/ucla/cs/zyuan/apps/smaliplayground/Logging;
.super Ljava/lang/Object;
.source "Logging.java"


# instance fields
.field private final mLogTag:Ljava/lang/String;

.field private num:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string/jumbo v0, ""

    iput-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/Logging;->mLogTag:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/Logging;->num:I

    return-void
.end method


# virtual methods
.method public TestLogging()V
    .locals 3

    .prologue
    .line 15
    const-string/jumbo v0, ""

    const-string/jumbo v1, "GoogleAuthUtil"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    const-string/jumbo v0, "TempTag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "%d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/Logging;->num:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-void
.end method
