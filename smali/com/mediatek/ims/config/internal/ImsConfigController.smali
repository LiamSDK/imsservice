.class public Lcom/mediatek/ims/config/internal/ImsConfigController;
.super Ljava/lang/Object;
.source "ImsConfigController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;,
        Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;,
        Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;,
        Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    }
.end annotation


# static fields
.field private static final ACTION_CXP_NOTIFY_FEATURE:Ljava/lang/String; = "com.mediatek.common.carrierexpress.cxp_notify_feature"

.field static final CONFIG_CMD_ERROR:I = 0x2

.field static final CONFIG_CMD_SUCCESS:I = 0x1

.field static final CONFIG_INTERRUPT_ERROR:I = 0x4

.field static final CONFIG_TIMEOUT_ERROR:I = 0x3

.field private static final DEBUG:Z

.field static final EVENT_IMS_CFG_CONFIG_CHANGED:I = 0x3eb

.field static final EVENT_IMS_CFG_CONFIG_LOADED:I = 0x3ec

.field static final EVENT_IMS_CFG_DYNAMIC_IMS_SWITCH_COMPLETE:I = 0x3e9

.field static final EVENT_IMS_CFG_FEATURE_CHANGED:I = 0x3ea

.field static final MSG_IMS_GET_FEATURE_DONE:I = 0x67

.field static final MSG_IMS_GET_PROVISION_DONE:I = 0x65

.field static final MSG_IMS_GET_RESOURCE_DONE:I = 0x6a

.field static final MSG_IMS_SET_FEATURE_DONE:I = 0x68

.field static final MSG_IMS_SET_MDCFG_DONE:I = 0x6b

.field static final MSG_IMS_SET_PROVISION_DONE:I = 0x66

.field static final MSG_RESET_WFC_MODE_FLAG:I = 0x6c

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final TAG:Ljava/lang/String; = "ImsConfigController"

.field static final TIMER_IMS_CFG_TIMEOUT:I = 0x7d0

.field static final TIMER_IMS_RES_TIMEOUT:I = 0x1f4


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurWfcMode:I

.field private mEventHandler:Landroid/os/Handler;

.field private mFeatureValueLock:Ljava/lang/Object;

.field private mHandler:Landroid/os/Handler;

.field private mImsCapabilities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mImsCapabilitiesIsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

.field private mLogTag:Ljava/lang/String;

.field private mMdCfgLock:Ljava/lang/Object;

.field private mPhoneId:I

.field private mProvisionedValueLock:Ljava/lang/Object;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResourceValueLock:Ljava/lang/Object;

.field private mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

.field private mWfcLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 39
    const-string v0, "persist.vendor.log.tel_dbg"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    sput-boolean v1, Lcom/mediatek/ims/config/internal/ImsConfigController;->DEBUG:Z

    .line 38
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mPhoneId:I

    .line 50
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mContext:Landroid/content/Context;

    .line 58
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mFeatureValueLock:Ljava/lang/Object;

    .line 59
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mProvisionedValueLock:Ljava/lang/Object;

    .line 60
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mResourceValueLock:Ljava/lang/Object;

    .line 61
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mWfcLock:Ljava/lang/Object;

    .line 62
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mMdCfgLock:Ljava/lang/Object;

    .line 64
    iput v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mCurWfcMode:I

    .line 66
    iput-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mImsCapabilitiesIsCache:Ljava/util/HashMap;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mImsCapabilities:Ljava/util/HashMap;

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/mediatek/ims/ril/ImsCommandsInterface;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "imsRilAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mPhoneId:I

    .line 50
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mContext:Landroid/content/Context;

    .line 58
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mFeatureValueLock:Ljava/lang/Object;

    .line 59
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mProvisionedValueLock:Ljava/lang/Object;

    .line 60
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mResourceValueLock:Ljava/lang/Object;

    .line 61
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mWfcLock:Ljava/lang/Object;

    .line 62
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mMdCfgLock:Ljava/lang/Object;

    .line 64
    iput v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mCurWfcMode:I

    .line 66
    iput-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mImsCapabilitiesIsCache:Ljava/util/HashMap;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mImsCapabilities:Ljava/util/HashMap;

    .line 126
    iput-object p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mContext:Landroid/content/Context;

    .line 127
    iput p2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mPhoneId:I

    .line 128
    iput-object p3, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsConfigController["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mLogTag:Ljava/lang/String;

    .line 133
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsConfigThread-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "configThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 136
    new-instance v2, Landroid/os/HandlerThread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImsEventThread-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 137
    .local v2, "eventThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 139
    new-instance v3, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;

    iget v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mPhoneId:I

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;-><init>(Lcom/mediatek/ims/config/internal/ImsConfigController;ILandroid/os/Looper;)V

    iput-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mHandler:Landroid/os/Handler;

    .line 140
    new-instance v3, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;

    iget v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mPhoneId:I

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;-><init>(Lcom/mediatek/ims/config/internal/ImsConfigController;ILandroid/os/Looper;)V

    iput-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mEventHandler:Landroid/os/Handler;

    .line 143
    new-instance v3, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;

    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mEventHandler:Landroid/os/Handler;

    iget v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mPhoneId:I

    iget-object v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-direct {v3, v4, v5, v6}, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;-><init>(Landroid/os/Handler;ILcom/mediatek/ims/ril/ImsCommandsInterface;)V

    iput-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 145
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 146
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v4, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v4, "com.mediatek.common.carrierexpress.cxp_notify_feature"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v4, "com.mediatek.ims.MTK_MMTEL_READY"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->isDssNoResetSupport()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 152
    const-string v4, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    :cond_0
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3e9

    invoke-interface {v4, v5, v6, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForImsCfgDynamicImsSwitchComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 158
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3eb

    invoke-interface {v4, v5, v6, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForImsCfgConfigChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 160
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3ea

    invoke-interface {v4, v5, v6, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForImsCfgFeatureChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 162
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3ec

    invoke-interface {v4, v5, v6, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForImsCfgConfigLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 165
    invoke-direct {p0}, Lcom/mediatek/ims/config/internal/ImsConfigController;->initImsCapabilities()V

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigController;

    .line 35
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mLogTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 35
    sget-boolean v0, Lcom/mediatek/ims/config/internal/ImsConfigController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/config/internal/ImsConfigController;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigController;

    .line 35
    invoke-direct {p0}, Lcom/mediatek/ims/config/internal/ImsConfigController;->resetWfcModeFlag()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/ims/config/internal/ImsConfigController;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigController;

    .line 35
    invoke-direct {p0}, Lcom/mediatek/ims/config/internal/ImsConfigController;->initImsCapabilities()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/ims/config/internal/ImsConfigController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigController;

    .line 35
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initImsCapabilities()V
    .locals 3

    .line 710
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mImsCapabilitiesIsCache:Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 711
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 710
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 711
    nop

    .line 710
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mImsCapabilitiesIsCache:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 713
    nop

    .line 712
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mImsCapabilitiesIsCache:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 715
    nop

    .line 714
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mImsCapabilitiesIsCache:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 717
    nop

    .line 716
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mImsCapabilitiesIsCache:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 719
    nop

    .line 718
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mImsCapabilitiesIsCache:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 721
    nop

    .line 720
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mImsCapabilitiesIsCache:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 723
    nop

    .line 722
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mImsCapabilitiesIsCache:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 725
    nop

    .line 724
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    return-void
.end method

.method private static isConfigSuccess(I)Z
    .locals 1
    .param p0, "reason"    # I

    .line 604
    const/4 v0, 0x0

    .line 605
    .local v0, "isSuccess":Z
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 607
    :pswitch_0
    const/4 v0, 0x1

    .line 608
    nop

    .line 613
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private messageToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # I

    .line 169
    sparse-switch p1, :sswitch_data_0

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 191
    :sswitch_0
    const-string v0, "EVENT_IMS_CFG_CONFIG_LOADED"

    return-object v0

    .line 189
    :sswitch_1
    const-string v0, "EVENT_IMS_CFG_CONFIG_CHANGED"

    return-object v0

    .line 187
    :sswitch_2
    const-string v0, "EVENT_IMS_CFG_FEATURE_CHANGED"

    return-object v0

    .line 185
    :sswitch_3
    const-string v0, "EVENT_IMS_CFG_DYNAMIC_IMS_SWITCH_COMPLETE"

    return-object v0

    .line 183
    :sswitch_4
    const-string v0, "MSG_RESET_WFC_MODE_FLAG"

    return-object v0

    .line 181
    :sswitch_5
    const-string v0, "MSG_IMS_SET_MDCFG_DONE"

    return-object v0

    .line 179
    :sswitch_6
    const-string v0, "MSG_IMS_GET_RESOURCE_DONE"

    return-object v0

    .line 177
    :sswitch_7
    const-string v0, "MSG_IMS_SET_FEATURE_DONE"

    return-object v0

    .line 175
    :sswitch_8
    const-string v0, "MSG_IMS_GET_FEATURE_DONE"

    return-object v0

    .line 173
    :sswitch_9
    const-string v0, "MSG_IMS_SET_PROVISION_DONE"

    return-object v0

    .line 171
    :sswitch_a
    const-string v0, "MSG_IMS_GET_PROVISION_DONE"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_a
        0x66 -> :sswitch_9
        0x67 -> :sswitch_8
        0x68 -> :sswitch_7
        0x6a -> :sswitch_6
        0x6b -> :sswitch_5
        0x6c -> :sswitch_4
        0x3e9 -> :sswitch_3
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_1
        0x3ec -> :sswitch_0
    .end sparse-switch
.end method

.method private resetWfcModeFlag()V
    .locals 2

    .line 673
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mLogTag:Ljava/lang/String;

    const-string v1, "resetWfcModeFlag()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mWfcLock:Ljava/lang/Object;

    monitor-enter v0

    .line 675
    const/4 v1, -0x1

    :try_start_0
    iput v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mCurWfcMode:I

    .line 676
    monitor-exit v0

    .line 677
    return-void

    .line 676
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setVodataEnable(II)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "value"    # I

    .line 480
    const-string v0, "vodata"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IVoDataService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IVoDataService;

    move-result-object v0

    .line 482
    .local v0, "iVoDataService":Lcom/mediatek/ims/internal/IVoDataService;
    if-eqz v0, :cond_1

    .line 483
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVodataEnable : value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mPhoneId:I

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v1, v2}, Lcom/mediatek/ims/internal/IVoDataService;->setEnabled(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 486
    :catch_0
    move-exception v1

    .line 487
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mLogTag:Ljava/lang/String;

    const-string v3, "setVodataEnable error!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 488
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    nop

    .line 489
    :goto_2
    return-void
.end method


# virtual methods
.method public getFeatureValue(II)I
    .locals 7
    .param p1, "featureId"    # I
    .param p2, "network"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mFeatureValueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 418
    :try_start_0
    new-instance v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;-><init>(Lcom/mediatek/ims/config/internal/ImsConfigController;Lcom/mediatek/ims/config/internal/ImsConfigController$1;)V

    .line 419
    .local v1, "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x67

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 421
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 422
    :try_start_1
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v4, p1, p2, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->getImsCfgFeatureValue(IILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    :try_start_2
    iget-object v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 428
    goto :goto_0

    .line 425
    :catch_0
    move-exception v4

    .line 426
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 427
    const/4 v5, 0x4

    iput v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    .line 429
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 431
    :try_start_4
    iget v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    invoke-static {v3}, Lcom/mediatek/ims/config/internal/ImsConfigController;->isConfigSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 435
    iget v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureValue:I

    monitor-exit v0

    return v3

    .line 432
    :cond_0
    new-instance v3, Lcom/android/ims/ImsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Something wrong, reason:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x65

    invoke-direct {v3, v4, v5}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigController;
    .end local p1    # "featureId":I
    .end local p2    # "network":I
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 429
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigController;
    .restart local p1    # "featureId":I
    .restart local p2    # "network":I
    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigController;
    .end local p1    # "featureId":I
    .end local p2    # "network":I
    :try_start_6
    throw v4

    .line 436
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    .end local v2    # "msg":Landroid/os/Message;
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigController;
    .restart local p1    # "featureId":I
    .restart local p2    # "network":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public declared-synchronized getImsResCapability(I)I
    .locals 7
    .param p1, "featureId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    monitor-enter p0

    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mResourceValueLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 571
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mImsCapabilitiesIsCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 572
    sget-boolean v1, Lcom/mediatek/ims/config/internal/ImsConfigController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 573
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImsResCapability from cache, phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mImsCapabilities:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return v1

    .line 577
    :cond_1
    :try_start_2
    new-instance v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;-><init>(Lcom/mediatek/ims/config/internal/ImsConfigController;Lcom/mediatek/ims/config/internal/ImsConfigController$1;)V

    .line 578
    .local v1, "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6a

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 580
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 581
    :try_start_3
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v4, p1, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->getImsCfgResourceCapValue(ILandroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 583
    :try_start_4
    iget-object v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 587
    goto :goto_0

    .line 584
    :catch_0
    move-exception v4

    .line 585
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 586
    const/4 v5, 0x4

    iput v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    .line 588
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 590
    :try_start_6
    iget v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    invoke-static {v3}, Lcom/mediatek/ims/config/internal/ImsConfigController;->isConfigSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 594
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mImsCapabilities:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureValue:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mImsCapabilitiesIsCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    iget v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureValue:I

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return v3

    .line 591
    :cond_2
    :try_start_7
    new-instance v3, Lcom/android/ims/ImsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Something wrong, reason:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x65

    invoke-direct {v3, v4, v5}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigController;
    .end local p1    # "featureId":I
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 588
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigController;
    .restart local p1    # "featureId":I
    :catchall_0
    move-exception v4

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigController;
    .end local p1    # "featureId":I
    :try_start_9
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 600
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    .end local v2    # "msg":Landroid/os/Message;
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigController;
    .restart local p1    # "featureId":I
    :catchall_1
    move-exception v1

    :goto_1
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigController;
    :catchall_2
    move-exception v1

    goto :goto_1

    .line 569
    .end local p1    # "featureId":I
    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getProvisionedValue(I)Ljava/lang/String;
    .locals 8
    .param p1, "configId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mProvisionedValueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 503
    :try_start_0
    new-instance v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;-><init>(Lcom/mediatek/ims/config/internal/ImsConfigController;Lcom/mediatek/ims/config/internal/ImsConfigController$1;)V

    .line 505
    .local v1, "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 506
    .local v2, "msg":Landroid/os/Message;
    iget-object v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->lockObj:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 507
    :try_start_1
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v5, p1, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->getImsCfgProvisionValue(ILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
    :try_start_2
    iget-object v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->lockObj:Ljava/lang/Object;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 513
    goto :goto_0

    .line 510
    :catch_0
    move-exception v5

    .line 511
    .local v5, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 512
    const/4 v6, 0x4

    iput v6, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionResult:I

    .line 514
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 515
    :try_start_4
    iget v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionResult:I

    invoke-static {v4}, Lcom/mediatek/ims/config/internal/ImsConfigController;->isConfigSuccess(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 519
    iget-object v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionInfo:Ljava/lang/String;

    monitor-exit v0

    return-object v3

    .line 516
    :cond_0
    new-instance v4, Lcom/android/ims/ImsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Something wrong, reason:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionResult:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigController;
    .end local p1    # "configId":I
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 514
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigController;
    .restart local p1    # "configId":I
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigController;
    .end local p1    # "configId":I
    :try_start_6
    throw v3

    .line 520
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    .end local v2    # "msg":Landroid/os/Message;
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigController;
    .restart local p1    # "configId":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public sendWfcProfileInfo(I)V
    .locals 4
    .param p1, "rilWfcMode"    # I

    .line 683
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mWfcLock:Ljava/lang/Object;

    monitor-enter v0

    .line 684
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendWfcProfileInfo rilWfcMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCurWfcMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mCurWfcMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mCurWfcMode:I

    if-eq p1, v1, :cond_5

    .line 687
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->sendWfcProfileInfo(ILandroid/os/Message;)V

    .line 689
    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne p1, v1, :cond_3

    .line 690
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mPhoneId:I

    invoke-static {v1, v3}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->isWfcEnabledByUser(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 691
    sget-boolean v1, Lcom/mediatek/ims/config/internal/ImsConfigController;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mLogTag:Ljava/lang/String;

    const-string v2, "Wifi-only and WFC setting enabled, send intent to turn radio OFF"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mPhoneId:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->sendWifiOnlyModeIntent(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 695
    :cond_1
    sget-boolean v1, Lcom/mediatek/ims/config/internal/ImsConfigController;->DEBUG:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mLogTag:Ljava/lang/String;

    const-string v3, "Wifi-only and WFC setting disabled, send intent to turn radio ON"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mPhoneId:I

    invoke-static {v1, v3, v2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->sendWifiOnlyModeIntent(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 700
    :cond_3
    sget-boolean v1, Lcom/mediatek/ims/config/internal/ImsConfigController;->DEBUG:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mLogTag:Ljava/lang/String;

    const-string v3, "Not wifi-only mode, turn radio ON"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_4
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mPhoneId:I

    invoke-static {v1, v3, v2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->sendWifiOnlyModeIntent(Landroid/content/Context;IZ)V

    .line 704
    :goto_0
    iput p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mCurWfcMode:I

    .line 706
    :cond_5
    monitor-exit v0

    .line 707
    return-void

    .line 706
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFeatureValue(IIII)V
    .locals 10
    .param p1, "featureId"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "isLast"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 452
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 453
    invoke-interface {v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->getMtkHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    sget-object v1, Lcom/mediatek/ims/ril/ImsCommandsInterface;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    iget v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mPhoneId:I

    invoke-direct {p0, v0, p3}, Lcom/mediatek/ims/config/internal/ImsConfigController;->setVodataEnable(II)V

    .line 455
    return-void

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mFeatureValueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 459
    :try_start_0
    new-instance v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;-><init>(Lcom/mediatek/ims/config/internal/ImsConfigController;Lcom/mediatek/ims/config/internal/ImsConfigController$1;)V

    .line 460
    .local v1, "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 461
    .local v9, "msg":Landroid/os/Message;
    iget-object v2, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 462
    :try_start_1
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-interface/range {v4 .. v9}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setImsCfgFeatureValue(IIIILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 464
    :try_start_2
    iget-object v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 468
    goto :goto_0

    .line 465
    :catch_0
    move-exception v3

    .line 466
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 467
    const/4 v4, 0x4

    iput v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    .line 470
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    invoke-static {v3}, Lcom/mediatek/ims/config/internal/ImsConfigController;->isConfigSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 474
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 475
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    .end local v9    # "msg":Landroid/os/Message;
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 476
    return-void

    .line 471
    .restart local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    .restart local v9    # "msg":Landroid/os/Message;
    :cond_1
    :try_start_5
    new-instance v3, Lcom/android/ims/ImsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Something wrong, reason:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x65

    invoke-direct {v3, v4, v5}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    .end local v9    # "msg":Landroid/os/Message;
    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigController;
    .end local p1    # "featureId":I
    .end local p2    # "network":I
    .end local p3    # "value":I
    .end local p4    # "isLast":I
    throw v3

    .line 474
    .restart local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    .restart local v9    # "msg":Landroid/os/Message;
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigController;
    .restart local p1    # "featureId":I
    .restart local p2    # "network":I
    .restart local p3    # "value":I
    .restart local p4    # "isLast":I
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigController;
    .end local p1    # "featureId":I
    .end local p2    # "network":I
    .end local p3    # "value":I
    .end local p4    # "isLast":I
    :try_start_6
    throw v3

    .line 475
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    .end local v9    # "msg":Landroid/os/Message;
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigController;
    .restart local p1    # "featureId":I
    .restart local p2    # "network":I
    .restart local p3    # "value":I
    .restart local p4    # "isLast":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public setModemImsCfg([Ljava/lang/String;[Ljava/lang/String;I)[I
    .locals 10
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;
    .param p3, "type"    # I

    .line 627
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mMdCfgLock:Ljava/lang/Object;

    monitor-enter v0

    .line 628
    const/4 v1, 0x0

    .line 629
    .local v1, "keysStr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 630
    .local v2, "valuesStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 633
    .local v3, "resultArray":[I
    const/4 v4, 0x0

    if-nez p1, :cond_0

    .line 634
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mLogTag:Ljava/lang/String;

    const-string v6, "keys is null, return null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    monitor-exit v0

    return-object v4

    .line 638
    :cond_0
    array-length v5, p1

    const/4 v6, 0x1

    if-lt v5, v6, :cond_3

    array-length v5, p2

    if-ge v5, v6, :cond_1

    goto/16 :goto_1

    .line 643
    :cond_1
    array-length v5, p1

    array-length v6, p2

    if-ne v5, v6, :cond_2

    .line 644
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mLogTag:Ljava/lang/String;

    const-string v6, "keys and values length equals"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-static {p1}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->arrayToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 646
    invoke-static {p2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->arrayToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 647
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keysStr:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", valuesStr:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    new-instance v5, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;

    invoke-direct {v5, p0, v4}, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;-><init>(Lcom/mediatek/ims/config/internal/ImsConfigController;Lcom/mediatek/ims/config/internal/ImsConfigController$1;)V

    move-object v4, v5

    .line 650
    .local v4, "cfgResult":Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;
    array-length v5, p1

    iput v5, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->requestConfigNum:I

    .line 652
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x6b

    invoke-virtual {v5, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 653
    .local v5, "msg":Landroid/os/Message;
    iget-object v6, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->lockObj:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 655
    :try_start_1
    iget-object v7, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v7, v1, v2, p3, v5}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setModemImsCfg(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 657
    :try_start_2
    iget-object v7, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->lockObj:Ljava/lang/Object;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v7, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 661
    goto :goto_0

    .line 658
    :catch_0
    move-exception v7

    .line 659
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 660
    const/4 v8, 0x4

    iput v8, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->configResult:I

    .line 662
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 663
    :try_start_4
    iget-object v6, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->resultArray:[I

    move-object v3, v6

    .line 664
    .end local v4    # "cfgResult":Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;
    .end local v5    # "msg":Landroid/os/Message;
    nop

    .line 668
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object v3

    .line 662
    .restart local v4    # "cfgResult":Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;
    .restart local v5    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v7

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigController;
    .end local p1    # "keys":[Ljava/lang/String;
    .end local p2    # "values":[Ljava/lang/String;
    .end local p3    # "type":I
    :try_start_6
    throw v7

    .line 665
    .end local v4    # "cfgResult":Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;
    .end local v5    # "msg":Landroid/os/Message;
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigController;
    .restart local p1    # "keys":[Ljava/lang/String;
    .restart local p2    # "values":[Ljava/lang/String;
    .restart local p3    # "type":I
    :cond_2
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mLogTag:Ljava/lang/String;

    const-string v6, "keys and values length not equals"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    monitor-exit v0

    return-object v4

    .line 639
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mLogTag:Ljava/lang/String;

    const-string v6, "keys or values length is smaller than 1, return null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    monitor-exit v0

    return-object v4

    .line 669
    .end local v1    # "keysStr":Ljava/lang/String;
    .end local v2    # "valuesStr":Ljava/lang/String;
    .end local v3    # "resultArray":[I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public setProvisionedStringValue(ILjava/lang/String;)V
    .locals 0
    .param p1, "configId"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 566
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigController;->setProvisionedValue(ILjava/lang/String;)V

    .line 567
    return-void
.end method

.method public setProvisionedValue(ILjava/lang/String;)V
    .locals 7
    .param p1, "configId"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 535
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mProvisionedValueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 536
    :try_start_0
    new-instance v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;-><init>(Lcom/mediatek/ims/config/internal/ImsConfigController;Lcom/mediatek/ims/config/internal/ImsConfigController$1;)V

    .line 537
    .local v1, "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 538
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->lockObj:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 539
    :try_start_1
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v4, p1, p2, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setImsCfgProvisionValue(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    :try_start_2
    iget-object v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->lockObj:Ljava/lang/Object;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 545
    goto :goto_0

    .line 542
    :catch_0
    move-exception v4

    .line 543
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 544
    const/4 v5, 0x4

    iput v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionResult:I

    .line 546
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 547
    :try_start_4
    iget v3, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionResult:I

    invoke-static {v3}, Lcom/mediatek/ims/config/internal/ImsConfigController;->isConfigSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 551
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    .end local v2    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 552
    return-void

    .line 548
    .restart local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    .restart local v2    # "msg":Landroid/os/Message;
    :cond_0
    new-instance v3, Lcom/android/ims/ImsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Something wrong, reason:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionResult:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x65

    invoke-direct {v3, v4, v5}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigController;
    .end local p1    # "configId":I
    .end local p2    # "value":Ljava/lang/String;
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 546
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigController;
    .restart local p1    # "configId":I
    .restart local p2    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigController;
    .end local p1    # "configId":I
    .end local p2    # "value":Ljava/lang/String;
    :try_start_6
    throw v4

    .line 551
    .end local v1    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    .end local v2    # "msg":Landroid/os/Message;
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigController;
    .restart local p1    # "configId":I
    .restart local p2    # "value":Ljava/lang/String;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public declared-synchronized setVoltePreference(I)V
    .locals 3
    .param p1, "mode"    # I

    monitor-enter p0

    .line 622
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoltePreference mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setVoiceDomainPreference(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    monitor-exit p0

    return-void

    .line 621
    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigController;
    .end local p1    # "mode":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
