.class Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;


# direct methods
.method constructor <init>(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    .prologue
    .line 247
    iput-object p1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$5;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 252
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$5;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    invoke-static {v0}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->access$100(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 253
    const-string/jumbo v0, "WebLatency"

    const-string/jumbo v1, "Reloaded web view"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$5;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->access$202(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$5;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    const-string/jumbo v1, "JSON.stringify(window.performance.timing)"

    iget-object v2, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$5;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    invoke-static {v2}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->access$100(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->access$300(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;Ljava/lang/String;Landroid/webkit/WebView;)V

    .line 256
    return-void
.end method
