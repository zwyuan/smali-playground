.class final Lnet/mobileinsight/milab/TaskObject$1;
.super Ljava/lang/Object;
.source "TaskObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/mobileinsight/milab/TaskObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lnet/mobileinsight/milab/TaskObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lnet/mobileinsight/milab/TaskObject$1;->createFromParcel(Landroid/os/Parcel;)Lnet/mobileinsight/milab/TaskObject;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lnet/mobileinsight/milab/TaskObject;
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 36
    new-instance v0, Lnet/mobileinsight/milab/TaskObject;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lnet/mobileinsight/milab/TaskObject;-><init>(Landroid/os/Parcel;Lnet/mobileinsight/milab/TaskObject$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lnet/mobileinsight/milab/TaskObject$1;->newArray(I)[Lnet/mobileinsight/milab/TaskObject;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lnet/mobileinsight/milab/TaskObject;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 41
    new-array v0, p1, [Lnet/mobileinsight/milab/TaskObject;

    return-object v0
.end method