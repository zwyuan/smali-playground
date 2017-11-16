.class Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    .prologue
    .line 119
    iput-object p1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$1;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 124
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$1;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    invoke-static {v0}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->access$100(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$1;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    invoke-static {v1}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->access$000(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$1;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->access$202(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$1;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    const-string/jumbo v1, "JSON.stringify(window.performance.timing)"

    iget-object v2, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$1;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    invoke-static {v2}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->access$100(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->access$300(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;Ljava/lang/String;Landroid/webkit/WebView;)V

    .line 128
    const-string/jumbo v0, "Page successfully refreshed"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    const-string/jumbo v1, "Action"

    const/4 v2, 0x0

    .line 129
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 130
    return-void
.end method
