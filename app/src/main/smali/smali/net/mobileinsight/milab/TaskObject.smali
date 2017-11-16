.class public Lnet/mobileinsight/milab/TaskObject;
.super Ljava/lang/Object;
.source "TaskObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lnet/mobileinsight/milab/TaskObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private TaskDescription:Ljava/lang/String;

.field private TaskName:Ljava/lang/String;

.field private pathOutputFolder:Ljava/lang/String;

.field private pluginNameMI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lnet/mobileinsight/milab/TaskObject$1;

    invoke-direct {v0}, Lnet/mobileinsight/milab/TaskObject$1;-><init>()V

    sput-object v0, Lnet/mobileinsight/milab/TaskObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p0, p1}, Lnet/mobileinsight/milab/TaskObject;->readFromParcel(Landroid/os/Parcel;)V

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lnet/mobileinsight/milab/TaskObject$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lnet/mobileinsight/milab/TaskObject$1;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lnet/mobileinsight/milab/TaskObject;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getPathOutputFolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lnet/mobileinsight/milab/TaskObject;->pathOutputFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginNameMI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lnet/mobileinsight/milab/TaskObject;->pluginNameMI:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lnet/mobileinsight/milab/TaskObject;->TaskDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lnet/mobileinsight/milab/TaskObject;->TaskName:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/mobileinsight/milab/TaskObject;->TaskName:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/mobileinsight/milab/TaskObject;->TaskDescription:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/mobileinsight/milab/TaskObject;->pathOutputFolder:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/mobileinsight/milab/TaskObject;->pluginNameMI:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setPathOutputFolder(Ljava/lang/String;)V
    .locals 0
    .param p1, "pathOutputFolder"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lnet/mobileinsight/milab/TaskObject;->pathOutputFolder:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setPluginNameMI(Ljava/lang/String;)V
    .locals 0
    .param p1, "pluginNameMI"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lnet/mobileinsight/milab/TaskObject;->pluginNameMI:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setTaskDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "taskDescription"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lnet/mobileinsight/milab/TaskObject;->TaskDescription:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setTaskName(Ljava/lang/String;)V
    .locals 0
    .param p1, "taskName"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lnet/mobileinsight/milab/TaskObject;->TaskName:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lnet/mobileinsight/milab/TaskObject;->TaskName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lnet/mobileinsight/milab/TaskObject;->TaskDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lnet/mobileinsight/milab/TaskObject;->pathOutputFolder:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lnet/mobileinsight/milab/TaskObject;->pluginNameMI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    return-void
.end method
