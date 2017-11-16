.class Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->getDataFromJs(Ljava/lang/String;Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;


# direct methods
.method constructor <init>(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    .prologue
    .line 327
    iput-object p1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$6;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 327
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$6;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 330
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$6;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    const-string/jumbo v1, "^\"|\"$"

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->access$202(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 331
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$6;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$6;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    invoke-static {v1}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->access$200(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\\\\"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->access$202(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 332
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$6;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$6;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    invoke-static {v1}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->access$200(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->access$700(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$6;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$6;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    invoke-static {v1}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->access$800(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->hasExternalStorageFile(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    const-string/jumbo v0, "WebLatency"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Creating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$6;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    invoke-static {v2}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->access$800(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$6;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$6;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    invoke-static {v1}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->access$900(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->createExternalStorageFile(Ljava/lang/String;)V

    .line 339
    :cond_0
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$6;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$6;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    invoke-static {v1}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->access$800(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$6;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    invoke-static {v2}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->access$200(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->writeExternalStorageFile(Ljava/io/File;Ljava/lang/String;)V

    .line 340
    return-void
.end method
