.class Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$2;
.super Landroid/webkit/WebViewClient;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    .prologue
    .line 161
    iput-object p1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$2;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    iput-object p2, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "error"    # Landroid/webkit/WebResourceError;

    .prologue
    .line 164
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 165
    return-void
.end method
