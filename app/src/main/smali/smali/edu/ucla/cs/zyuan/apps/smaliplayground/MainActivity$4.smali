.class Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 188
    iput-object p1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$4;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 190
    if-eqz p2, :cond_2

    .line 192
    const-string/jumbo v0, "WebLatency"

    const-string/jumbo v1, "Toggle button is checked, automatically fetch webpage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$4;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    invoke-static {v0}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->access$500(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$4;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    invoke-static {v0}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->access$500(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 197
    :cond_0
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$4;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->access$602(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;Z)Z

    .line 199
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$4;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->access$502(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;Ljava/util/Timer;)Ljava/util/Timer;

    .line 200
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$4;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    invoke-static {v0}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->access$500(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$4$1;

    invoke-direct {v1, p0}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$4$1;-><init>(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$4;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x4e20

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 216
    :cond_1
    :goto_0
    return-void

    .line 209
    :cond_2
    const-string/jumbo v0, "WebLatency"

    const-string/jumbo v1, "Toggle button is not checked, disable automatic refreshing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$4;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->access$602(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;Z)Z

    .line 212
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$4;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    invoke-static {v0}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->access$500(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$4;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    invoke-static {v0}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->access$500(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0
.end method
