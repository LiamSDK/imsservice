.class Landroid/hardware/radio/voice/CdmaT53ClirInfoRecord$1;
.super Ljava/lang/Object;
.source "CdmaT53ClirInfoRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/voice/CdmaT53ClirInfoRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/radio/voice/CdmaT53ClirInfoRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/voice/CdmaT53ClirInfoRecord;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 13
    new-instance v0, Landroid/hardware/radio/voice/CdmaT53ClirInfoRecord;

    invoke-direct {v0}, Landroid/hardware/radio/voice/CdmaT53ClirInfoRecord;-><init>()V

    .line 14
    .local v0, "_aidl_out":Landroid/hardware/radio/voice/CdmaT53ClirInfoRecord;
    invoke-virtual {v0, p1}, Landroid/hardware/radio/voice/CdmaT53ClirInfoRecord;->readFromParcel(Landroid/os/Parcel;)V

    .line 15
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/CdmaT53ClirInfoRecord$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/voice/CdmaT53ClirInfoRecord;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/radio/voice/CdmaT53ClirInfoRecord;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 19
    new-array v0, p1, [Landroid/hardware/radio/voice/CdmaT53ClirInfoRecord;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/CdmaT53ClirInfoRecord$1;->newArray(I)[Landroid/hardware/radio/voice/CdmaT53ClirInfoRecord;

    move-result-object p1

    return-object p1
.end method
