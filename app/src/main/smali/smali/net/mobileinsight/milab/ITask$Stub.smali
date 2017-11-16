.class public abstract Lnet/mobileinsight/milab/ITask$Stub;
.super Landroid/os/Binder;
.source "ITask.java"

# interfaces
.implements Lnet/mobileinsight/milab/ITask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/mobileinsight/milab/ITask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/mobileinsight/milab/ITask$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "net.mobileinsight.milab.ITask"

.field static final TRANSACTION_basicTypes:I = 0x4

.field static final TRANSACTION_exit:I = 0x3

.field static final TRANSACTION_getOutput:I = 0x2

.field static final TRANSACTION_getPid:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string/jumbo v0, "net.mobileinsight.milab.ITask"

    invoke-virtual {p0, p0, v0}, Lnet/mobileinsight/milab/ITask$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnet/mobileinsight/milab/ITask;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string/jumbo v1, "net.mobileinsight.milab.ITask"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lnet/mobileinsight/milab/ITask;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lnet/mobileinsight/milab/ITask;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lnet/mobileinsight/milab/ITask$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lnet/mobileinsight/milab/ITask$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    :goto_0
    return v10

    .line 44
    :sswitch_0
    const-string/jumbo v0, "net.mobileinsight.milab.ITask"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :sswitch_1
    const-string/jumbo v0, "net.mobileinsight.milab.ITask"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lnet/mobileinsight/milab/ITask$Stub;->getPid()I

    move-result v9

    .line 51
    .local v9, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 57
    .end local v9    # "_result":I
    :sswitch_2
    const-string/jumbo v0, "net.mobileinsight.milab.ITask"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lnet/mobileinsight/milab/ITask$Stub;->getOutput()Lnet/mobileinsight/milab/TaskObject;

    move-result-object v9

    .line 59
    .local v9, "_result":Lnet/mobileinsight/milab/TaskObject;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v9, :cond_0

    .line 61
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    invoke-virtual {v9, p3, v10}, Lnet/mobileinsight/milab/TaskObject;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 71
    .end local v9    # "_result":Lnet/mobileinsight/milab/TaskObject;
    :sswitch_3
    const-string/jumbo v0, "net.mobileinsight.milab.ITask"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lnet/mobileinsight/milab/ITask$Stub;->exit()V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 78
    :sswitch_4
    const-string/jumbo v0, "net.mobileinsight.milab.ITask"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 82
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 84
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v4, v10

    .line 86
    .local v4, "_arg2":Z
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 88
    .local v5, "_arg3":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    .line 90
    .local v6, "_arg4":D
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg5":Ljava/lang/String;
    move-object v0, p0

    .line 91
    invoke-virtual/range {v0 .. v8}, Lnet/mobileinsight/milab/ITask$Stub;->basicTypes(IJZFDLjava/lang/String;)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 40
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
