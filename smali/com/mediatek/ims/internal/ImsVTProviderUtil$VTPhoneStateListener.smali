.class public Lcom/mediatek/ims/internal/ImsVTProviderUtil$VTPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "ImsVTProviderUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/ImsVTProviderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VTPhoneStateListener"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOwner:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

.field final synthetic this$0:Lcom/mediatek/ims/internal/ImsVTProviderUtil;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 320
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$VTPhoneStateListener;->this$0:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 321
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 322
    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 335
    const-string v0, "ImsVT Util"

    if-nez p1, :cond_0

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onServiceStateChanged] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$VTPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": serviceState is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return-void

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$VTPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 342
    .local v1, "phondId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 343
    const-string v2, "[onServiceStateChanged] : phondId is invalid"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-void

    .line 347
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    .line 348
    .local v0, "isDataRoaming":Z
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v2

    .line 353
    .local v2, "isVoiceRoaming":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    .line 356
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 329
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$VTPhoneStateListener;->mContext:Landroid/content/Context;

    .line 330
    return-void
.end method

.method public setOwner(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)V
    .locals 0
    .param p1, "owner"    # Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 325
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$VTPhoneStateListener;->mOwner:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 326
    return-void
.end method
