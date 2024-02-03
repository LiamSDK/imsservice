.class public Lcom/mediatek/ims/internal/ImsVTProviderUtil;
.super Ljava/lang/Object;
.source "ImsVTProviderUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTMessagePacker;,
        Lcom/mediatek/ims/internal/ImsVTProviderUtil$NetworkAvailableCallback;,
        Lcom/mediatek/ims/internal/ImsVTProviderUtil$SimStateReceiver;,
        Lcom/mediatek/ims/internal/ImsVTProviderUtil$VTPhoneStateListener;,
        Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;,
        Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;
    }
.end annotation


# static fields
.field public static final CALL_RAT_LTE:I = 0x0

.field public static final CALL_RAT_NR:I = 0x2

.field public static final CALL_RAT_WIFI:I = 0x1

.field private static final EXTRA_PHONE_ID:Ljava/lang/String; = "phone_id"

.field public static final HIDE_ME_TYPE_DISABLE:I = 0x1

.field public static final HIDE_ME_TYPE_FREEZE:I = 0x2

.field public static final HIDE_ME_TYPE_NONE:I = 0x0

.field public static final HIDE_ME_TYPE_PICTURE:I = 0x3

.field public static final HIDE_YOU_TYPE_DISABLE:I = 0x0

.field public static final HIDE_YOU_TYPE_ENABLE:I = 0x1

.field private static final MSG_BIND:I = 0x2

.field private static final MSG_INIT_REFVTP:I = 0x1

.field private static final MSG_REINIT_REFVTP:I = 0x7

.field private static final MSG_RESET_WRAPPER:I = 0x6

.field private static final MSG_SETUIMODE:I = 0x3

.field private static final MSG_SWITCH_FEATURE:I = 0x4

.field private static final MSG_SWITCH_ROAMING:I = 0x5

.field private static final MSG_TRIGGER_OPERATOR_ID:I = 0x8

.field private static final PROPERTY_FPS:Ljava/lang/String; = "persist.vendor.vt.vfps"

.field public static final PROPERTY_MAX_DRAM_SIZE:Ljava/lang/String; = "ro.vendor.mtk_config_max_dram_size"

.field private static final PROPERTY_NO_CAMERA_MODE:Ljava/lang/String; = "persist.vendor.vt.no_camera_mode"

.field public static final PROPERTY_RIL_ICCID_SIM:Ljava/lang/String; = "vendor.ril.iccid.sim"

.field public static final PROPERTY_TEL_LOG:Ljava/lang/String; = "persist.log.tag.tel_dbg"

.field private static final PROPERTY_VILTE_ENABLE:Ljava/lang/String; = "persist.vendor.mtk.vilte.enable"

.field private static final PROPERTY_VIWIFI_ENABLE:Ljava/lang/String; = "persist.vendor.mtk.viwifi.enable"

.field private static final SIM_NUM:I

.field private static final TAG:Ljava/lang/String; = "ImsVT Util"

.field public static final TAG_VILTE_MOBILE:I = -0x1000000

.field public static final TAG_VILTE_WIFI:I = -0xf00000

.field public static final TURN_OFF_CAMERA:I = -0x1

.field public static final UI_MODE_BG:I = 0x1

.field public static final UI_MODE_CAMERA_STREAM:I = 0x5

.field public static final UI_MODE_DESTROY:I = 0x10000

.field public static final UI_MODE_ENTER_SCREEN_SHARE:I = 0x6

.field public static final UI_MODE_EXIT_SCREEN_SHARE:I = 0x7

.field public static final UI_MODE_FG:I = 0x0

.field public static final UI_MODE_FULL_SCREEN:I = 0x2

.field public static final UI_MODE_IMAGE_STREAM:I = 0x4

.field public static final UI_MODE_NORMAL_SCREEN:I = 0x3

.field public static final UI_MODE_RESET:I = 0x8

.field public static final UI_MODE_UNCHANGED:I = -0x1

.field private static final VILTE_SUPPORT:Ljava/lang/String; = "persist.vendor.vilte_support"

.field private static final VIWIFI_SUPPORT:Ljava/lang/String; = "persist.vendor.viwifi_support"

.field public static final VT_SIM_ID_ABSENT:I = -0x1

.field private static mInstance:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

.field public static sIsNoCameraMode:Z


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field public mContext:Landroid/content/Context;

.field private mDataUsageById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mFeatureValueReceiver:Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;

.field private mNetworkAvailableCallback:Lcom/mediatek/ims/internal/ImsVTProviderUtil$NetworkAvailableCallback;

.field private mPacker:Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTMessagePacker;

.field private mPhoneServicesStateListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/PhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderHandler:Landroid/os/Handler;

.field protected mProviderHandlerThread:Landroid/os/HandlerThread;

.field private mSimAppState:[I

.field private mSimCardState:[I

.field private mSimReadyVariable:[Landroid/os/ConditionVariable;

.field private mSimStateReceiver:Lcom/mediatek/ims/internal/ImsVTProviderUtil$SimStateReceiver;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSubscriptionsChangedlistener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 135
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->SIM_NUM:I

    .line 187
    nop

    .line 188
    const-string v0, "persist.vendor.vt.no_camera_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->sIsNoCameraMode:Z

    .line 541
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getInstance()Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mInstance:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTMessagePacker;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTMessagePacker;-><init>(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mPacker:Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTMessagePacker;

    .line 514
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    .line 515
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mDataUsageById:Ljava/util/Map;

    .line 517
    sget v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->SIM_NUM:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimCardState:[I

    .line 518
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimAppState:[I

    .line 519
    new-array v0, v0, [Landroid/os/ConditionVariable;

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimReadyVariable:[Landroid/os/ConditionVariable;

    .line 530
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mPhoneServicesStateListeners:Ljava/util/Map;

    .line 531
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$1;-><init>(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSubscriptionsChangedlistener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 545
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ProviderHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderHandlerThread:Landroid/os/HandlerThread;

    .line 546
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 548
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$2;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$2;-><init>(Lcom/mediatek/ims/internal/ImsVTProviderUtil;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderHandler:Landroid/os/Handler;

    .line 635
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;-><init>(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mFeatureValueReceiver:Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;

    .line 636
    invoke-virtual {v0, p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->setOwner(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)V

    .line 638
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 639
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimCardState:[I

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;->getSimCardState(I)I

    move-result v2

    aput v2, v1, v0

    .line 640
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimAppState:[I

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;->getSimApplicationState(I)I

    move-result v2

    aput v2, v1, v0

    .line 641
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimReadyVariable:[Landroid/os/ConditionVariable;

    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    aput-object v2, v1, v0

    .line 638
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 644
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$SimStateReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$SimStateReceiver;-><init>(Lcom/mediatek/ims/internal/ImsVTProviderUtil;Lcom/mediatek/ims/internal/ImsVTProviderUtil$1;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimStateReceiver:Lcom/mediatek/ims/internal/ImsVTProviderUtil$SimStateReceiver;

    .line 645
    invoke-virtual {v0, p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$SimStateReceiver;->setOwner(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)V

    .line 647
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$NetworkAvailableCallback;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$NetworkAvailableCallback;-><init>(Lcom/mediatek/ims/internal/ImsVTProviderUtil;Lcom/mediatek/ims/internal/ImsVTProviderUtil$1;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mNetworkAvailableCallback:Lcom/mediatek/ims/internal/ImsVTProviderUtil$NetworkAvailableCallback;

    .line 648
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 121
    sget v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->SIM_NUM:I

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)[Landroid/os/ConditionVariable;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 121
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimReadyVariable:[Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 121
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 121
    invoke-direct {p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->updateServiceStateListeners()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/mediatek/ims/internal/ImsVTProviderUtil;
    .locals 2

    const-class v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    monitor-enter v0

    .line 651
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mInstance:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    if-nez v1, :cond_0

    .line 652
    new-instance v1, Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-direct {v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;-><init>()V

    sput-object v1, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mInstance:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 654
    :cond_0
    sget-object v1, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mInstance:Lcom/mediatek/ims/internal/ImsVTProviderUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 650
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getPreConfigureFPS()I
    .locals 2

    .line 908
    const-string v0, "persist.vendor.vt.vfps"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 909
    .local v0, "fps":I
    return v0
.end method

.method public static is512mbProject()Z
    .locals 2

    .line 898
    const-string v0, "ro.vendor.mtk_config_max_dram_size"

    const-string v1, "0x40000000"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x20000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCameraAvailable()Z
    .locals 2

    .line 914
    invoke-static {}, Lcom/mediatek/ims/internal/VTSource;->getAllCameraResolutions()[Lcom/mediatek/ims/internal/VTSource$Resolution;

    move-result-object v0

    .line 916
    .local v0, "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isGmsVersion()Z
    .locals 2

    .line 920
    const-string v0, "ro.com.google.gmsversion"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 921
    .local v0, "isGms":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isTelephonyLogEnable()Z
    .locals 2

    .line 925
    const-string v0, "persist.log.tag.tel_dbg"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isVideoCallOnByPlatform()Z
    .locals 3

    .line 892
    const-string v0, "persist.vendor.vilte_support"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 893
    const-string v0, "persist.vendor.viwifi_support"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 892
    :goto_1
    return v0
.end method

.method public static isVideoQualityTestMode()Z
    .locals 4

    .line 903
    const-string v0, "persist.vendor.vt.lab_op_code"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 904
    .local v0, "labOp":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method private updateServiceStateListeners()V
    .locals 9

    .line 688
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const-string v1, "ImsVT Util"

    if-nez v0, :cond_0

    .line 689
    const-string v0, "[updateServiceStateListeners] Unexpected error, mSubscriptionManager=null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    return-void

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    .line 694
    const-string v0, "[updateServiceStateListeners] Unexpected error, mTelephonyManager=null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    return-void

    .line 698
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mPhoneServicesStateListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 699
    .local v0, "unUsedSubscriptions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 701
    .local v2, "slist":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v2, :cond_3

    .line 703
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 705
    .local v4, "subInfoRecord":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    .line 707
    .local v5, "subId":I
    iget-object v6, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mPhoneServicesStateListeners:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    .line 710
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[updateServiceStateListeners] create ServicesStateListener for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    new-instance v6, Lcom/mediatek/ims/internal/ImsVTProviderUtil$VTPhoneStateListener;

    invoke-direct {v6, p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$VTPhoneStateListener;-><init>(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)V

    .line 714
    .local v6, "listener":Lcom/mediatek/ims/internal/ImsVTProviderUtil$VTPhoneStateListener;
    iget-object v7, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v6, v8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 715
    iget-object v7, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mPhoneServicesStateListeners:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    .end local v6    # "listener":Lcom/mediatek/ims/internal/ImsVTProviderUtil$VTPhoneStateListener;
    goto :goto_1

    .line 721
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 723
    .end local v4    # "subInfoRecord":Landroid/telephony/SubscriptionInfo;
    .end local v5    # "subId":I
    :goto_1
    goto :goto_0

    .line 726
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 727
    .local v4, "key":Ljava/lang/Integer;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updateServiceStateListeners] remove unused ServicesStateListener for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mPhoneServicesStateListeners:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/PhoneStateListener;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 729
    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mPhoneServicesStateListeners:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    .end local v4    # "key":Ljava/lang/Integer;
    goto :goto_2

    .line 732
    :cond_4
    return-void
.end method


# virtual methods
.method public bind(Lcom/mediatek/ims/internal/ImsVTProvider;II)V
    .locals 3
    .param p1, "p"    # Lcom/mediatek/ims/internal/ImsVTProvider;
    .param p2, "CallId"    # I
    .param p3, "PhoneId"    # I

    .line 940
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 941
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 942
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 943
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 944
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 945
    return-void
.end method

.method public bindInternal(Lcom/mediatek/ims/internal/ImsVTProvider;II)V
    .locals 8
    .param p1, "p"    # Lcom/mediatek/ims/internal/ImsVTProvider;
    .param p2, "CallId"    # I
    .param p3, "PhoneId"    # I

    .line 1031
    const-string v0, "ImsVT Util"

    if-nez p1, :cond_0

    .line 1032
    const-string v1, "ImsVTProvider == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    return-void

    .line 1036
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindInternal(), vtp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phone id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    const/high16 v1, 0x10000

    iget v2, p1, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    if-ne v1, v2, :cond_1

    .line 1040
    const-string v1, "Ignore bind ImsVTProvider because UI_MODE_DESTROY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    return-void

    .line 1047
    :cond_1
    move v1, p2

    .line 1048
    .local v1, "id":I
    const/4 v2, 0x1

    .line 1050
    .local v2, "ImsCount":I
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/ims/ImsService;->getModemMultiImsCount()I

    move-result v2

    .line 1051
    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 1052
    shl-int/lit8 v4, p3, 0x10

    or-int v1, v4, p2

    .line 1055
    :cond_2
    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v4

    const/16 v5, -0x2710

    if-ne v4, v5, :cond_6

    .line 1060
    const/4 v4, 0x0

    .line 1061
    .local v4, "wait_time":I
    const-string v5, "bind ImsVTProvider check if exist the same id"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :cond_3
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordGet(I)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1063
    const-string v5, "bind ImsVTProvider the same id exist, wait ..."

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    const-wide/16 v5, 0x190

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1068
    goto :goto_0

    .line 1067
    :catch_0
    move-exception v5

    .line 1070
    :goto_0
    add-int/lit8 v4, v4, 0x1

    .line 1071
    const/16 v5, 0xa

    if-le v4, v5, :cond_3

    .line 1072
    const-string v5, "bind ImsVTProvider the same id exist, break!"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    :cond_4
    invoke-virtual {p1, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setId(I)V

    .line 1078
    invoke-virtual {p1, p3}, Lcom/mediatek/ims/internal/ImsVTProvider;->setSimId(I)V

    .line 1079
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->usageGet(I)Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    move-result-object v5

    const-string v6, "Init"

    invoke-direct {v0, v6, v5}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;-><init>(Ljava/lang/String;Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V

    .line 1080
    .local v0, "initUsage":Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    iget-object v5, p1, Lcom/mediatek/ims/internal/ImsVTProvider;->mUsager:Lcom/mediatek/ims/internal/ImsVTUsageManager;

    invoke-virtual {v5, v0}, Lcom/mediatek/ims/internal/ImsVTUsageManager;->setInitUsage(Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V

    .line 1082
    invoke-virtual {p0, v1, p1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordAdd(ILcom/mediatek/ims/internal/ImsVTProvider;)V

    .line 1084
    sget-boolean v5, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->sIsNoCameraMode:Z

    if-eqz v5, :cond_5

    .line 1085
    new-instance v5, Lcom/mediatek/ims/internal/VTDummySource;

    invoke-direct {v5}, Lcom/mediatek/ims/internal/VTDummySource;-><init>()V

    iput-object v5, p1, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    goto :goto_1

    .line 1087
    :cond_5
    new-instance v5, Lcom/mediatek/ims/internal/VTSource;

    const/4 v6, 0x2

    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v7

    invoke-direct {v5, v6, v7, p1}, Lcom/mediatek/ims/internal/VTSource;-><init>(IILcom/mediatek/ims/internal/VTSource$EventCallback;)V

    iput-object v5, p1, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    .line 1091
    :goto_1
    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSimId()I

    move-result v5

    invoke-static {v1, v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->nInitialization(II)I

    .line 1092
    iput-boolean v3, p1, Lcom/mediatek/ims/internal/ImsVTProvider;->mInitComplete:Z

    .line 1094
    .end local v0    # "initUsage":Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    .end local v4    # "wait_time":I
    :cond_6
    return-void
.end method

.method public getBooleanFromCarrierConfig(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "simId"    # I

    .line 1143
    invoke-static {p2}, Lcom/mediatek/ims/common/SubscriptionManagerHelper;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 1144
    .local v0, "subId":I
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    .line 1145
    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 1146
    .local v1, "configMgr":Landroid/telephony/CarrierConfigManager;
    nop

    .line 1147
    invoke-virtual {v1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1148
    .local v2, "carrierConfig":Landroid/os/PersistableBundle;
    if-eqz v2, :cond_0

    .line 1149
    invoke-virtual {v2, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1150
    .local v3, "result":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBooleanFromCarrierConfig() key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ImsVT Util"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    return v3

    .line 1153
    .end local v3    # "result":Z
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method public getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;
    .locals 2

    .line 677
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeExtensionPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ExtensionPluginFactory;

    move-result-object v0

    .line 678
    .local v0, "facotry":Lcom/mediatek/ims/plugin/ExtensionPluginFactory;
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/plugin/ExtensionPluginFactory;->makeImsCallPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v1

    return-object v1
.end method

.method public getImsOemCallUtil()Lcom/mediatek/ims/plugin/ImsCallOemPlugin;
    .locals 2

    .line 683
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v0

    .line 684
    .local v0, "facotry":Lcom/mediatek/ims/plugin/OemPluginFactory;
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsCallPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized getSimAppState(I)I
    .locals 1
    .param p1, "simId"    # I

    monitor-enter p0

    .line 822
    if-ltz p1, :cond_0

    :try_start_0
    sget v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->SIM_NUM:I

    if-ge p1, v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimAppState:[I

    aget v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 821
    .end local p0    # "this":Lcom/mediatek/ims/internal/ImsVTProviderUtil;
    .end local p1    # "simId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 826
    .restart local p0    # "this":Lcom/mediatek/ims/internal/ImsVTProviderUtil;
    .restart local p1    # "simId":I
    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized getSimCardState(I)I
    .locals 1
    .param p1, "simId"    # I

    monitor-enter p0

    .line 808
    if-ltz p1, :cond_0

    :try_start_0
    sget v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->SIM_NUM:I

    if-ge p1, v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimCardState:[I

    aget v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 807
    .end local p0    # "this":Lcom/mediatek/ims/internal/ImsVTProviderUtil;
    .end local p1    # "simId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 812
    .restart local p0    # "this":Lcom/mediatek/ims/internal/ImsVTProviderUtil;
    .restart local p1    # "simId":I
    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0
.end method

.method public isSimStateStable(I)Z
    .locals 3
    .param p1, "simId"    # I

    .line 836
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getSimCardState(I)I

    move-result v0

    .line 839
    .local v0, "cardState":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v2, 0xb

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isViWifiOn(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 888
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mFeatureValueReceiver:Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->getInitViWifiValue(I)Z

    move-result v0

    return v0
.end method

.method public isVideoCallOn(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 884
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mFeatureValueReceiver:Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->getInitViLTEValue(I)Z

    move-result v0

    return v0
.end method

.method public notifyMultiSimConfigChanged(I)V
    .locals 4
    .param p1, "activeModemCount"    # I

    .line 658
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimCardState:[I

    array-length v0, v0

    .line 659
    .local v0, "prevActiveModemCount":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyMultiSimConfigChanged, phone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsVT Util"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    if-eq v0, p1, :cond_2

    if-le v0, p1, :cond_0

    goto :goto_1

    .line 665
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimCardState:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimCardState:[I

    .line 666
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimAppState:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimAppState:[I

    .line 667
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimReadyVariable:[Landroid/os/ConditionVariable;

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/ConditionVariable;

    iput-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimReadyVariable:[Landroid/os/ConditionVariable;

    .line 668
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 669
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimCardState:[I

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;->getSimCardState(I)I

    move-result v3

    aput v3, v2, v1

    .line 670
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimAppState:[I

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;->getSimApplicationState(I)I

    move-result v3

    aput v3, v2, v1

    .line 671
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimReadyVariable:[Landroid/os/ConditionVariable;

    new-instance v3, Landroid/os/ConditionVariable;

    invoke-direct {v3}, Landroid/os/ConditionVariable;-><init>()V

    aput-object v3, v2, v1

    .line 668
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 673
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 662
    :cond_2
    :goto_1
    return-void
.end method

.method public packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;
    .locals 1
    .param p1, "VideoProfile"    # Landroid/telecom/VideoProfile;

    .line 735
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mPacker:Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTMessagePacker;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTMessagePacker;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public quitAllThread()V
    .locals 4

    .line 854
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 856
    .local v1, "p":Ljava/lang/Object;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quitThread, id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsVT Util"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    move-object v2, v1

    check-cast v2, Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->quitThread()V

    .line 858
    .end local v1    # "p":Ljava/lang/Object;
    goto :goto_0

    .line 860
    :cond_0
    return-void
.end method

.method public reInitRefVTP()V
    .locals 4

    .line 933
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 935
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 936
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 937
    return-void
.end method

.method public recordAdd(ILcom/mediatek/ims/internal/ImsVTProvider;)V
    .locals 3
    .param p1, "Id"    # I
    .param p2, "p"    # Lcom/mediatek/ims/internal/ImsVTProvider;

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recordAdd id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Util"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    return-void
.end method

.method public recordContain(I)Z
    .locals 2
    .param p1, "Id"    # I

    .line 794
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public recordGet(I)Lcom/mediatek/ims/internal/ImsVTProvider;
    .locals 3
    .param p1, "Id"    # I

    .line 777
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isTelephonyLogEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recordGet id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Util"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/ImsVTProvider;

    return-object v0
.end method

.method public recordPopId()I
    .locals 2

    .line 785
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 787
    .local v0, "p":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v1

    return v1

    .line 790
    .end local v0    # "p":Ljava/lang/Object;
    :cond_0
    const/16 v0, -0x2710

    return v0
.end method

.method public recordRemove(I)V
    .locals 3
    .param p1, "Id"    # I

    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recordRemove id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Util"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    return-void
.end method

.method public recordRemoveAll()V
    .locals 2

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recordRemoveAll, size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Util"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 773
    return-void
.end method

.method public recordSize()I
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public registerNetworkRequestWithCallback(I)V
    .locals 4
    .param p1, "cap"    # I

    .line 1016
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1017
    .local v0, "builder":Landroid/net/NetworkRequest$Builder;
    invoke-virtual {v0, p1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1018
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 1020
    .local v1, "networkRequest":Landroid/net/NetworkRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerNetworkRequestwithCallback(), networkRequest:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsVT Util"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_0

    .line 1023
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    .line 1024
    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 1026
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mNetworkAvailableCallback:Lcom/mediatek/ims/internal/ImsVTProviderUtil$NetworkAvailableCallback;

    invoke-virtual {v2, v1, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1027
    return-void
.end method

.method public releaseVTSourceAll()V
    .locals 4

    .line 875
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 877
    .local v1, "p":Ljava/lang/Object;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseVTSourceAll, id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsVT Util"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    move-object v2, v1

    check-cast v2, Lcom/mediatek/ims/internal/ImsVTProvider;

    iget-object v2, v2, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v2}, Lcom/mediatek/ims/internal/VTSource;->release()V

    .line 879
    .end local v1    # "p":Ljava/lang/Object;
    goto :goto_0

    .line 881
    :cond_0
    return-void
.end method

.method public resetWrapper(Lcom/mediatek/ims/internal/ImsVTProvider;)V
    .locals 3
    .param p1, "p"    # Lcom/mediatek/ims/internal/ImsVTProvider;

    .line 970
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 971
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 972
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 973
    return-void
.end method

.method public resetWrapperInternal(Lcom/mediatek/ims/internal/ImsVTProvider;)V
    .locals 0
    .param p1, "p"    # Lcom/mediatek/ims/internal/ImsVTProvider;

    .line 1137
    if-eqz p1, :cond_0

    .line 1138
    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->onResetWrapper()V

    .line 1140
    :cond_0
    return-void
.end method

.method public setContextAndInitRefVTP(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 929
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 930
    return-void
.end method

.method public setContextAndInitRefVTPInternal(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setContextAndInitRefVTPInternal(), context ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Util"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    .line 980
    sget-boolean v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->sIsNoCameraMode:Z

    if-eqz v0, :cond_0

    .line 981
    invoke-static {p1}, Lcom/mediatek/ims/internal/VTDummySource;->setContext(Landroid/content/Context;)V

    goto :goto_0

    .line 983
    :cond_0
    invoke-static {p1}, Lcom/mediatek/ims/internal/VTSource;->setContext(Landroid/content/Context;)V

    .line 985
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 987
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mFeatureValueReceiver:Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;

    if-eqz v0, :cond_1

    .line 988
    const-string v0, "setContextAndInitRefVTP, register FeatureValueReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 990
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.android.intent.action.IMS_FEATURE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 991
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mFeatureValueReceiver:Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 994
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimStateReceiver:Lcom/mediatek/ims/internal/ImsVTProviderUtil$SimStateReceiver;

    if-eqz v0, :cond_2

    .line 995
    const-string v0, "setContextAndInitRefVTP, register SimStateReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 999
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimStateReceiver:Lcom/mediatek/ims/internal/ImsVTProviderUtil$SimStateReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1002
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 1003
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSubscriptionsChangedlistener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 1005
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->registerNetworkRequestWithCallback(I)V

    .line 1006
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->registerNetworkRequestWithCallback(I)V

    .line 1008
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isVideoCallOnByPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1009
    const-string v0, "setContextAndInitRefVTPInternal(), ViLTE on, do natvie init"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProvider;->nInitRefVTP()I

    .line 1011
    const/16 v0, 0x3e9

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->nTagSocketWithUid(I)I

    .line 1013
    :cond_3
    return-void
.end method

.method public declared-synchronized setSimAppState(II)V
    .locals 1
    .param p1, "simId"    # I
    .param p2, "state"    # I

    monitor-enter p0

    .line 816
    if-ltz p1, :cond_0

    :try_start_0
    sget v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->SIM_NUM:I

    if-ge p1, v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimAppState:[I

    aput p2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 815
    .end local p0    # "this":Lcom/mediatek/ims/internal/ImsVTProviderUtil;
    .end local p1    # "simId":I
    .end local p2    # "state":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 819
    .restart local p0    # "this":Lcom/mediatek/ims/internal/ImsVTProviderUtil;
    .restart local p1    # "simId":I
    .restart local p2    # "state":I
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setSimCardState(II)V
    .locals 1
    .param p1, "simId"    # I
    .param p2, "state"    # I

    monitor-enter p0

    .line 802
    if-ltz p1, :cond_0

    :try_start_0
    sget v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->SIM_NUM:I

    if-ge p1, v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimCardState:[I

    aput p2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 801
    .end local p0    # "this":Lcom/mediatek/ims/internal/ImsVTProviderUtil;
    .end local p1    # "simId":I
    .end local p2    # "state":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 805
    .restart local p0    # "this":Lcom/mediatek/ims/internal/ImsVTProviderUtil;
    .restart local p1    # "simId":I
    .restart local p2    # "state":I
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public setUIMode(Lcom/mediatek/ims/internal/ImsVTProvider;I)V
    .locals 3
    .param p1, "p"    # Lcom/mediatek/ims/internal/ImsVTProvider;
    .param p2, "mode"    # I

    .line 948
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 949
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 950
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 951
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 952
    return-void
.end method

.method public setUIModeInternal(Lcom/mediatek/ims/internal/ImsVTProvider;I)V
    .locals 0
    .param p1, "p"    # Lcom/mediatek/ims/internal/ImsVTProvider;
    .param p2, "mode"    # I

    .line 1097
    if-eqz p1, :cond_0

    .line 1098
    invoke-virtual {p1, p2}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSetUIMode(I)V

    .line 1100
    :cond_0
    return-void
.end method

.method public switchFeature(IIZ)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "feature"    # I
    .param p3, "isOn"    # Z

    .line 955
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 956
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 957
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 958
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 959
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 960
    return-void
.end method

.method public switchFeatureInternal(IIZ)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "feature"    # I
    .param p3, "isOn"    # Z

    .line 1104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchFeatureInternal, feature = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Util"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1107
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1109
    .local v2, "p":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSimId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 1111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchFeatureInternal, id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    move-object v3, v2

    check-cast v3, Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v3, p2, p3}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSwitchFeature(IZ)V

    .line 1115
    .end local v2    # "p":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 1117
    :cond_1
    return-void
.end method

.method public switchRoaming(IZ)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "isRoaming"    # Z

    .line 963
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 964
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 965
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 966
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 967
    return-void
.end method

.method public switchRoamingInternal(IZ)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "isRoaming"    # Z

    .line 1121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchRoamingInternal, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isRoaming = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Util"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1124
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1126
    .local v2, "p":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSimId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 1128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchRoamingInternal, id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    move-object v3, v2

    check-cast v3, Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v3, p2}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSwitchRoaming(Z)V

    .line 1132
    .end local v2    # "p":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 1134
    :cond_1
    return-void
.end method

.method public unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;
    .locals 1
    .param p1, "flattened"    # Ljava/lang/String;

    .line 739
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mPacker:Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTMessagePacker;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTMessagePacker;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v0

    return-object v0
.end method

.method public updateCameraUsage(I)V
    .locals 4
    .param p1, "Id"    # I

    .line 863
    const-string v0, "ImsVT Util"

    const-string v1, "updateCameraUsage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 865
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 867
    .local v1, "p":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v2

    if-eq v2, p1, :cond_0

    .line 868
    move-object v2, v1

    check-cast v2, Lcom/mediatek/ims/internal/ImsVTProvider;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->setCameraInternal(Ljava/lang/String;)V

    .line 870
    .end local v1    # "p":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 872
    :cond_1
    return-void
.end method

.method public usageGet(I)Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    .locals 3
    .param p1, "Id"    # I

    .line 748
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mDataUsageById:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    .line 750
    .local v0, "usage":Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    if-nez v0, :cond_0

    .line 751
    new-instance v1, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    const-string v2, "Dummy"

    invoke-direct {v1, v2}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 753
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[usageGet][id ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsVT Util"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    return-object v0
.end method

.method public usageSet(ILcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V
    .locals 4
    .param p1, "Id"    # I
    .param p2, "usage"    # Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[usageSet][id ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Util"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mDataUsageById:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    const-string v3, "Record"

    invoke-direct {v2, v3, p2}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;-><init>(Ljava/lang/String;Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    return-void
.end method

.method public waitSimStateStable(I)V
    .locals 2
    .param p1, "simId"    # I

    .line 845
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isSimStateStable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "waitSimStateStable, simId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Util"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimReadyVariable:[Landroid/os/ConditionVariable;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 849
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimReadyVariable:[Landroid/os/ConditionVariable;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 851
    :cond_0
    return-void
.end method
