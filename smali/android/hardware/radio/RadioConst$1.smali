.class Landroid/hardware/radio/RadioConst$1;
.super Ljava/lang/Object;
.source "RadioConst.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/radio/RadioConst;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/RadioConst;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 12
    new-instance v0, Landroid/hardware/radio/RadioConst;

    invoke-direct {v0}, Landroid/hardware/radio/RadioConst;-><init>()V

    .line 13
    .local v0, "_aidl_out":Landroid/hardware/radio/RadioConst;
    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioConst;->readFromParcel(Landroid/os/Parcel;)V

    .line 14
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Landroid/hardware/radio/RadioConst$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/RadioConst;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/radio/RadioConst;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 18
    new-array v0, p1, [Landroid/hardware/radio/RadioConst;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Landroid/hardware/radio/RadioConst$1;->newArray(I)[Landroid/hardware/radio/RadioConst;

    move-result-object p1

    return-object p1
.end method
