.class Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$4$1;
.super Ljava/util/TimerTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$4;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$4;


# direct methods
.method constructor <init>(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$4;

    .prologue
    .line 200
    iput-object p1, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$4$1;->this$1:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$4;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$4$1;->this$1:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$4;

    iget-object v0, v0, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity$4;->this$0:Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;

    invoke-static {v0}, Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;->access$400(Ledu/ucla/cs/zyuan/apps/smaliplayground/MainActivity;)V

    .line 204
    return-void
.end method
