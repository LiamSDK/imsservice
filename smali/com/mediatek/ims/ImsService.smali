.class public Lcom/mediatek/ims/ImsService;
.super Ljava/lang/Object;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/ImsService$IMtkRcsFeatureCallback;,
        Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;,
        Lcom/mediatek/ims/ImsService$MyHandler;,
        Lcom/mediatek/ims/ImsService$IWifiOffloadServiceDeathRecipient;,
        Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;,
        Lcom/mediatek/ims/ImsService$NafSessionKeyResult;
    }
.end annotation


# static fields
.field public static final ACTION_RCS_REGISTER_CHANGED:Ljava/lang/String; = "com.mediatek.ims.MTK_RCS_REG_STATE"

.field public static final ACTION_VODATA_PDN_STATUS:Ljava/lang/String; = "com.mediatek.ims.ACTION_VODATA_PDN_STATUS"

.field private static final CONFIG_EXTRA_PHONE_ID:Ljava/lang/String; = "phone_id"

.field private static final DBG:Z = true

.field private static final ENGLOAD:Z

.field protected static final EVENT_CALL_ADDITIONAL_INFO_INDICATION:I = 0x24

.field protected static final EVENT_CALL_INFO_INDICATION:I = 0x8

.field protected static final EVENT_CC_CAPABILITY_CHANGE:I = 0x2c

.field protected static final EVENT_CHECK_VOWIFI_REGISTRATION:I = 0x2b

.field protected static final EVENT_DETAIL_IMS_REGISTRATION_IND:I = 0x26

.field protected static final EVENT_IMS_DEREG_DONE:I = 0x10

.field protected static final EVENT_IMS_DEREG_URC:I = 0x11

.field protected static final EVENT_IMS_DISABLED_URC:I = 0x5

.field protected static final EVENT_IMS_DISABLING_URC:I = 0xc

.field protected static final EVENT_IMS_ENABLED_URC:I = 0xb

.field protected static final EVENT_IMS_ENABLING_URC:I = 0xa

.field protected static final EVENT_IMS_NOTIFICATION_INIT:I = 0x27

.field private static final EVENT_IMS_REGISTRATION_INFO:I = 0x1

.field protected static final EVENT_IMS_REGISTRATION_STATUS_REPORT_IND:I = 0x25

.field protected static final EVENT_IMS_REG_FLAG_IND:I = 0x28

.field protected static final EVENT_IMS_REG_FLAG_IND_TIME_OUT:I = 0x29

.field protected static final EVENT_IMS_RTP_INFO_URC:I = 0x14

.field protected static final EVENT_IMS_SMS_NEW_CDMA_SMS:I = 0x20

.field protected static final EVENT_IMS_SMS_NEW_SMS:I = 0x1f

.field protected static final EVENT_IMS_SMS_STATUS_REPORT:I = 0x1e

.field protected static final EVENT_IMS_SUPPORT_ECC_URC:I = 0x19

.field protected static final EVENT_IMS_VOLTE_SETTING_URC:I = 0x16

.field protected static final EVENT_INCOMING_CALL_INDICATION:I = 0x7

.field protected static final EVENT_INIT_CALL_SESSION_PROXY:I = 0x1b

.field protected static final EVENT_ON_USSI:I = 0xf

.field protected static final EVENT_RADIO_NOT_AVAILABLE:I = 0x2

.field protected static final EVENT_RADIO_OFF:I = 0x12

.field protected static final EVENT_RADIO_ON:I = 0x13

.field protected static final EVENT_READY_TO_RECEIVE_PENDING_IND:I = 0x21

.field protected static final EVENT_RUN_GBA:I = 0x17

.field protected static final EVENT_SELF_IDENTIFY_UPDATE:I = 0x18

.field protected static final EVENT_SEND_SMS_DONE:I = 0x1c

.field protected static final EVENT_SET_IMS_DISABLE_DONE:I = 0x4

.field protected static final EVENT_SET_IMS_ENABLED_DONE:I = 0x3

.field protected static final EVENT_SET_IMS_REGISTRATION_REPORT_DONE:I = 0x15

.field protected static final EVENT_SIP_CODE_INDICATION:I = 0xd

.field protected static final EVENT_SIP_CODE_INDICATION_DEREG:I = 0xe

.field protected static final EVENT_START_GBA_SERVICE:I = 0x1a

.field protected static final EVENT_TEST_QUERY_VOPS_STATUS:I = 0x23

.field protected static final EVENT_TRIGGER_IMS_REGISTRATION_REPORT:I = 0x2a

.field protected static final EVENT_UT_CAPABILITY_CHANGE:I = 0x1d

.field private static final EVENT_VIRTUAL_SIM_ON:I = 0x6

.field protected static final EVENT_VOPS_STATUS_IND:I = 0x22

.field public static final EXTRA_IMS_PDN_OVER_RAT:Ljava/lang/String; = "ims_pdn_over_rat"

.field private static final EXTRA_PHONE_ID:Ljava/lang/String; = "android:phoneId"

.field private static final EXTRA_REG_STATE:Ljava/lang/String; = "android:state"

.field private static final IMSSERVICE_NOTIFICATION_NAME:Ljava/lang/CharSequence;

.field private static final IMS_ALLOW_INCOMING_CALL_INDICATION:I = 0x0

.field private static final IMS_DISALLOW_INCOMING_CALL_INDICATION:I = 0x1

.field private static final IMS_MAX_FEATURE_SUPPORT_SIZE:I = 0x6

.field private static final IMS_RCS_OVER_LTE:I = 0x2

.field private static final IMS_REG_ERROR_NOTIFICATION:Ljava/lang/String; = "com.android.imsconnection.DISCONNECTED"

.field private static final IMS_REG_ERROR_NOTIFICATION_PERMISSION:Ljava/lang/String; = "com.mediatek.permission.IMS_ERR_NOTIFICATION"

.field private static final IMS_REG_SIP_URI_TYPE_IMSI:I = 0x1

.field private static final IMS_REG_SIP_URI_TYPE_MSISDN:I = 0x0

.field private static final IMS_RTT_CALL_TYPE_CS:I = 0x0

.field private static final IMS_RTT_CALL_TYPE_RTT:I = 0x1

.field private static final IMS_SERVICE:Ljava/lang/String; = "ims"

.field private static final IMS_SMS_OVER_LTE:I = 0x4

.field private static final IMS_SS_CMD_ERROR:I = 0x3

.field private static final IMS_SS_CMD_SUCCESS:I = 0x4

.field private static final IMS_SS_INTERRUPT_ERROR:I = 0x2

.field private static final IMS_SS_TIMEOUT_ERROR:I = 0x1

.field private static final IMS_VIDEO_OVER_LTE:I = 0x8

.field private static final IMS_VOICE_OVER_LTE:I = 0x1

.field private static final IMS_VOICE_OVER_WIFI:I = 0x10

.field private static final LOG_TAG:Ljava/lang/String; = "ImsService"

.field private static final MT_CALL_DIAL_IMS_STK:I = 0x64

.field private static final NOTIFICATION_CHANNEL:Ljava/lang/String; = "ImsService"

.field private static final PDN_CONNECTED:I = 0x1

.field private static final PDN_DISONNECTED:I = 0x0

.field private static final PROPERTY_IMSCONFIG_FORCE_NOTIFY:Ljava/lang/String; = "vendor.ril.imsconfig.force.notify"

.field private static final PROPERTY_IMS_REG_EXTINFO:Ljava/lang/String; = "ril.ims.extinfo"

.field private static final SENLOG:Z

.field private static final SIP_NOTIFY:I = 0xa

.field private static final SIP_REGISTER:I = 0x0

.field private static final SIP_SUBSCRIBE:I = 0x9

.field private static final TIMER_CHECK_VOWIFI_REGISTRATION_TIMEOUT:I = 0x3e8

.field private static final TIMER_IMS_EIMSUI_TIMEOUT:I = 0x2710

.field private static final TIMER_TRIGGER_IMS_REGISTRATION_TIMEOUT:I = 0x3e8

.field private static final VDBG:Z = false

.field protected static final mLock:Ljava/lang/Object;

.field private static mMmTelFeatureCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static mRcsFeatureCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/ImsService$IMtkRcsFeatureCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/mediatek/ims/ImsService;

.field private static sMtkImsRegImpl:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/MtkImsRegistrationImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static sMtkSSExt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/MtkSuppServExt;",
            ">;"
        }
    .end annotation
.end field

.field private static sMtkSipTranportImpl:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/rcs/MtkSipTransportImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCapLockObj:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mDeathRecipient:Lcom/mediatek/ims/ImsService$IWifiOffloadServiceDeathRecipient;

.field private mExpectedImsState:[I

.field private mFeatureValueReceiver:Landroid/content/BroadcastReceiver;

.field private mGbaConnection:Landroid/content/ServiceConnection;

.field private mHandler:[Landroid/os/Handler;

.field private mImsCallProfile:[Landroid/telephony/ims/ImsCallProfile;

.field private mImsConfigIccid:[Ljava/lang/String;

.field private mImsConfigManager:Lcom/mediatek/ims/ImsConfigManager;

.field private mImsConfigMccmnc:[Ljava/lang/String;

.field private mImsDataTracker:Lcom/mediatek/ims/internal/ImsDataTracker;

.field private mImsEcbm:[Lcom/mediatek/ims/ImsEcbmProxy;

.field private mImsEvtPkgAdapter:[Lcom/mediatek/ims/ImsEventPackageAdapter;

.field private mImsExtInfo:[I

.field private mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

.field private mImsPdnRat:[I

.field private mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

.field private mImsRegInd:[Lcom/mediatek/ims/ImsRegInfo;

.field private mImsRegInfo:[I

.field private mImsRegOemPlugin:Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;

.field private mImsRegistry:Z

.field private mImsSmsListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashSet<",
            "Landroid/telephony/ims/aidl/IImsSmsListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mImsState:[I

.field private mIsImsEccSupported:[I

.field private mIsMTredirect:[Z

.field private mIsPendingMTTerminated:[Z

.field private mListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashSet<",
            "Lcom/android/ims/internal/IImsRegistrationListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLockObj:Ljava/lang/Object;

.field private mLockUri:Ljava/lang/Object;

.field private mMtkListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashSet<",
            "Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMtkPendingMT:[Lcom/mediatek/ims/MtkImsCallSessionProxy;

.field private mMultiEndpoints:[Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;

.field private mNumOfPhones:I

.field private mPendingMT:[Lcom/mediatek/ims/ImsCallSessionProxy;

.field private mPendingMTCallId:[Ljava/lang/String;

.field private mPendingMTSeqNum:[Ljava/lang/String;

.field private mPendingMtkImsCallSessionProxy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mProxy:Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;

.field private mRAN:[I

.field private mRcsState:[I

.field private mRedirectIncomingAsyncResult:Landroid/os/AsyncResult;

.field private mRedirectIncomingSocketId:I

.field private mRegErrorCode:[I

.field private mRegisterSubInfoChange:Z

.field private mRttEmcGuardTimerUtil:[Lcom/mediatek/ims/RttEmcGuardTimerUtil;

.field private mServiceId:[I

.field private mSslooper:Landroid/os/Looper;

.field private final mSubInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mTempDisableWFC:[Z

.field private mVolteEnable:[Z

.field private mVopsReport:[I

.field private mWaitFeatureChange:I

.field private mWaitSubInfoChange:[Z

.field private mWfcHandoverToLteState:[I

.field private mWfcPdnState:[I

.field private mWfcRegErrorCode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 187
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/ImsService;->ENGLOAD:Z

    .line 188
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/ImsService;->SENLOG:Z

    .line 194
    const-string v0, "ImsService notification"

    sput-object v0, Lcom/mediatek/ims/ImsService;->IMSSERVICE_NOTIFICATION_NAME:Ljava/lang/CharSequence;

    .line 206
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    .line 211
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/mediatek/ims/ImsService;->sMtkImsRegImpl:Ljava/util/HashMap;

    .line 214
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/mediatek/ims/ImsService;->sMtkSSExt:Ljava/util/HashMap;

    .line 217
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/mediatek/ims/ImsService;->sMtkSipTranportImpl:Ljava/util/HashMap;

    .line 423
    sput-object v0, Lcom/mediatek/ims/ImsService;->sInstance:Lcom/mediatek/ims/ImsService;

    .line 424
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/ims/ImsService;->mLock:Ljava/lang/Object;

    .line 3756
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/ims/ImsService;->mRcsFeatureCallback:Ljava/util/HashMap;

    .line 3777
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 197
    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mPendingMT:[Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 198
    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mMtkPendingMT:[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 201
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/ImsService;->mLockObj:Ljava/lang/Object;

    .line 202
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/ImsService;->mLockUri:Ljava/lang/Object;

    .line 203
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/ImsService;->mCapLockObj:Ljava/lang/Object;

    .line 207
    new-instance v1, Lcom/mediatek/ims/ImsService$IWifiOffloadServiceDeathRecipient;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/ims/ImsService$IWifiOffloadServiceDeathRecipient;-><init>(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/ImsService$1;)V

    iput-object v1, p0, Lcom/mediatek/ims/ImsService;->mDeathRecipient:Lcom/mediatek/ims/ImsService$IWifiOffloadServiceDeathRecipient;

    .line 209
    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mProxy:Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;

    .line 220
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    .line 226
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mListener:Ljava/util/ArrayList;

    .line 228
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mMtkListener:Ljava/util/ArrayList;

    .line 251
    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsConfigManager:Lcom/mediatek/ims/ImsConfigManager;

    .line 252
    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    .line 253
    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsConfigMccmnc:[Ljava/lang/String;

    .line 254
    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsConfigIccid:[Ljava/lang/String;

    .line 256
    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mPendingMTCallId:[Ljava/lang/String;

    .line 257
    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mPendingMTSeqNum:[Ljava/lang/String;

    .line 259
    const/4 v2, 0x2

    new-array v3, v2, [Lcom/mediatek/ims/RttEmcGuardTimerUtil;

    iput-object v3, p0, Lcom/mediatek/ims/ImsService;->mRttEmcGuardTimerUtil:[Lcom/mediatek/ims/RttEmcGuardTimerUtil;

    .line 419
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mediatek/ims/ImsService;->mImsSmsListener:Ljava/util/ArrayList;

    .line 429
    iput-boolean v1, p0, Lcom/mediatek/ims/ImsService;->mRegisterSubInfoChange:Z

    .line 432
    iput v1, p0, Lcom/mediatek/ims/ImsService;->mWaitFeatureChange:I

    .line 445
    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mRedirectIncomingAsyncResult:Landroid/os/AsyncResult;

    .line 446
    const/4 v3, -0x1

    iput v3, p0, Lcom/mediatek/ims/ImsService;->mRedirectIncomingSocketId:I

    .line 451
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/mediatek/ims/ImsService;->mPendingMtkImsCallSessionProxy:Ljava/util/Map;

    .line 468
    iput-boolean v1, p0, Lcom/mediatek/ims/ImsService;->mImsRegistry:Z

    .line 469
    new-instance v3, Lcom/mediatek/ims/ImsService$1;

    invoke-direct {v3, p0}, Lcom/mediatek/ims/ImsService$1;-><init>(Lcom/mediatek/ims/ImsService;)V

    iput-object v3, p0, Lcom/mediatek/ims/ImsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 988
    new-instance v3, Lcom/mediatek/ims/ImsService$2;

    invoke-direct {v3, p0}, Lcom/mediatek/ims/ImsService$2;-><init>(Lcom/mediatek/ims/ImsService;)V

    iput-object v3, p0, Lcom/mediatek/ims/ImsService;->mGbaConnection:Landroid/content/ServiceConnection;

    .line 4039
    new-instance v3, Lcom/mediatek/ims/ImsService$3;

    invoke-direct {v3, p0}, Lcom/mediatek/ims/ImsService$3;-><init>(Lcom/mediatek/ims/ImsService;)V

    iput-object v3, p0, Lcom/mediatek/ims/ImsService;->mSubInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 4064
    new-instance v3, Lcom/mediatek/ims/ImsService$4;

    invoke-direct {v3, p0}, Lcom/mediatek/ims/ImsService$4;-><init>(Lcom/mediatek/ims/ImsService;)V

    iput-object v3, p0, Lcom/mediatek/ims/ImsService;->mFeatureValueReceiver:Landroid/content/BroadcastReceiver;

    .line 554
    const-string v3, "init"

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 555
    iput-object p1, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    .line 557
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    iput v3, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    .line 559
    new-array v4, v3, [Lcom/mediatek/ims/ImsService$MyHandler;

    iput-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    .line 560
    new-array v3, v3, [Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iput-object v3, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 561
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    const/16 v5, 0xa

    const/4 v6, 0x1

    if-ge v3, v4, :cond_1

    .line 562
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    new-instance v7, Lcom/mediatek/ims/ImsService$MyHandler;

    invoke-direct {v7, p0, v3}, Lcom/mediatek/ims/ImsService$MyHandler;-><init>(Lcom/mediatek/ims/ImsService;I)V

    aput-object v7, v4, v3

    .line 563
    new-instance v4, Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-direct {v4, p1, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;-><init>(Landroid/content/Context;I)V

    .line 566
    .local v4, "ril":Lcom/mediatek/ims/ril/ImsRILAdapter;
    iget-object v7, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v7, v7, v3

    invoke-virtual {v4, v7, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 567
    iget-object v7, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v7, v7, v3

    const/16 v8, 0x12

    invoke-virtual {v4, v7, v8, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 568
    iget-object v7, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v7, v7, v3

    const/16 v8, 0x13

    invoke-virtual {v4, v7, v8, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 570
    iget-object v7, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v7, v7, v3

    invoke-virtual {v4, v7, v6, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForImsRegistrationInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 571
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v6, v6, v3

    invoke-virtual {v4, v6, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForImsEnableStart(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 572
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, v3

    const/16 v6, 0xb

    invoke-virtual {v4, v5, v6, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForImsEnableComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 573
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, v3

    const/16 v6, 0xc

    invoke-virtual {v4, v5, v6, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForImsDisableStart(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 574
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, v3

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v6, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForImsDisableComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 575
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, v3

    const/4 v6, 0x7

    invoke-virtual {v4, v5, v6, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setOnIncomingCallIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 576
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, v3

    const/16 v6, 0xd

    invoke-virtual {v4, v5, v6, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForCallProgressIndicator(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 577
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, v3

    const/16 v6, 0x11

    invoke-virtual {v4, v5, v6, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForImsDeregisterComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 579
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, v3

    const/16 v6, 0x19

    invoke-virtual {v4, v5, v6, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForImsEccSupport(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 583
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, v3

    const/16 v6, 0xf

    invoke-virtual {v4, v5, v6, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setOnUSSI(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 587
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, v3

    const/16 v6, 0x14

    invoke-virtual {v4, v5, v6, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForImsRTPInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 590
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, v3

    const/16 v6, 0x16

    invoke-virtual {v4, v5, v6, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForVolteSettingChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 592
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, v3

    const/16 v6, 0x25

    invoke-virtual {v4, v5, v6, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForImsRegStatusInd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 594
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, v3

    const/16 v6, 0x26

    invoke-virtual {v4, v5, v6, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForDetailImsRegistrationInd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 597
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 598
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, v3

    const/16 v6, 0x18

    invoke-virtual {v4, v5, v6, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForXuiInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 601
    :cond_0
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, v3

    const/16 v6, 0x1e

    invoke-virtual {v4, v5, v6, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 602
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, v3

    const/16 v6, 0x1f

    invoke-virtual {v4, v5, v6, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setOnNewSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 603
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, v3

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 604
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, v3

    const/16 v6, 0x22

    invoke-virtual {v4, v5, v6, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForVopsStatusInd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 606
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, v3

    const/16 v6, 0x24

    invoke-virtual {v4, v5, v6, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForCallAdditionalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 608
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, v3

    const/16 v6, 0x28

    invoke-virtual {v4, v5, v6, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForImsRegFlagInd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 610
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aput-object v4, v5, v3

    .line 561
    .end local v4    # "ril":Lcom/mediatek/ims/ril/ImsRILAdapter;
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 614
    .end local v3    # "i":I
    :cond_1
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 615
    const-string v3, "Initializing"

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 616
    new-instance v3, Lcom/mediatek/ims/internal/ImsDataTracker;

    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-direct {v3, p1, v4}, Lcom/mediatek/ims/internal/ImsDataTracker;-><init>(Landroid/content/Context;[Lcom/mediatek/ims/ril/ImsCommandsInterface;)V

    iput-object v3, p0, Lcom/mediatek/ims/ImsService;->mImsDataTracker:Lcom/mediatek/ims/internal/ImsDataTracker;

    .line 618
    :cond_2
    const/4 v3, 0x0

    .local v3, "phoneId":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 619
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mRttEmcGuardTimerUtil:[Lcom/mediatek/ims/RttEmcGuardTimerUtil;

    new-instance v7, Lcom/mediatek/ims/RttEmcGuardTimerUtil;

    invoke-direct {v7, p1, v3}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;-><init>(Landroid/content/Context;I)V

    aput-object v7, v4, v3

    .line 618
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 623
    .end local v3    # "phoneId":I
    :cond_3
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 624
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.mediatek.ims.ACTION_IMS_SIMULATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 626
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 627
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 629
    const-string v3, "ro.vendor.mtk_ims_notification"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_4

    .line 630
    const-string v3, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 634
    :cond_4
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    if-nez v3, :cond_5

    .line 635
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    .line 636
    invoke-interface {v3, v4}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsManagerPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ImsService;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    .line 638
    :cond_5
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    if-eqz v3, :cond_6

    .line 639
    invoke-interface {v3}, Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;->isMergeRcsStateToImsSupport()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 640
    const-string v3, "com.mediatek.ims.MTK_RCS_REG_STATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 644
    :cond_6
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 646
    iget v3, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    new-array v4, v3, [I

    iput-object v4, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    .line 647
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/mediatek/ims/ImsService;->mImsExtInfo:[I

    .line 648
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/mediatek/ims/ImsService;->mServiceId:[I

    .line 649
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/mediatek/ims/ImsService;->mImsState:[I

    .line 650
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/mediatek/ims/ImsService;->mExpectedImsState:[I

    .line 651
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/mediatek/ims/ImsService;->mRegErrorCode:[I

    .line 652
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    .line 653
    new-array v4, v3, [Lcom/mediatek/ims/ImsEcbmProxy;

    iput-object v4, p0, Lcom/mediatek/ims/ImsService;->mImsEcbm:[Lcom/mediatek/ims/ImsEcbmProxy;

    .line 654
    new-array v3, v3, [Lcom/mediatek/ims/ImsEventPackageAdapter;

    iput-object v3, p0, Lcom/mediatek/ims/ImsService;->mImsEvtPkgAdapter:[Lcom/mediatek/ims/ImsEventPackageAdapter;

    .line 655
    new-instance v3, Lcom/mediatek/ims/ImsConfigManager;

    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-direct {v3, p1, v4}, Lcom/mediatek/ims/ImsConfigManager;-><init>(Landroid/content/Context;[Lcom/mediatek/ims/ril/ImsCommandsInterface;)V

    iput-object v3, p0, Lcom/mediatek/ims/ImsService;->mImsConfigManager:Lcom/mediatek/ims/ImsConfigManager;

    .line 656
    iget v3, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Lcom/mediatek/ims/ImsService;->mImsConfigMccmnc:[Ljava/lang/String;

    .line 657
    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Lcom/mediatek/ims/ImsService;->mImsConfigIccid:[Ljava/lang/String;

    .line 658
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/mediatek/ims/ImsService;->mIsImsEccSupported:[I

    .line 660
    new-array v4, v3, [Z

    iput-object v4, p0, Lcom/mediatek/ims/ImsService;->mWaitSubInfoChange:[Z

    .line 661
    new-array v4, v3, [Z

    iput-object v4, p0, Lcom/mediatek/ims/ImsService;->mVolteEnable:[Z

    .line 663
    new-array v4, v3, [Lcom/mediatek/ims/ImsRegInfo;

    iput-object v4, p0, Lcom/mediatek/ims/ImsService;->mImsRegInd:[Lcom/mediatek/ims/ImsRegInfo;

    .line 666
    new-array v4, v3, [Lcom/mediatek/ims/ImsCallSessionProxy;

    iput-object v4, p0, Lcom/mediatek/ims/ImsService;->mPendingMT:[Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 667
    new-array v4, v3, [Lcom/mediatek/ims/MtkImsCallSessionProxy;

    iput-object v4, p0, Lcom/mediatek/ims/ImsService;->mMtkPendingMT:[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 668
    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Lcom/mediatek/ims/ImsService;->mPendingMTCallId:[Ljava/lang/String;

    .line 669
    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Lcom/mediatek/ims/ImsService;->mPendingMTSeqNum:[Ljava/lang/String;

    .line 670
    new-array v4, v3, [Z

    iput-object v4, p0, Lcom/mediatek/ims/ImsService;->mIsPendingMTTerminated:[Z

    .line 671
    new-array v4, v3, [Landroid/telephony/ims/ImsCallProfile;

    iput-object v4, p0, Lcom/mediatek/ims/ImsService;->mImsCallProfile:[Landroid/telephony/ims/ImsCallProfile;

    .line 672
    new-array v4, v3, [Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;

    iput-object v4, p0, Lcom/mediatek/ims/ImsService;->mMultiEndpoints:[Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;

    .line 673
    new-array v4, v3, [Z

    iput-object v4, p0, Lcom/mediatek/ims/ImsService;->mIsMTredirect:[Z

    .line 674
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/mediatek/ims/ImsService;->mWfcPdnState:[I

    .line 675
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/mediatek/ims/ImsService;->mWfcRegErrorCode:[I

    .line 676
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/mediatek/ims/ImsService;->mWfcHandoverToLteState:[I

    .line 677
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/mediatek/ims/ImsService;->mImsPdnRat:[I

    .line 678
    new-array v3, v3, [I

    iput-object v3, p0, Lcom/mediatek/ims/ImsService;->mRcsState:[I

    .line 680
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "MtkSSExt"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 681
    .local v3, "ssHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 682
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/ims/ImsService;->mSslooper:Landroid/os/Looper;

    .line 684
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget v7, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    if-ge v4, v7, :cond_8

    .line 685
    iget-object v7, p0, Lcom/mediatek/ims/ImsService;->mListener:Ljava/util/ArrayList;

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    iget-object v7, p0, Lcom/mediatek/ims/ImsService;->mMtkListener:Ljava/util/ArrayList;

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    iget-object v7, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    const/4 v8, 0x3

    aput v8, v7, v4

    .line 688
    iget-object v7, p0, Lcom/mediatek/ims/ImsService;->mImsExtInfo:[I

    aput v1, v7, v4

    .line 689
    iget-object v7, p0, Lcom/mediatek/ims/ImsService;->mServiceId:[I

    add-int/lit8 v8, v4, 0x1

    aput v8, v7, v4

    .line 690
    iget-object v7, p0, Lcom/mediatek/ims/ImsService;->mImsState:[I

    aput v1, v7, v4

    .line 691
    iget-object v7, p0, Lcom/mediatek/ims/ImsService;->mExpectedImsState:[I

    aput v1, v7, v4

    .line 692
    iget-object v7, p0, Lcom/mediatek/ims/ImsService;->mRegErrorCode:[I

    aput v1, v7, v4

    .line 693
    iget-object v7, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    aput v6, v7, v4

    .line 694
    iget-object v7, p0, Lcom/mediatek/ims/ImsService;->mWfcPdnState:[I

    aput v1, v7, v4

    .line 695
    iget-object v7, p0, Lcom/mediatek/ims/ImsService;->mWfcRegErrorCode:[I

    aput v1, v7, v4

    .line 696
    iget-object v7, p0, Lcom/mediatek/ims/ImsService;->mImsEcbm:[Lcom/mediatek/ims/ImsEcbmProxy;

    new-instance v8, Lcom/mediatek/ims/ImsEcbmProxy;

    iget-object v9, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v10, v10, v4

    invoke-direct {v8, v9, v10, v4}, Lcom/mediatek/ims/ImsEcbmProxy;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V

    aput-object v8, v7, v4

    .line 697
    iget-object v7, p0, Lcom/mediatek/ims/ImsService;->mImsConfigManager:Lcom/mediatek/ims/ImsConfigManager;

    invoke-virtual {v7, v4, v0}, Lcom/mediatek/ims/ImsConfigManager;->init(I[Lcom/mediatek/ims/ril/ImsCommandsInterface;)V

    .line 698
    iget-object v7, p0, Lcom/mediatek/ims/ImsService;->mIsImsEccSupported:[I

    aput v1, v7, v4

    .line 699
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 700
    sget-object v7, Lcom/mediatek/ims/ImsService;->sMtkSSExt:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/mediatek/ims/MtkSuppServExt;

    iget-object v10, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/mediatek/ims/ImsService;->mSslooper:Landroid/os/Looper;

    invoke-direct {v9, v10, v4, p0, v11}, Lcom/mediatek/ims/MtkSuppServExt;-><init>(Landroid/content/Context;ILcom/mediatek/ims/ImsService;Landroid/os/Looper;)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    :cond_7
    iget-object v7, p0, Lcom/mediatek/ims/ImsService;->mImsEvtPkgAdapter:[Lcom/mediatek/ims/ImsEventPackageAdapter;

    new-instance v8, Lcom/mediatek/ims/ImsEventPackageAdapter;

    iget-object v9, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v10, v10, v4

    iget-object v11, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v11, v11, v4

    invoke-direct {v8, v9, v10, v11, v4}, Lcom/mediatek/ims/ImsEventPackageAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V

    aput-object v8, v7, v4

    .line 706
    iget-object v7, p0, Lcom/mediatek/ims/ImsService;->mWaitSubInfoChange:[Z

    aput-boolean v1, v7, v4

    .line 707
    iget-object v7, p0, Lcom/mediatek/ims/ImsService;->mVolteEnable:[Z

    aput-boolean v1, v7, v4

    .line 709
    iget-object v7, p0, Lcom/mediatek/ims/ImsService;->mIsPendingMTTerminated:[Z

    aput-boolean v1, v7, v4

    .line 710
    iget-object v7, p0, Lcom/mediatek/ims/ImsService;->mIsMTredirect:[Z

    aput-boolean v1, v7, v4

    .line 711
    iget-object v7, p0, Lcom/mediatek/ims/ImsService;->mWfcHandoverToLteState:[I

    aput v6, v7, v4

    .line 712
    iget-object v7, p0, Lcom/mediatek/ims/ImsService;->mImsPdnRat:[I

    aput v5, v7, v4

    .line 713
    iget-object v7, p0, Lcom/mediatek/ims/ImsService;->mRcsState:[I

    aput v1, v7, v4

    .line 684
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 718
    .end local v4    # "i":I
    :cond_8
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v0

    const/16 v1, 0x15

    if-nez v0, :cond_9

    .line 719
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result v0

    .line 720
    .local v0, "mainPhoneId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMainCapabilityPhoneId: mainPhoneId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 723
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, v0

    .line 724
    invoke-virtual {v5, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 723
    invoke-interface {v4, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setImsRegistrationReport(Landroid/os/Message;)V

    .line 725
    .end local v0    # "mainPhoneId":I
    goto :goto_4

    .line 726
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget v4, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    if-ge v0, v4, :cond_a

    .line 729
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, v0

    .line 730
    invoke-virtual {v5, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 729
    invoke-interface {v4, v5}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setImsRegistrationReport(Landroid/os/Message;)V

    .line 726
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 736
    .end local v0    # "i":I
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/OemPluginFactory;

    .line 737
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeExtensionPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ExtensionPluginFactory;

    .line 740
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    if-nez v0, :cond_b

    .line 741
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    .line 742
    invoke-interface {v0, v1}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsManagerPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    .line 744
    :cond_b
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    if-eqz v0, :cond_c

    .line 746
    invoke-interface {v0}, Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;->isWfcSupport()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 747
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->startWfoService()V

    goto :goto_5

    .line 751
    :cond_c
    const-string v0, "ImsManagerOemPlugin is null"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 752
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->startWfoService()V

    .line 755
    :cond_d
    :goto_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    iget v1, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    if-ge v0, v1, :cond_e

    .line 756
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v1, v1, v0

    const/16 v4, 0x21

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 755
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 759
    .end local v0    # "i":I
    :cond_e
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->getOpImsService()Lcom/mediatek/ims/ext/IImsServiceExt;

    move-result-object v0

    .line 760
    .local v0, "opImsService":Lcom/mediatek/ims/ext/IImsServiceExt;
    if-eqz v0, :cond_f

    .line 761
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    iget v4, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    if-ge v1, v4, :cond_f

    .line 762
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, v1

    const/16 v6, 0x27

    .line 763
    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 762
    invoke-interface {v0, v1, v4, v5}, Lcom/mediatek/ims/ext/IImsServiceExt;->notifyImsServiceEvent(ILandroid/content/Context;Landroid/os/Message;)V

    .line 761
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 766
    .end local v1    # "i":I
    :cond_f
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 183
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/ims/ImsService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I

    .line 183
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->resetXuiAndNotify(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/ims/ImsService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 183
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/ims/ImsService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsService;->setNotificationVirtual(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/ims/ImsService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 183
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mRcsState:[I

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/ims/ImsService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 183
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsExtInfo:[I

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/ims/ImsService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 183
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/ims/ImsService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 183
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mWfcHandoverToLteState:[I

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/ims/ImsService;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 183
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ims/ImsService;->notifyRegistrationStateChange(IIZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/ims/ImsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 183
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegistry:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/mediatek/ims/ImsService;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 183
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ims/ImsService;->notifyRegistrationCapabilityChange(IIZ)V

    return-void
.end method

.method static synthetic access$202(Lcom/mediatek/ims/ImsService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # Z

    .line 183
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsService;->mImsRegistry:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/mediatek/ims/ImsService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 183
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mWfcPdnState:[I

    return-object v0
.end method

.method static synthetic access$2200(Lcom/mediatek/ims/ImsService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I

    .line 183
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->checkVoWiFiDeregisterStatus(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/mediatek/ims/ImsService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I

    .line 183
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->getWfcUserSettings(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 183
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/mediatek/ims/ImsService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 183
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mExpectedImsState:[I

    return-object v0
.end method

.method static synthetic access$2600(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 183
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/mediatek/ims/ImsService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsService;->notifyRegistrationOOSStateChanged(II)V

    return-void
.end method

.method static synthetic access$2802(Lcom/mediatek/wfo/IWifiOffloadService;)Lcom/mediatek/wfo/IWifiOffloadService;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/IWifiOffloadService;

    .line 183
    sput-object p0, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 183
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 183
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/mediatek/ims/ImsService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsService;->disableIms(IZ)V

    return-void
.end method

.method static synthetic access$3100(Lcom/mediatek/ims/ImsService;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 183
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mIsMTredirect:[Z

    return-object v0
.end method

.method static synthetic access$3200(Lcom/mediatek/ims/ImsService;ILandroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/AsyncResult;

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsService;->sendIncomingCallIndication(ILandroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/mediatek/ims/ImsService;ILandroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/AsyncResult;

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsService;->notifyRedirectIncomingCall(ILandroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$3402(Lcom/mediatek/ims/ImsService;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 183
    iput-object p1, p0, Lcom/mediatek/ims/ImsService;->mRedirectIncomingAsyncResult:Landroid/os/AsyncResult;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/mediatek/ims/ImsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I

    .line 183
    iput p1, p0, Lcom/mediatek/ims/ImsService;->mRedirectIncomingSocketId:I

    return p1
.end method

.method static synthetic access$3600(Lcom/mediatek/ims/ImsService;I[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # [Ljava/lang/String;

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsService;->handleImsStkCall(I[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/ext/IImsServiceExt;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 183
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->getOpImsService()Lcom/mediatek/ims/ext/IImsServiceExt;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/mediatek/ims/ImsService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 183
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mRegErrorCode:[I

    return-object v0
.end method

.method static synthetic access$3900(Lcom/mediatek/ims/ImsService;IILjava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 183
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ims/ImsService;->mapToWfcRegErrorCause(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 183
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/mediatek/ims/ImsService;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsService;->triggerImsRegistrationNotify(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/mediatek/ims/ImsService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsService;->notifyRegistrationErrorCode(II)V

    return-void
.end method

.method static synthetic access$4200(Lcom/mediatek/ims/ImsService;ILandroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .param p3, "x3"    # Landroid/os/Bundle;

    .line 183
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ims/ImsService;->notifyIncomingCall(ILandroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/mediatek/ims/ImsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 183
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsService;->mRegisterSubInfoChange:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/mediatek/ims/ImsService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # Z

    .line 183
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsService;->mRegisterSubInfoChange:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/mediatek/ims/ImsService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 183
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mSubInfoReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/mediatek/ims/ImsService;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 183
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mWaitSubInfoChange:[Z

    return-object v0
.end method

.method static synthetic access$4600(Lcom/mediatek/ims/ImsService;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 183
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mVolteEnable:[Z

    return-object v0
.end method

.method static synthetic access$4700(Lcom/mediatek/ims/ImsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 183
    iget v0, p0, Lcom/mediatek/ims/ImsService;->mWaitFeatureChange:I

    return v0
.end method

.method static synthetic access$4702(Lcom/mediatek/ims/ImsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I

    .line 183
    iput p1, p0, Lcom/mediatek/ims/ImsService;->mWaitFeatureChange:I

    return p1
.end method

.method static synthetic access$4800(Lcom/mediatek/ims/ImsService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 183
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mFeatureValueReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/mediatek/ims/ImsService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsService;->setEnhanced4gLteModeSetting(IZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/ims/ImsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 183
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->bindAndRegisterMWIService()V

    return-void
.end method

.method static synthetic access$5000()Z
    .locals 1

    .line 183
    sget-boolean v0, Lcom/mediatek/ims/ImsService;->SENLOG:Z

    return v0
.end method

.method static synthetic access$5100(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/internal/ImsXuiManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # Lcom/mediatek/ims/internal/ImsXuiManager;
    .param p2, "x2"    # I

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsService;->notifyRegistrationAssociatedUriChange(Lcom/mediatek/ims/internal/ImsXuiManager;I)V

    return-void
.end method

.method static synthetic access$5200(Lcom/mediatek/ims/ImsService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 183
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mIsImsEccSupported:[I

    return-object v0
.end method

.method static synthetic access$5300(Lcom/mediatek/ims/ImsService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 183
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mListener:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/mediatek/ims/ImsService;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 183
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mPendingMTCallId:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 183
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mMtkPendingMT:[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/mediatek/ims/ImsService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 183
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mPendingMtkImsCallSessionProxy:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/mediatek/ims/ImsService;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 183
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mIsPendingMTTerminated:[Z

    return-object v0
.end method

.method static synthetic access$5800(Lcom/mediatek/ims/ImsService;)[Landroid/telephony/ims/ImsCallProfile;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 183
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsCallProfile:[Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method static synthetic access$5900()Ljava/util/HashMap;
    .locals 1

    .line 183
    sget-object v0, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/ims/ImsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 183
    iget v0, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    return v0
.end method

.method static synthetic access$6000(Lcom/mediatek/ims/ImsService;Landroid/os/AsyncResult;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # Landroid/os/AsyncResult;
    .param p2, "x2"    # I

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsService;->handleNewCdmaSms(Landroid/os/AsyncResult;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6100(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ImsRegInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 183
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegInd:[Lcom/mediatek/ims/ImsRegInfo;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/ImsRegInfo;Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # Lcom/mediatek/ims/ImsRegInfo;
    .param p2, "x2"    # Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;
    .param p3, "x3"    # I

    .line 183
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ims/ImsService;->notifyImsRegInd(Lcom/mediatek/ims/ImsRegInfo;Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;I)V

    return-void
.end method

.method static synthetic access$6300(Lcom/mediatek/ims/ImsService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsService;->updateImsRegistrationRat(II)V

    return-void
.end method

.method static synthetic access$6400(Lcom/mediatek/ims/ImsService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I

    .line 183
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->checkRttCallType(I)V

    return-void
.end method

.method static synthetic access$6500(Lcom/mediatek/ims/ImsService;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsService;->getBooleanFromCarrierConfig(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/ims/ImsService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 183
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsState:[I

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 183
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 183
    invoke-static {p0}, Lcom/mediatek/ims/ImsService;->isValidPhoneId(I)Z

    move-result v0

    return v0
.end method

.method private bindAndRegisterMWIService()V
    .locals 0

    .line 1982
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsService;->bindAndRegisterWifiOffloadService()V

    .line 1983
    return-void
.end method

.method private checkAndBindWifiOffloadService()V
    .locals 4

    .line 1924
    const-string v0, "mwis"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1926
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 1927
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mDeathRecipient:Lcom/mediatek/ims/ImsService$IWifiOffloadServiceDeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1928
    invoke-static {v0}, Lcom/mediatek/wfo/IMwiService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/wfo/IMwiService;

    move-result-object v1

    .line 1929
    .local v1, "iMwiService":Lcom/mediatek/wfo/IMwiService;
    if-eqz v1, :cond_0

    .line 1930
    invoke-interface {v1}, Lcom/mediatek/wfo/IMwiService;->getWfcHandlerInterface()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v2

    sput-object v2, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    .line 1932
    .end local v1    # "iMwiService":Lcom/mediatek/wfo/IMwiService;
    :cond_0
    goto :goto_0

    .line 1933
    :cond_1
    const-string v1, "No MwiService exist"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1937
    :goto_0
    goto :goto_1

    .line 1935
    :catch_0
    move-exception v1

    .line 1936
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ImsService"

    const-string v3, "can\'t get MwiService"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1940
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkAndBindWifiOffloadService: sWifiOffloadService = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1942
    return-void
.end method

.method private checkRttCallType(I)V
    .locals 3
    .param p1, "capInfo"    # I

    .line 4526
    and-int/lit8 v0, p1, 0x11

    .line 4527
    .local v0, "imsRttCallType":I
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    .line 4528
    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 4529
    .local v1, "audioManager":Landroid/media/AudioManager;
    if-lez v0, :cond_0

    .line 4530
    const-string v2, "ims_rtt_capability=1"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 4531
    const-string v2, "checkRttCallType: set audio RTT capability 1"

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4533
    :cond_0
    const-string v2, "ims_rtt_capability=0"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 4534
    const-string v2, "checkRttCallType: set audio RTT capability 0"

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 4536
    :goto_0
    return-void
.end method

.method private checkVoWiFiDeregisterStatus(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .line 3225
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mWfcPdnState:[I

    aget v0, v0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsExtInfo:[I

    aget v0, v0, p1

    and-int/lit8 v2, v0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 3228
    const/4 v0, 0x0

    return v0

    .line 3230
    :cond_0
    return v1
.end method

.method private convertCapabilities([I)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .locals 6
    .param p1, "enabledFeatures"    # [I

    .line 3824
    array-length v0, p1

    new-array v0, v0, [Z

    .line 3825
    .local v0, "featuresEnabled":[Z
    const/4 v1, 0x0

    .line 3827
    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-gt v1, v3, :cond_2

    array-length v5, p1

    if-ge v1, v5, :cond_2

    .line 3828
    aget v3, p1, v1

    if-ne v3, v1, :cond_0

    .line 3829
    aput-boolean v4, v0, v1

    goto :goto_1

    .line 3830
    :cond_0
    aget v3, p1, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 3832
    aput-boolean v2, v0, v1

    .line 3827
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3835
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    .line 3836
    .local v1, "capabilities":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    aget-boolean v2, v0, v2

    const/4 v5, 0x2

    if-nez v2, :cond_3

    aget-boolean v2, v0, v5

    if-eqz v2, :cond_4

    .line 3839
    :cond_3
    invoke-virtual {v1, v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 3841
    :cond_4
    aget-boolean v2, v0, v4

    if-nez v2, :cond_5

    const/4 v2, 0x3

    aget-boolean v2, v0, v2

    if-eqz v2, :cond_6

    .line 3844
    :cond_5
    invoke-virtual {v1, v5}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 3846
    :cond_6
    const/4 v2, 0x4

    aget-boolean v4, v0, v2

    if-nez v4, :cond_7

    aget-boolean v3, v0, v3

    if-eqz v3, :cond_8

    .line 3849
    :cond_7
    invoke-virtual {v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 3851
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertCapabilities - capabilities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3852
    return-object v1
.end method

.method private createImsReasonInfo(I)Landroid/telephony/ims/ImsReasonInfo;
    .locals 5
    .param p1, "phoneId"    # I

    .line 2009
    const/4 v0, 0x0

    .line 2010
    .local v0, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mRegErrorCode:[I

    aget v2, v2, p1

    .line 2011
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-direct {v1, v4, v2, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v1

    .line 2012
    return-object v0
.end method

.method private createWifiOffloadListenerProxy()Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;
    .locals 2

    .line 1686
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mProxy:Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;

    if-nez v0, :cond_0

    .line 1687
    const-string v0, "create WifiOffloadListenerProxy"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1688
    new-instance v0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;-><init>(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/ImsService$1;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mProxy:Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;

    .line 1690
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mProxy:Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;

    return-object v0
.end method

.method private disableIms(IZ)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "isNormalDisable"    # Z

    .line 3283
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsState:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 3285
    return-void
.end method

.method private enforceModifyPermission()V
    .locals 3

    .line 3384
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3386
    return-void
.end method

.method private englog(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 3298
    sget-boolean v0, Lcom/mediatek/ims/ImsService;->ENGLOAD:Z

    if-eqz v0, :cond_0

    .line 3299
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3301
    :cond_0
    return-void
.end method

.method private eventToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "eventId"    # I

    .line 2314
    packed-switch p1, :pswitch_data_0

    .line 2390
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN EVENT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2388
    :pswitch_1
    const-string v0, "EVENT_CHECK_VOWIFI_REGISTRATION"

    return-object v0

    .line 2386
    :pswitch_2
    const-string v0, "EVENT_TRIGGER_IMS_REGISTRATION_REPORT"

    return-object v0

    .line 2384
    :pswitch_3
    const-string v0, "EVENT_IMS_REG_FLAG_IND_TIME_OUT"

    return-object v0

    .line 2382
    :pswitch_4
    const-string v0, "EVENT_IMS_REG_FLAG_IND"

    return-object v0

    .line 2380
    :pswitch_5
    const-string v0, "EVENT_CALL_ADDITIONAL_INFO_INDICATION"

    return-object v0

    .line 2376
    :pswitch_6
    const-string v0, "EVENT_VOPS_STATUS_IND"

    return-object v0

    .line 2378
    :pswitch_7
    const-string v0, "EVENT_READY_TO_RECEIVE_PENDING_IND"

    return-object v0

    .line 2374
    :pswitch_8
    const-string v0, "EVENT_IMS_SMS_NEW_CDMA_SMS"

    return-object v0

    .line 2372
    :pswitch_9
    const-string v0, "EVENT_IMS_SMS_NEW_SMS"

    return-object v0

    .line 2370
    :pswitch_a
    const-string v0, "EVENT_IMS_SMS_STATUS_REPORT"

    return-object v0

    .line 2368
    :pswitch_b
    const-string v0, "EVENT_SEND_SMS_DONE"

    return-object v0

    .line 2366
    :pswitch_c
    const-string v0, "EVENT_INIT_CALL_SESSION_PROXY"

    return-object v0

    .line 2364
    :pswitch_d
    const-string v0, "EVENT_START_GBA_SERVICE"

    return-object v0

    .line 2362
    :pswitch_e
    const-string v0, "EVENT_IMS_SUPPORT_ECC_URC"

    return-object v0

    .line 2360
    :pswitch_f
    const-string v0, "EVENT_SELF_IDENTIFY_UPDATE"

    return-object v0

    .line 2358
    :pswitch_10
    const-string v0, "EVENT_RUN_GBA"

    return-object v0

    .line 2356
    :pswitch_11
    const-string v0, "EVENT_IMS_VOLTE_SETTING_URC"

    return-object v0

    .line 2354
    :pswitch_12
    const-string v0, "EVENT_SET_IMS_REGISTRATION_REPORT_DONE"

    return-object v0

    .line 2352
    :pswitch_13
    const-string v0, "EVENT_IMS_RTP_INFO_URC"

    return-object v0

    .line 2350
    :pswitch_14
    const-string v0, "EVENT_RADIO_ON"

    return-object v0

    .line 2348
    :pswitch_15
    const-string v0, "EVENT_RADIO_OFF"

    return-object v0

    .line 2346
    :pswitch_16
    const-string v0, "EVENT_IMS_DEREG_URC"

    return-object v0

    .line 2344
    :pswitch_17
    const-string v0, "EVENT_IMS_DEREG_DONE"

    return-object v0

    .line 2342
    :pswitch_18
    const-string v0, "EVENT_ON_USSI"

    return-object v0

    .line 2340
    :pswitch_19
    const-string v0, "EVENT_SIP_CODE_INDICATION_DEREG"

    return-object v0

    .line 2338
    :pswitch_1a
    const-string v0, "EVENT_SIP_CODE_INDICATION"

    return-object v0

    .line 2336
    :pswitch_1b
    const-string v0, "EVENT_IMS_DISABLING_URC"

    return-object v0

    .line 2334
    :pswitch_1c
    const-string v0, "EVENT_IMS_ENABLED_URC"

    return-object v0

    .line 2332
    :pswitch_1d
    const-string v0, "EVENT_IMS_ENABLING_URC"

    return-object v0

    .line 2330
    :pswitch_1e
    const-string v0, "EVENT_CALL_INFO_INDICATION"

    return-object v0

    .line 2328
    :pswitch_1f
    const-string v0, "EVENT_INCOMING_CALL_INDICATION"

    return-object v0

    .line 2326
    :pswitch_20
    const-string v0, "EVENT_VIRTUAL_SIM_ON"

    return-object v0

    .line 2324
    :pswitch_21
    const-string v0, "EVENT_IMS_DISABLED_URC"

    return-object v0

    .line 2322
    :pswitch_22
    const-string v0, "EVENT_SET_IMS_DISABLE_DONE"

    return-object v0

    .line 2320
    :pswitch_23
    const-string v0, "EVENT_SET_IMS_ENABLED_DONE"

    return-object v0

    .line 2318
    :pswitch_24
    const-string v0, "EVENT_RADIO_NOT_AVAILABLE"

    return-object v0

    .line 2316
    :pswitch_25
    const-string v0, "EVENT_IMS_REGISTRATION_INFO"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getBooleanFromCarrierConfig(ILjava/lang/String;)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;

    .line 4489
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 4491
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 4492
    .local v1, "carrierConfig":Landroid/os/PersistableBundle;
    if-nez v1, :cond_0

    .line 4493
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 4495
    :cond_0
    invoke-virtual {v1, p2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 4496
    .local v2, "result":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBooleanFromCarrierConfig() : key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 4497
    return v2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 458
    sget-object v0, Lcom/mediatek/ims/ImsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 459
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/ImsService;->sInstance:Lcom/mediatek/ims/ImsService;

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    .line 460
    new-instance v1, Lcom/mediatek/ims/ImsService;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/ImsService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mediatek/ims/ImsService;->sInstance:Lcom/mediatek/ims/ImsService;

    .line 461
    const-string v2, "ImsService is created!"

    invoke-direct {v1, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 463
    :cond_0
    sget-object v1, Lcom/mediatek/ims/ImsService;->sInstance:Lcom/mediatek/ims/ImsService;

    monitor-exit v0

    return-object v1

    .line 464
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getOpImsService()Lcom/mediatek/ims/ext/IImsServiceExt;
    .locals 2

    .line 952
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/ext/OpImsServiceCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;->makeImsServiceExt(Landroid/content/Context;)Lcom/mediatek/ims/ext/IImsServiceExt;

    move-result-object v0

    return-object v0
.end method

.method private getWfcUserSettings(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .line 3210
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 3211
    .local v0, "imsMgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 3212
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v1

    return v1

    .line 3214
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Fail to getWfcUserSetting because imsMgr is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3215
    const/4 v1, 0x1

    return v1
.end method

.method private handleImsStkCall(I[Ljava/lang/String;)V
    .locals 17
    .param p1, "phoneId"    # I
    .param p2, "incomingCallInfo"    # [Ljava/lang/String;

    .line 3249
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    const/4 v12, 0x1

    aget-object v13, v11, v12

    .line 3250
    .local v13, "callId":Ljava/lang/String;
    const/4 v0, 0x7

    aget-object v14, v11, v0

    .line 3252
    .local v14, "callNum":Ljava/lang/String;
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    move-object v15, v0

    .line 3253
    .local v15, "imsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    if-eqz v14, :cond_0

    const-string v0, ""

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallIndication new call profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {v9, v14}, Lcom/mediatek/ims/ImsService;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3255
    const-string v0, "oi"

    invoke-virtual {v15, v0, v14}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 3256
    const/4 v0, 0x2

    const-string v1, "oir"

    invoke-virtual {v15, v1, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 3259
    :cond_0
    new-instance v16, Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v1, v9, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v0, v9, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v0, v10

    iget-object v0, v9, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v6, v0, v10

    move-object/from16 v0, v16

    move-object v2, v15

    move-object/from16 v4, p0

    move-object v7, v13

    move/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/mediatek/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V

    .line 3264
    .local v0, "imsCallSessionProxy":Lcom/mediatek/ims/ImsCallSessionProxy;
    array-length v1, v11

    invoke-static {v11, v12, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 3265
    .local v1, "callInfo":[Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v2

    .line 3266
    .local v2, "imsCallTracker":Lcom/mediatek/ims/ImsServiceCallTracker;
    nop

    .line 3267
    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    .line 3266
    invoke-virtual {v2, v1, v0, v3}, Lcom/mediatek/ims/ImsServiceCallTracker;->processCallInfoIndication([Ljava/lang/String;Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsCallProfile;)V

    .line 3269
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 3270
    .local v3, "extras":Landroid/os/Bundle;
    const-string v4, "android:imsCallID"

    invoke-virtual {v3, v4, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3271
    const/4 v4, 0x6

    aget-object v4, v11, v4

    const-string v5, "android:imsDialString"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3272
    const-string v4, "android:imsServiceId"

    invoke-virtual {v3, v4, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3273
    const-string v4, "android:isUnknown"

    invoke-virtual {v3, v4, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3274
    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v4

    invoke-virtual {v9, v10, v4, v3}, Lcom/mediatek/ims/ImsService;->notifyIncomingCallSession(ILcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V

    .line 3275
    return-void
.end method

.method private handleNewCdmaSms(Landroid/os/AsyncResult;I)Z
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "socketId"    # I

    .line 3612
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception processing incoming SMS: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3614
    return v1

    .line 3616
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/SmsMessage;

    .line 3617
    .local v0, "sms":Landroid/telephony/SmsMessage;
    if-nez v0, :cond_1

    .line 3618
    const-string v2, "SmsMessage is null"

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3619
    return v1

    .line 3621
    :cond_1
    iget-object v2, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    .line 3622
    .local v2, "smsb":Lcom/android/internal/telephony/SmsMessageBase;
    if-nez v2, :cond_2

    .line 3623
    const-string v3, "SmsMessageBase is null"

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3624
    return v1

    .line 3626
    :cond_2
    sget-object v3, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Ljava/util/HashMap;

    if-nez v3, :cond_3

    .line 3627
    const-string v3, "mMmTelFeatureCallback is null"

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3628
    return v1

    .line 3630
    :cond_3
    const/4 v3, 0x0

    .line 3631
    .local v3, "statusReport":Z
    move-object v4, v2

    check-cast v4, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 3633
    .local v4, "cdmaSms":Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v5

    if-nez v5, :cond_5

    .line 3636
    :try_start_0
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 3637
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->isStatusReportMessage()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_4

    .line 3638
    const/4 v1, 0x1

    move v3, v1

    .line 3643
    :cond_4
    goto :goto_0

    .line 3640
    :catch_0
    move-exception v5

    .line 3641
    .local v5, "ex":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception dispatching message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3642
    return v1

    .line 3645
    .end local v5    # "ex":Ljava/lang/RuntimeException;
    :cond_5
    :goto_0
    const-string v1, "3gpp2"

    if-eqz v3, :cond_6

    .line 3646
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_IMS_SMS_STATUS_REPORT, socketId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3647
    sget-object v5, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    .line 3648
    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v6

    .line 3647
    invoke-interface {v5, v6, v1}, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;->newStatusReportInd([BLjava/lang/String;)V

    goto :goto_1

    .line 3651
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_IMS_SMS_NEW_SMS, socketId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3652
    sget-object v5, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    .line 3653
    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v6

    .line 3652
    invoke-interface {v5, v6, v1}, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;->newImsSmsInd([BLjava/lang/String;)V

    .line 3656
    :goto_1
    const/4 v1, 0x1

    return v1
.end method

.method private handleWifiPdnOOS(II)V
    .locals 4
    .param p1, "simIdx"    # I
    .param p2, "oosState"    # I

    .line 1770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleWifiPdnOOS oosState= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1771
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    if-lt p1, v0, :cond_1

    .line 1772
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleWifiPdnOOS, error Invalid simIdx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1774
    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 1790
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mTempDisableWFC:[Z

    aput-boolean v1, v0, p1

    .line 1791
    goto :goto_1

    .line 1787
    :pswitch_1
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mTempDisableWFC:[Z

    aput-boolean v0, v2, p1

    .line 1788
    goto :goto_1

    .line 1776
    :pswitch_2
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mTempDisableWFC:[Z

    aput-boolean v1, v2, p1

    .line 1778
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mWfcHandoverToLteState:[I

    aget v2, v2, p1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 1779
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    aput v1, v0, p1

    goto :goto_0

    .line 1782
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    aput v0, v2, p1

    .line 1784
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsExtInfo:[I

    aget v2, v0, p1

    and-int/lit8 v2, v2, -0x11

    aput v2, v0, p1

    .line 1785
    nop

    .line 1795
    :goto_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    aget v0, v0, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/ims/ImsService;->notifyRegistrationStateChange(IIZ)V

    .line 1796
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsExtInfo:[I

    aget v0, v0, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/ims/ImsService;->notifyRegistrationCapabilityChange(IIZ)V

    .line 1797
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isOp09SimCard(Ljava/lang/String;)Z
    .locals 2
    .param p1, "iccId"    # Ljava/lang/String;

    .line 4135
    const/4 v0, 0x0

    .line 4136
    .local v0, "isOp09Card":Z
    const-string v1, "898603"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "898611"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4137
    const-string v1, "8985302"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "8985307"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4138
    const-string v1, "8985231"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4139
    :cond_0
    const/4 v0, 0x1

    .line 4141
    :cond_1
    return v0
.end method

.method private static isValidPhoneId(I)Z
    .locals 1
    .param p0, "phoneId"    # I

    .line 4539
    if-ltz p0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$notifyCapabilityChangedEx$3([I[ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 1
    .param p0, "enabledFeatures"    # [I
    .param p1, "disabledFeatures"    # [I
    .param p2, "l"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 2226
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p2, v0, p0, p1}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationFeatureCapabilityChanged(I[I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2230
    goto :goto_0

    .line 2228
    :catch_0
    move-exception v0

    .line 2231
    :goto_0
    return-void
.end method

.method static synthetic lambda$setRcsFeatureCallback$6(Lcom/mediatek/ims/rcs/UaServiceManager;)Z
    .locals 1
    .param p0, "mgr"    # Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 3768
    invoke-virtual {p0}, Lcom/mediatek/ims/rcs/UaServiceManager;->imsRegistered()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$updateImsRegstrationEx$2(Landroid/telephony/ims/ImsReasonInfo;Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 1
    .param p0, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p1, "l"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 2096
    :try_start_0
    invoke-interface {p1, p0}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationDisconnected(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2099
    goto :goto_0

    .line 2097
    :catch_0
    move-exception v0

    .line 2100
    :goto_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 3293
    const-string v0, "ImsService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3295
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 3308
    const-string v0, "ImsService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3309
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 3312
    const-string v0, "ImsService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3313
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 3304
    const-string v0, "ImsService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3305
    return-void
.end method

.method private mapSipErrorCode(I)I
    .locals 5
    .param p1, "code"    # I

    .line 4157
    const/16 v0, 0x3e8

    const/16 v1, 0x12c

    if-ge p1, v1, :cond_0

    .line 4158
    return v0

    .line 4159
    :cond_0
    const/16 v1, 0x190

    if-ge p1, v1, :cond_1

    .line 4161
    const/16 v0, 0x141

    return v0

    .line 4162
    :cond_1
    const/16 v1, 0x1f4

    const/16 v2, 0x152

    const/16 v3, 0x155

    const/16 v4, 0x154

    if-ge p1, v1, :cond_2

    .line 4164
    sparse-switch p1, :sswitch_data_0

    .line 4191
    const/16 v0, 0x156

    return v0

    .line 4189
    :sswitch_0
    const/16 v0, 0x153

    return v0

    .line 4187
    :sswitch_1
    return v2

    .line 4185
    :sswitch_2
    const/16 v0, 0x151

    return v0

    .line 4183
    :sswitch_3
    const/16 v0, 0x150

    return v0

    .line 4181
    :sswitch_4
    const/16 v0, 0x14e

    return v0

    .line 4177
    :sswitch_5
    return v3

    .line 4175
    :sswitch_6
    const/16 v0, 0x14f

    return v0

    .line 4173
    :sswitch_7
    return v4

    .line 4170
    :sswitch_8
    const/16 v0, 0x14d

    return v0

    .line 4168
    :sswitch_9
    const/16 v0, 0x14c

    return v0

    .line 4166
    :sswitch_a
    const/16 v0, 0x14b

    return v0

    .line 4193
    :cond_2
    const/16 v1, 0x258

    if-ge p1, v1, :cond_3

    .line 4195
    packed-switch p1, :pswitch_data_0

    .line 4203
    :pswitch_0
    const/16 v0, 0x162

    return v0

    .line 4201
    :pswitch_1
    const/16 v0, 0x161

    return v0

    .line 4199
    :pswitch_2
    const/16 v0, 0x160

    return v0

    .line 4197
    :pswitch_3
    const/16 v0, 0x15f

    return v0

    .line 4205
    :cond_3
    const/16 v1, 0x2bc

    if-ge p1, v1, :cond_4

    .line 4207
    packed-switch p1, :pswitch_data_1

    .line 4217
    :pswitch_4
    const/16 v0, 0x16a

    return v0

    .line 4213
    :pswitch_5
    return v4

    .line 4215
    :pswitch_6
    return v3

    .line 4211
    :pswitch_7
    const/16 v0, 0x169

    return v0

    .line 4209
    :pswitch_8
    return v2

    .line 4220
    :cond_4
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_a
        0x193 -> :sswitch_9
        0x194 -> :sswitch_8
        0x196 -> :sswitch_7
        0x198 -> :sswitch_6
        0x19a -> :sswitch_5
        0x19f -> :sswitch_4
        0x1a0 -> :sswitch_4
        0x1a4 -> :sswitch_4
        0x1e0 -> :sswitch_3
        0x1e4 -> :sswitch_2
        0x1e6 -> :sswitch_1
        0x1e7 -> :sswitch_0
        0x1e8 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1f5
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x258
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private mapToWfcRegErrorCause(IILjava/lang/String;)I
    .locals 3
    .param p1, "sipErrorCode"    # I
    .param p2, "sipMethod"    # I
    .param p3, "sipReasonText"    # Ljava/lang/String;

    .line 1703
    const/16 v0, 0x3e7

    .line 1705
    .local v0, "wfcRegErrorCode":I
    const-string v1, "SHOW_WIFI_REG09"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 1743
    :sswitch_0
    const/16 v0, 0x645

    .line 1744
    goto :goto_0

    .line 1740
    :sswitch_1
    const/16 v0, 0x644

    .line 1741
    goto :goto_0

    .line 1737
    :sswitch_2
    const/16 v0, 0x643

    .line 1738
    goto :goto_0

    .line 1733
    :sswitch_3
    const/16 v0, 0x642

    .line 1734
    goto :goto_0

    .line 1730
    :sswitch_4
    const/16 v0, 0x641

    .line 1731
    goto :goto_0

    .line 1757
    :sswitch_5
    if-nez p2, :cond_3

    const-string v1, "Not Acceptable"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1758
    const/16 v0, 0x6a7

    goto :goto_0

    .line 1749
    :sswitch_6
    if-nez p2, :cond_3

    const-string v1, "Emergency Calls over Wi-Fi is not allowed in this location"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1753
    const/16 v0, 0x6a6

    goto :goto_0

    .line 1746
    :sswitch_7
    const/16 v0, 0x57e

    .line 1747
    goto :goto_0

    .line 1707
    :sswitch_8
    const/16 v2, 0x9

    if-ne p2, v2, :cond_0

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1709
    const/16 v0, 0x6a5

    goto :goto_0

    .line 1710
    :cond_0
    if-nez p2, :cond_1

    const-string v1, "WiFi Calling Not Allowed from this Region"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1713
    const/16 v0, 0x646

    goto :goto_0

    .line 1715
    :cond_1
    if-nez p2, :cond_2

    .line 1717
    const/16 v0, 0x640

    goto :goto_0

    .line 1720
    :cond_2
    const/16 v0, 0x643

    .line 1722
    goto :goto_0

    .line 1724
    :sswitch_9
    const/16 v2, 0xa

    if-ne p2, v2, :cond_3

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1726
    const/16 v0, 0x6a5

    .line 1764
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mapToWfcRegErrorCause(), sipErrorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sipMethod:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sipReasonText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " wfcRegErrorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1766
    return v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_9
        0x193 -> :sswitch_8
        0x1f4 -> :sswitch_7
        0x1f7 -> :sswitch_6
        0x25e -> :sswitch_5
        0x9d6d -> :sswitch_4
        0x9d6e -> :sswitch_3
        0x9d6f -> :sswitch_2
        0x9d70 -> :sswitch_1
        0x9d71 -> :sswitch_0
    .end sparse-switch
.end method

.method private notifyCapabilityChanged(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "c"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 3856
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mCapLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 3857
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3858
    sget-object v1, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    invoke-interface {v1, p2}, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;->notifyCapabilitiesChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    goto :goto_0

    .line 3860
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is not IMtkMmTelFeatureCallback for slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3862
    :goto_0
    monitor-exit v0

    .line 3863
    return-void

    .line 3862
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyCapabilityChangedEx(I[I[I)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "enabledFeatures"    # [I
    .param p3, "disabledFeatures"    # [I

    .line 2220
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 2222
    .local v0, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    if-eqz v0, :cond_0

    .line 2223
    monitor-enter v0

    .line 2224
    :try_start_0
    new-instance v1, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda9;

    invoke-direct {v1, p2, p3}, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda9;-><init>([I[I)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    .line 2232
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2234
    :cond_0
    :goto_0
    return-void
.end method

.method private notifyImsRegInd(Lcom/mediatek/ims/ImsRegInfo;Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;I)V
    .locals 5
    .param p1, "info"    # Lcom/mediatek/ims/ImsRegInfo;
    .param p2, "listener"    # Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;
    .param p3, "phoneId"    # I

    .line 4239
    if-eqz p1, :cond_2

    iget v0, p1, Lcom/mediatek/ims/ImsRegInfo;->mReportType:I

    if-ltz v0, :cond_2

    .line 4240
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    iget v1, p1, Lcom/mediatek/ims/ImsRegInfo;->mErrorCode:I

    .line 4241
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->mapSipErrorCode(I)I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/mediatek/ims/ImsRegInfo;->mErrorMsg:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 4244
    .local v0, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v1, p1, Lcom/mediatek/ims/ImsRegInfo;->mUri:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ImsService;->convertUri(Ljava/lang/String;)[Landroid/net/Uri;

    move-result-object v1

    .line 4246
    .local v1, "uris":[Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notify "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/mediatek/ims/ImsRegInfo;->mReportType:I

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsService;->registrationStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ImsService"

    iget-object v4, p1, Lcom/mediatek/ims/ImsRegInfo;->mUri:Ljava/lang/String;

    .line 4247
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expireTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/mediatek/ims/ImsRegInfo;->mExpireTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " imsReasonInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4246
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->englog(Ljava/lang/String;)V

    .line 4250
    if-nez p2, :cond_1

    .line 4252
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mMtkListener:Ljava/util/ArrayList;

    .line 4253
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 4254
    .local v2, "mtklisteners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;>;"
    if-eqz v2, :cond_0

    .line 4255
    monitor-enter v2

    .line 4256
    :try_start_0
    new-instance v3, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda2;-><init>(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/ImsRegInfo;[Landroid/net/Uri;Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    .line 4264
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4266
    .end local v2    # "mtklisteners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;>;"
    :cond_0
    :goto_0
    goto :goto_1

    .line 4268
    :cond_1
    :try_start_1
    iget v2, p1, Lcom/mediatek/ims/ImsRegInfo;->mReportType:I

    iget v3, p1, Lcom/mediatek/ims/ImsRegInfo;->mExpireTime:I

    invoke-interface {p2, v2, v1, v3, v0}, Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;->onRegistrationImsStateChanged(I[Landroid/net/Uri;ILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4272
    goto :goto_1

    .line 4270
    :catch_0
    move-exception v2

    .line 4271
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "onRegistrationImsStateChanged failed!!"

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 4274
    .end local v0    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    .end local v1    # "uris":[Landroid/net/Uri;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_2

    .line 4275
    :cond_2
    const-string v0, "Do not get +IMSREGURI yet."

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 4277
    :goto_2
    return-void
.end method

.method private notifyIncomingCall(ILandroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "c"    # Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 3876
    sget-object v0, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3877
    sget-object v0, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    invoke-interface {v0, p2, p3}, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;->notifyIncomingCall(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V

    .line 3879
    :cond_0
    return-void
.end method

.method private notifyRedirectIncomingCall(ILandroid/os/AsyncResult;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 4281
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mMtkListener:Ljava/util/ArrayList;

    .line 4282
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 4283
    .local v0, "mtklisteners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;>;"
    if-eqz v0, :cond_0

    .line 4284
    monitor-enter v0

    .line 4285
    :try_start_0
    new-instance v1, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda1;-><init>(Lcom/mediatek/ims/ImsService;ILandroid/os/AsyncResult;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    .line 4292
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4294
    :cond_0
    :goto_0
    return-void
.end method

.method private notifyRegistrationAssociatedUriChange(Lcom/mediatek/ims/internal/ImsXuiManager;I)V
    .locals 3
    .param p1, "xuiManager"    # Lcom/mediatek/ims/internal/ImsXuiManager;
    .param p2, "phoneId"    # I

    .line 2042
    invoke-virtual {p1, p2}, Lcom/mediatek/ims/internal/ImsXuiManager;->getSelfIdentifyUri(I)[Landroid/net/Uri;

    move-result-object v0

    .line 2043
    .local v0, "uris":[Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyRegistrationAssociatedUriChange phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2044
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uris="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ImsService"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->englog(Ljava/lang/String;)V

    .line 2045
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 2046
    .local v1, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 2047
    monitor-enter v1

    .line 2048
    :try_start_0
    new-instance v2, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, v0}, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda11;-><init>(Lcom/mediatek/ims/ImsService;[Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    .line 2055
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2057
    :cond_0
    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/mediatek/ims/ImsService;->updateAssociatedUriChanged(I[Landroid/net/Uri;)V

    .line 2058
    return-void
.end method

.method private notifyRegistrationCapabilityChange(IIZ)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "imsExtInfo"    # I
    .param p3, "staticReg"    # Z

    .line 2245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyRegistrationCapabilityChange imsExtInfo= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", staticReg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2248
    const/4 v0, 0x6

    new-array v1, v0, [I

    .line 2249
    .local v1, "enabledFeatures":[I
    new-array v0, v0, [I

    .line 2250
    .local v0, "disabledFeatures":[I
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/mediatek/ims/ImsService;->updateCapabilityChange(II[I[I)V

    .line 2253
    invoke-direct {p0, p1, v1, v0}, Lcom/mediatek/ims/ImsService;->updateUtCapabilityChange(I[I[I)V

    .line 2256
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->convertCapabilities([I)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v2

    .line 2257
    .local v2, "capabilities":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    and-int/lit8 v3, p2, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 2258
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 2261
    :cond_0
    invoke-static {p1}, Lcom/mediatek/ims/ImsCommonUtil;->isDefaultRcsPhoneId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2262
    invoke-static {}, Lcom/mediatek/ims/rcs/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v3

    .line 2263
    .local v3, "uaSrvMgr":Lcom/mediatek/ims/rcs/UaServiceManager;
    if-eqz v3, :cond_1

    .line 2264
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/rcs/UaServiceManager;->setCcNotified(Z)V

    .line 2265
    invoke-virtual {v3}, Lcom/mediatek/ims/rcs/UaServiceManager;->imsRegistered()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/mediatek/ims/rcs/UaServiceManager;->getCapabilities()Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2266
    const-string v4, "+g.gsma.callcomposer"

    .line 2267
    .local v4, "capCallComposer":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/mediatek/ims/rcs/UaServiceManager;->getCapabilities()Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v5

    const-string v6, "+g.gsma.callcomposer"

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/rcsua/Capability;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2268
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/mediatek/ims/rcs/UaServiceManager;->setCcNotified(Z)V

    .line 2269
    const/16 v5, 0x10

    invoke-virtual {v2, v5}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 2275
    .end local v3    # "uaSrvMgr":Lcom/mediatek/ims/rcs/UaServiceManager;
    .end local v4    # "capCallComposer":Ljava/lang/String;
    :cond_1
    if-nez p3, :cond_2

    .line 2276
    invoke-direct {p0, p1, v2}, Lcom/mediatek/ims/ImsService;->notifyCapabilityChanged(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    .line 2280
    :cond_2
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ImsService;->checkRttCallType(I)V

    .line 2282
    invoke-direct {p0, p1, v1, v0}, Lcom/mediatek/ims/ImsService;->notifyCapabilityChangedEx(I[I[I)V

    .line 2283
    return-void
.end method

.method private notifyRegistrationErrorCode(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "errorCode"    # I

    .line 3717
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mMtkListener:Ljava/util/ArrayList;

    .line 3718
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 3719
    .local v0, "mtklisteners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;>;"
    if-nez v0, :cond_0

    .line 3720
    const-string v1, "notifyRegistrationErrorCode: listeners is null"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3721
    return-void

    .line 3723
    :cond_0
    monitor-enter v0

    .line 3724
    :try_start_0
    new-instance v1, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2}, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda3;-><init>(Lcom/mediatek/ims/ImsService;I)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    .line 3732
    monitor-exit v0

    .line 3733
    return-void

    .line 3732
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyRegistrationOOSStateChanged(II)V
    .locals 6
    .param p1, "simId"    # I
    .param p2, "oosState"    # I

    .line 3679
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsService;->handleWifiPdnOOS(II)V

    .line 3681
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 3682
    .local v0, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    if-nez v0, :cond_0

    .line 3683
    const-string v1, "notifyRegistrationOOSStateChanged: listeners is null"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3684
    return-void

    .line 3686
    :cond_0
    monitor-enter v0

    .line 3687
    const/4 v1, 0x5

    .line 3688
    .local v1, "resultEvent":I
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 3698
    :pswitch_0
    const/4 v1, 0x7

    goto :goto_0

    .line 3694
    :pswitch_1
    const/4 v1, 0x5

    .line 3696
    goto :goto_0

    .line 3690
    :pswitch_2
    const/4 v1, 0x6

    .line 3692
    nop

    .line 3703
    :goto_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyRegistrationOOSStateChanged listener size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3704
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/IImsRegistrationListener;

    .line 3705
    .local v3, "l":Lcom/android/ims/internal/IImsRegistrationListener;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call registrationServiceCapabilityChanged with event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3706
    const/4 v4, 0x1

    invoke-interface {v3, v4, v1}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationServiceCapabilityChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3708
    .end local v3    # "l":Lcom/android/ims/internal/IImsRegistrationListener;
    goto :goto_1

    .line 3711
    :cond_1
    goto :goto_2

    .line 3712
    .end local v1    # "resultEvent":I
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 3709
    .restart local v1    # "resultEvent":I
    :catch_0
    move-exception v2

    .line 3710
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3712
    .end local v1    # "resultEvent":I
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    monitor-exit v0

    .line 3713
    return-void

    .line 3712
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyRegistrationStateChange(IIZ)V
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "imsRegInfo"    # I
    .param p3, "staticReg"    # Z

    .line 2115
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 2116
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyRegistrationStateChange imsRegInfo= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", staticReg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRAN[phoneId]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2120
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2121
    .local v1, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    if-nez p2, :cond_2

    .line 2123
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ImsService;->getRadioTech(I)I

    move-result v2

    .line 2124
    .local v2, "radioTech":I
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/mediatek/ims/ImsService;->setWfcRegErrorCodeWithPdn(II)V

    .line 2125
    const/4 v4, 0x0

    if-nez p3, :cond_0

    .line 2126
    const/4 v5, 0x2

    .line 2128
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ImsService;->convertImsRegistrationTech(I)I

    move-result v6

    .line 2126
    invoke-virtual {p0, p1, v5, v6, v4}, Lcom/mediatek/ims/ImsService;->updateImsRegstration(IIILandroid/telephony/ims/ImsReasonInfo;)V

    .line 2131
    :cond_0
    nop

    .line 2132
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ImsService;->convertImsRegistrationTech(I)I

    move-result v5

    .line 2131
    invoke-direct {p0, p1, p2, v5, v4}, Lcom/mediatek/ims/ImsService;->updateImsRegstrationEx(IIILandroid/telephony/ims/ImsReasonInfo;)V

    .line 2134
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->getOpImsService()Lcom/mediatek/ims/ext/IImsServiceExt;

    move-result-object v4

    .line 2135
    .local v4, "opImsService":Lcom/mediatek/ims/ext/IImsServiceExt;
    if-eqz v4, :cond_1

    .line 2136
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    aget v5, v5, p1

    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v6, v6, p1

    iget-object v7, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v7, v7, p1

    invoke-interface {v4, v5, v6, v7}, Lcom/mediatek/ims/ext/IImsServiceExt;->notifyRegistrationStateChange(ILandroid/os/Handler;Ljava/lang/Object;)V

    .line 2139
    :cond_1
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mRegErrorCode:[I

    aput v3, v5, p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "radioTech":I
    .end local v4    # "opImsService":Lcom/mediatek/ims/ext/IImsServiceExt;
    goto :goto_0

    .line 2140
    :catch_0
    move-exception v2

    .line 2141
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "IMS: notifyStateChange fail on access WifiOffloadService"

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 2142
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 2144
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mRegErrorCode:[I

    aget v2, v2, p1

    invoke-virtual {p0, p1, v2}, Lcom/mediatek/ims/ImsService;->setWfcRegErrorCodeWithPdn(II)V

    .line 2146
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->createImsReasonInfo(I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 2148
    .local v2, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    const/4 v3, 0x3

    const/4 v4, -0x1

    invoke-virtual {p0, p1, v3, v4, v2}, Lcom/mediatek/ims/ImsService;->updateImsRegstration(IIILandroid/telephony/ims/ImsReasonInfo;)V

    .line 2152
    invoke-direct {p0, p1, p2, v4, v2}, Lcom/mediatek/ims/ImsService;->updateImsRegstrationEx(IIILandroid/telephony/ims/ImsReasonInfo;)V

    .line 2155
    .end local v1    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    .end local v2    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :goto_1
    monitor-exit v0

    .line 2156
    return-void

    .line 2155
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private registrationStateToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    .line 4225
    packed-switch p1, :pswitch_data_0

    .line 4233
    const-string v0, ""

    return-object v0

    .line 4231
    :pswitch_0
    const-string v0, "IMS_REGISTER_FAIL"

    return-object v0

    .line 4229
    :pswitch_1
    const-string v0, "IMS_REGISTERED"

    return-object v0

    .line 4227
    :pswitch_2
    const-string v0, "IMS_REGISTERING"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private resetXuiAndNotify(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 3543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetXuiAndNotify() phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3544
    invoke-static {}, Lcom/mediatek/ims/internal/ImsXuiManager;->getInstance()Lcom/mediatek/ims/internal/ImsXuiManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/ims/internal/ImsXuiManager;->setXui(ILjava/lang/String;)V

    .line 3545
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const-string v2, ""

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 3546
    .local v0, "uris":[Landroid/net/Uri;
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 3547
    .local v2, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    if-eqz v2, :cond_0

    .line 3548
    monitor-enter v2

    .line 3549
    :try_start_0
    new-instance v3, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda0;-><init>(Lcom/mediatek/ims/ImsService;[Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    .line 3556
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3558
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/mediatek/ims/ImsService;->updateAssociatedUriChanged(I[Landroid/net/Uri;)V

    .line 3559
    return-void
.end method

.method private sendIncomingCallIndication(ILandroid/os/AsyncResult;)V
    .locals 22
    .param p1, "phoneId"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 3426
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    iget-object v0, v8, Lcom/mediatek/ims/ImsService;->mIsPendingMTTerminated:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v9

    .line 3428
    iget-object v0, v8, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v0, v0, v9

    iget-object v2, v8, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v2, v2, v9

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForCallInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3431
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    aget-object v11, v0, v1

    .line 3432
    .local v11, "callId":Ljava/lang/String;
    iget-object v0, v8, Lcom/mediatek/ims/ImsService;->mPendingMTCallId:[Ljava/lang/String;

    aput-object v11, v0, v9

    .line 3434
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v12, v0, v1

    .line 3435
    .local v12, "dialString":Ljava/lang/String;
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v13, v0, v2

    .line 3436
    .local v13, "callMode":Ljava/lang/String;
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v14, v0, v2

    .line 3437
    .local v14, "seqNum":Ljava/lang/String;
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v15, v0, v2

    .line 3439
    .local v15, "toLineNum":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendIncomingCallIndication() : call_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " dialString = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3440
    invoke-direct {v8, v12}, Lcom/mediatek/ims/ImsService;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " seqNum = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " phoneId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3439
    invoke-direct {v8, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3443
    invoke-static/range {p1 .. p1}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v7

    .line 3445
    .local v7, "imsCallTracker":Lcom/mediatek/ims/ImsServiceCallTracker;
    const/4 v0, 0x1

    .line 3448
    .local v0, "isAllow":Z
    sget-object v2, Lcom/mediatek/ims/ImsConstants;->PROPERTY_TBCW_MODE:Ljava/lang/String;

    sget-object v3, Lcom/mediatek/ims/ImsConstants;->TBCW_DISABLED:Ljava/lang/String;

    invoke-static {v9, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3452
    .local v6, "callWaitingSetting":Ljava/lang/String;
    sget-object v2, Lcom/mediatek/ims/ImsConstants;->TBCW_OFF:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {v7}, Lcom/mediatek/ims/ImsServiceCallTracker;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3454
    const-string v1, "sendIncomingCallIndication() : PROPERTY_TBCW_MODE = TBCW_OFF. Reject the call as UDUB "

    invoke-direct {v8, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3456
    const/4 v0, 0x0

    .line 3460
    :cond_0
    invoke-static {}, Lcom/mediatek/ims/ImsServiceCallTracker;->isEccExistOnAnySlot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3461
    const-string v1, "sendIncomingCallIndication() : there is an ECC call, dis-allow this incoming call!"

    invoke-direct {v8, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3462
    const/4 v0, 0x0

    .line 3466
    :cond_1
    const-string v1, "allow_hold_video_call_bool"

    invoke-direct {v8, v9, v1}, Lcom/mediatek/ims/ImsService;->getBooleanFromCarrierConfig(ILjava/lang/String;)Z

    move-result v16

    .line 3468
    .local v16, "isAllowHoldingVideoCall":Z
    if-nez v16, :cond_3

    .line 3470
    const-string v1, "sendIncomingCallIndication() : OP01 or OP09 case"

    invoke-direct {v8, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3473
    invoke-virtual {v7}, Lcom/mediatek/ims/ImsServiceCallTracker;->isVideoCallExist()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3474
    const-string v1, "sendIncomingCallIndication() : there is video calls, dis-allow this incoming call!"

    invoke-direct {v8, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3475
    const/4 v0, 0x0

    goto :goto_0

    .line 3478
    :cond_2
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->isVideoCall(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v7}, Lcom/mediatek/ims/ImsServiceCallTracker;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3479
    const-string v1, "sendIncomingCallIndication() : MT is video calls during call, dis-allow this incoming call!"

    invoke-direct {v8, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3480
    const/4 v0, 0x0

    .line 3485
    :cond_3
    :goto_0
    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP129:Lcom/mediatek/ims/OperatorUtils$OPID;

    invoke-static {v1, v9}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3487
    const-string v1, "sendIncomingCallIndication() : OP129 case"

    invoke-direct {v8, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3490
    invoke-virtual {v7}, Lcom/mediatek/ims/ImsServiceCallTracker;->isConferenceHostCallExist()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3491
    const-string v1, "sendIncomingCallIndication() : there is conference call, dis-allow this incoming call!"

    invoke-direct {v8, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3492
    const/4 v0, 0x0

    move v5, v0

    goto :goto_1

    .line 3498
    :cond_4
    move v5, v0

    .end local v0    # "isAllow":Z
    .local v5, "isAllow":Z
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendIncomingCallIndication() : isAllow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3499
    if-nez v5, :cond_5

    .line 3500
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v11

    move-object v3, v12

    move/from16 v18, v5

    .end local v5    # "isAllow":Z
    .local v18, "isAllow":Z
    move-object v5, v15

    move-object/from16 v19, v6

    .end local v6    # "callWaitingSetting":Ljava/lang/String;
    .local v19, "callWaitingSetting":Ljava/lang/String;
    move/from16 v6, v18

    move-object/from16 v20, v7

    .end local v7    # "imsCallTracker":Lcom/mediatek/ims/ImsServiceCallTracker;
    .local v20, "imsCallTracker":Lcom/mediatek/ims/ImsServiceCallTracker;
    move/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/ims/ImsService;->setCallIndicationInternal(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V

    goto/16 :goto_2

    .line 3503
    .end local v18    # "isAllow":Z
    .end local v19    # "callWaitingSetting":Ljava/lang/String;
    .end local v20    # "imsCallTracker":Lcom/mediatek/ims/ImsServiceCallTracker;
    .restart local v5    # "isAllow":Z
    .restart local v6    # "callWaitingSetting":Ljava/lang/String;
    .restart local v7    # "imsCallTracker":Lcom/mediatek/ims/ImsServiceCallTracker;
    :cond_5
    move/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    .end local v5    # "isAllow":Z
    .end local v6    # "callWaitingSetting":Ljava/lang/String;
    .end local v7    # "imsCallTracker":Lcom/mediatek/ims/ImsServiceCallTracker;
    .restart local v18    # "isAllow":Z
    .restart local v19    # "callWaitingSetting":Ljava/lang/String;
    .restart local v20    # "imsCallTracker":Lcom/mediatek/ims/ImsServiceCallTracker;
    const-string v0, "mtk_support_enhanced_call_blocking_bool"

    invoke-direct {v8, v9, v0}, Lcom/mediatek/ims/ImsService;->getBooleanFromCarrierConfig(ILjava/lang/String;)Z

    move-result v7

    .line 3506
    .local v7, "needCheckEnhanceCallBlacking":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendIncomingCallIndication() : needCheckEnhanceCallBlacking = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3508
    if-eqz v7, :cond_6

    .line 3509
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.ims.IMS_INCOMING_CALL_INDICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3510
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3511
    const-string v1, "android:imsCallID"

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3512
    const-string v1, "android:imsDialString"

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3513
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "android:imsCallMode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3514
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "android:imsSeqNum"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3515
    const-string v1, "android:phoneId"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3516
    const-string v1, "mediatek:mtToNumber"

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3517
    iget-object v1, v8, Lcom/mediatek/ims/ImsService;->mPendingMTSeqNum:[Ljava/lang/String;

    aput-object v14, v1, v9

    .line 3518
    iget-object v1, v8, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3519
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_2

    .line 3520
    :cond_6
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v11

    move-object v3, v12

    move-object v5, v15

    move/from16 v6, v18

    move/from16 v21, v7

    .end local v7    # "needCheckEnhanceCallBlacking":Z
    .local v21, "needCheckEnhanceCallBlacking":Z
    move/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/ims/ImsService;->setCallIndicationInternal(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V

    .line 3523
    .end local v21    # "needCheckEnhanceCallBlacking":Z
    :goto_2
    return-void
.end method

.method private sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 4374
    invoke-static {p1}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setCallIndicationInternal(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "callNum"    # Ljava/lang/String;
    .param p4, "seqNum"    # I
    .param p5, "toNumber"    # Ljava/lang/String;
    .param p6, "isAllow"    # Z
    .param p7, "cause"    # I

    .line 3347
    if-eqz p6, :cond_1

    .line 3348
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsCallProfile:[Landroid/telephony/ims/ImsCallProfile;

    new-instance v1, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v1}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    aput-object v1, v0, p1

    .line 3349
    if-eqz p3, :cond_0

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallIndication new call profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/mediatek/ims/ImsService;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3351
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsCallProfile:[Landroid/telephony/ims/ImsCallProfile;

    aget-object v0, v0, p1

    const-string v1, "oi"

    invoke-virtual {v0, v1, p3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 3352
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsCallProfile:[Landroid/telephony/ims/ImsCallProfile;

    aget-object v0, v0, p1

    const/4 v1, 0x2

    const-string v2, "oir"

    invoke-virtual {v0, v2, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 3360
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v0, v0, p1

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3361
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3362
    .local v1, "b":Landroid/os/Bundle;
    const-string v2, "callId"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3363
    const-string v2, "phoneId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3364
    const-string v2, "seqNum"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3365
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3366
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3369
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "b":Landroid/os/Bundle;
    goto :goto_0

    .line 3370
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    .line 3372
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3370
    invoke-interface {v0, v1, v2, p4, p7}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setCallIndication(IIII)V

    .line 3376
    :goto_0
    return-void
.end method

.method private setEnhanced4gLteModeSetting(IZ)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "enabled"    # Z

    .line 4095
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "carrier_volte_available_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 4102
    .local v0, "defaultSupportVolte":Z
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 4103
    .local v1, "subId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4104
    const/4 v2, -0x1

    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    const-string v4, "volte_vt_enabled"

    invoke-static {v1, v4, v2, v3}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v2

    .line 4106
    .local v2, "prevSetting":I
    if-ne v2, p2, :cond_0

    goto :goto_1

    .line 4109
    :cond_0
    nop

    .line 4110
    if-eqz p2, :cond_1

    const-string v3, "1"

    goto :goto_0

    :cond_1
    const-string v3, "0"

    .line 4109
    :goto_0
    invoke-static {v1, v4, v3}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 4118
    .end local v1    # "subId":I
    .end local v2    # "prevSetting":I
    :cond_2
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsConfigManager:Lcom/mediatek/ims/ImsConfigManager;

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/ImsConfigManager;->get(I)Lcom/android/ims/internal/IImsConfig;

    move-result-object v1

    const/16 v2, 0xd

    .line 4121
    const/4 v3, 0x0

    if-eqz p2, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    .line 4122
    :cond_3
    move v4, v3

    :goto_2
    const/4 v5, 0x0

    .line 4118
    invoke-interface {v1, v3, v2, v4, v5}, Lcom/android/ims/internal/IImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    .line 4124
    const-string v1, "volte_setting setEnhanced4gLteModeSetting with service not ready yet."

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4127
    goto :goto_3

    .line 4125
    :catch_0
    move-exception v1

    .line 4126
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "volte_setting setEnhanced4gLteModeSetting with exception."

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 4132
    .end local v0    # "defaultSupportVolte":Z
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3
    return-void
.end method

.method private setNotificationVirtual(II)V
    .locals 12
    .param p1, "slot"    # I
    .param p2, "status"    # I

    .line 2395
    const-string v0, "Volte status"

    .line 2396
    .local v0, "title":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2397
    .local v1, "detail":Ljava/lang/String;
    const-string v2, "Volte Icon"

    .line 2398
    .local v2, "notificationTag":Ljava/lang/String;
    add-int/lit8 v3, p1, 0x1

    .line 2399
    .local v3, "simId":I
    move v4, v3

    .line 2401
    .local v4, "notificationId":I
    const-string v5, "ro.vendor.mtk_ims_notification"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_0

    .line 2402
    return-void

    .line 2404
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Show setNotificationVirtual(): slot = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2406
    new-instance v5, Landroid/app/NotificationChannel;

    sget-object v8, Lcom/mediatek/ims/ImsService;->IMSSERVICE_NOTIFICATION_NAME:Ljava/lang/CharSequence;

    const/4 v9, 0x3

    const-string v10, "ImsService"

    invoke-direct {v5, v10, v8, v9}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 2408
    .local v5, "channel":Landroid/app/NotificationChannel;
    iget-object v8, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    .line 2409
    const-string v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 2412
    .local v8, "notificationManager":Landroid/app/NotificationManager;
    const-string v9, "IMS "

    if-nez p2, :cond_1

    .line 2413
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " IN SERVICE"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2415
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " NOT IN SERVICE"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2418
    :goto_0
    invoke-virtual {v8, v5}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 2419
    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v11, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-direct {v9, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x108008a

    .line 2420
    invoke-virtual {v9, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 2421
    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 2422
    invoke-virtual {v9, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 2423
    invoke-virtual {v9, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 2424
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v7, -0x1

    .line 2425
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 2426
    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 2427
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 2429
    .local v6, "notification":Landroid/app/Notification;
    const-string v7, "Volte Icon"

    invoke-virtual {v8, v7, v4, v6}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 2431
    return-void
.end method

.method private startWfoService()V
    .locals 2

    .line 966
    iget v0, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mTempDisableWFC:[Z

    .line 968
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfoService;->getInstance(Landroid/content/Context;)Lcom/mediatek/wfo/impl/WfoService;

    move-result-object v0

    .line 969
    .local v0, "wService":Lcom/mediatek/wfo/impl/WfoService;
    if-eqz v0, :cond_0

    .line 970
    invoke-virtual {v0}, Lcom/mediatek/wfo/impl/WfoService;->makeWfoService()V

    goto :goto_0

    .line 972
    :cond_0
    const-string v1, "startWfoService fail, getInstance is null"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 974
    :goto_0
    return-void
.end method

.method private toHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "before"    # Ljava/lang/String;

    .line 4349
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4350
    const-string v0, ""

    return-object v0

    .line 4353
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 4354
    .local v0, "bytes":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4355
    .local v1, "str":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 4356
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, v0, v2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "%02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4355
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4359
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toHexString before: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " after: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 4360
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private triggerImsRegistrationNotify(II)Z
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "errCode"    # I

    .line 3235
    const-string v0, "ro.vendor.mtk_telephony_add_on_policy"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3236
    if-eqz p2, :cond_0

    .line 3237
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v0, v0, p1

    const/16 v1, 0x2a

    .line 3238
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    .line 3237
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3241
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 3243
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private updateAssociatedUriChanged(I[Landroid/net/Uri;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "uris"    # [Landroid/net/Uri;

    .line 2061
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mLockUri:Ljava/lang/Object;

    monitor-enter v0

    .line 2062
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/ImsService;->sMtkImsRegImpl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/MtkImsRegistrationImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2063
    .local v1, "imsReg":Lcom/mediatek/ims/MtkImsRegistrationImpl;
    if-eqz v1, :cond_0

    .line 2065
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] updateAssociatedUriChanged"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2066
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uris="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ImsService"

    invoke-static {v3, p2}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->englog(Ljava/lang/String;)V

    .line 2067
    invoke-virtual {v1, p2}, Lcom/mediatek/ims/MtkImsRegistrationImpl;->onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2068
    :catch_0
    move-exception v2

    .line 2069
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to updateAssociatedUriChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 2070
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    goto :goto_1

    .line 2072
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is not ImsRegistrationImpl for slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 2074
    .end local v1    # "imsReg":Lcom/mediatek/ims/MtkImsRegistrationImpl;
    :goto_1
    monitor-exit v0

    .line 2075
    return-void

    .line 2074
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private updateCapabilityChange(II[I[I)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "imsExtInfo"    # I
    .param p3, "enabledFeatures"    # [I
    .param p4, "disabledFeatures"    # [I

    .line 2160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCapabilityChange phoneId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " + imsExtInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 2163
    const/4 v1, -0x1

    aput v1, p3, v0

    .line 2164
    aput v1, p4, v0

    .line 2162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2167
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    aget v1, v0, p1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    and-int/lit8 v1, p2, 0x1

    if-ne v1, v4, :cond_1

    .line 2169
    aput v3, p3, v3

    .line 2171
    aput v2, p3, v2

    goto :goto_1

    .line 2174
    :cond_1
    aput v3, p4, v3

    .line 2176
    aput v2, p4, v2

    .line 2180
    :goto_1
    aget v0, v0, p1

    const/16 v1, 0x8

    if-ne v0, v4, :cond_2

    and-int/lit8 v0, p2, 0x8

    if-ne v0, v1, :cond_2

    .line 2182
    aput v4, p3, v4

    goto :goto_2

    .line 2185
    :cond_2
    aput v4, p4, v4

    .line 2189
    :goto_2
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    .line 2190
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    aget v0, v0, p1

    const/4 v3, 0x5

    if-ne v0, v2, :cond_3

    and-int/lit8 v0, p2, 0x1

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mTempDisableWFC:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_3

    .line 2193
    aput v2, p3, v2

    .line 2195
    aput v3, p3, v3

    .line 2197
    const-string v0, "[WFC]IMS_VOICE_OVER_WIFI"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 2199
    :cond_3
    aput v2, p4, v2

    .line 2201
    aput v3, p4, v3

    .line 2206
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    aget v0, v0, p1

    const/4 v3, 0x3

    if-ne v0, v2, :cond_5

    and-int/lit8 v0, p2, 0x8

    if-ne v0, v1, :cond_5

    .line 2208
    aput v3, p3, v3

    .line 2210
    const-string v0, "[WFC]IMS_VIDEO_OVER_WIFI"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 2212
    :cond_5
    aput v3, p4, v3

    .line 2216
    :goto_4
    return-void
.end method

.method private updateImsRegistrationRat(II)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "rat"    # I

    .line 4502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateImsRegistrationRat(), phoneId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 4504
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.ims.ACTION_VODATA_PDN_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4506
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android:phone_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4507
    const-string v1, "ims_pdn_over_rat"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4508
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsPdnRat:[I

    aput p2, v1, p1

    .line 4510
    return-void
.end method

.method private updateImsRegstrationEx(IIILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "state"    # I
    .param p3, "tech"    # I
    .param p4, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2080
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 2082
    .local v0, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    if-eqz v0, :cond_1

    .line 2083
    monitor-enter v0

    .line 2084
    if-nez p2, :cond_0

    .line 2085
    :try_start_0
    new-instance v1, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p3}, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda6;-><init>(Lcom/mediatek/ims/ImsService;I)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 2094
    :cond_0
    new-instance v1, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda7;

    invoke-direct {v1, p4}, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda7;-><init>(Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    .line 2102
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2104
    :cond_1
    :goto_1
    return-void
.end method

.method private updateUtCapabilityChange(I[I[I)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "enabledFeatures"    # [I
    .param p3, "disabledFeatures"    # [I

    .line 2299
    sget-object v0, Lcom/mediatek/ims/ImsService;->sMtkSSExt:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2300
    sget-object v0, Lcom/mediatek/ims/ImsService;->sMtkSSExt:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/MtkSuppServExt;

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkSuppServExt;->getUtCapabilityFromSettings()I

    move-result v0

    .line 2301
    .local v0, "utCap":I
    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP09:Lcom/mediatek/ims/OperatorUtils$OPID;

    invoke-static {v1, p1}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 2302
    const-string v1, "persist.vendor.mtk_ct_volte_support"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    nop

    :goto_0
    move v1, v3

    .line 2303
    .local v1, "isUtDefaultEnabled":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateUtCapabilityChange, add Ut capability, utCap = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isUtDefaultEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2306
    if-eq v0, v2, :cond_1

    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 2307
    :cond_1
    const/4 v2, 0x4

    aput v2, p2, v2

    .line 2311
    .end local v0    # "utCap":I
    .end local v1    # "isUtDefaultEnabled":Z
    :cond_2
    return-void
.end method


# virtual methods
.method public acknowledgeLastIncomingCdmaSms(IZI)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "success"    # Z
    .param p3, "cause"    # I

    .line 3607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acknowledgeLastIncomingCdmaSms, success "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cause "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3608
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-interface {v0, p2, p3, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->acknowledgeLastIncomingCdmaSmsEx(ZILandroid/os/Message;)V

    .line 3609
    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(IZI)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "success"    # Z
    .param p3, "cause"    # I

    .line 3602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acknowledgeLastIncomingGsmSms, success "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cause "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3603
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-interface {v0, p2, p3, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 3604
    return-void
.end method

.method bindAndRegisterWifiOffloadService()V
    .locals 2

    .line 1958
    sget-object v0, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    if-nez v0, :cond_1

    .line 1960
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->checkAndBindWifiOffloadService()V

    .line 1961
    sget-object v0, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    if-eqz v0, :cond_0

    .line 1963
    nop

    .line 1964
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->createWifiOffloadListenerProxy()Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;

    move-result-object v1

    .line 1963
    invoke-interface {v0, v1}, Lcom/mediatek/wfo/IWifiOffloadService;->registerForHandoverEvent(Lcom/mediatek/wfo/IWifiOffloadListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1965
    :catch_0
    move-exception v0

    .line 1966
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "can\'t register handover event"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1967
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 1969
    :cond_0
    const/4 v0, 0x0

    const-string v1, "persist.vendor.mtk_wfc_support"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1970
    const-string v0, "can\'t get WifiOffloadService"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1974
    :cond_1
    :goto_1
    return-void
.end method

.method public changeEnabledCapabilities(ILandroid/telephony/ims/feature/CapabilityChangeRequest;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;

    .line 4366
    sget-object v0, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4367
    sget-object v0, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    invoke-interface {v0, p2}, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;->updateCapbilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    goto :goto_0

    .line 4369
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There is not IMtkMmTelFeatureCallback for slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 4371
    :goto_0
    return-void
.end method

.method public cleanMtkCallSessionProxyIfNeed(Lcom/mediatek/ims/ImsCallSessionProxy;ZLjava/lang/String;I)V
    .locals 5
    .param p1, "cs"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p2, "isMtCall"    # Z
    .param p3, "callId"    # Ljava/lang/String;
    .param p4, "phoneId"    # I

    .line 1181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanMtkCallSessionProxyIfNeed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1183
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mMtkPendingMT:[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    aget-object v1, v1, p4

    if-eqz v1, :cond_1

    .line 1184
    invoke-virtual {v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getServiceImpl()Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v1

    .line 1186
    .local v1, "pendingMTsession":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanMtkCallSessionProxyIfNeed : mMtkPendingMT = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mMtkPendingMT:[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    aget-object v3, v3, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pendingMTsession = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1189
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1190
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mMtkPendingMT:[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    aput-object v0, v2, p4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1194
    :cond_0
    goto :goto_0

    .line 1192
    :catch_0
    move-exception v2

    .line 1197
    .end local v1    # "pendingMTsession":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    .line 1199
    .local v1, "aospCallSessionImpl":Lcom/android/ims/internal/IImsCallSession;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanMtkCallSessionProxyIfNeed : aospCallSessionImpl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1201
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mPendingMtkImsCallSessionProxy:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1203
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mPendingMtkImsCallSessionProxy:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 1205
    .local v2, "mtk_cs":Lcom/mediatek/ims/MtkImsCallSessionProxy;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanMtkCallSessionProxyIfNeed : mtk_cs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1207
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mPendingMtkImsCallSessionProxy:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    invoke-virtual {v2, v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->setAospCallSessionProxy(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 1210
    .end local v2    # "mtk_cs":Lcom/mediatek/ims/MtkImsCallSessionProxy;
    invoke-virtual {p1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->setMtkCallSessionProxy(Lcom/mediatek/ims/MtkImsCallSessionProxy;)V

    .line 1214
    :cond_2
    return-void
.end method

.method protected clearImsRilRequest()V
    .locals 3

    .line 4517
    const-string v0, "clearImsRilRequest()"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 4518
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    if-ge v0, v1, :cond_1

    .line 4519
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 4520
    check-cast v1, Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->clearRequestList(IZ)V

    .line 4518
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4523
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method convertImsRegistrationTech(I)I
    .locals 1
    .param p1, "tech"    # I

    .line 4012
    sparse-switch p1, :sswitch_data_0

    .line 4018
    const/4 v0, -0x1

    return v0

    .line 4016
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 4014
    :sswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public convertUri(Ljava/lang/String;)[Landroid/net/Uri;
    .locals 10
    .param p1, "xui"    # Ljava/lang/String;

    .line 4378
    if-nez p1, :cond_0

    .line 4379
    const/4 v0, 0x0

    return-object v0

    .line 4381
    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4382
    .local v0, "ids":[Ljava/lang/String;
    array-length v1, v0

    .line 4383
    .local v1, "len":I
    new-array v2, v1, [Landroid/net/Uri;

    .line 4385
    .local v2, "uris":[Landroid/net/Uri;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 4386
    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 4387
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 4388
    .local v5, "number":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4389
    const-string v6, "empty XUI"

    invoke-direct {p0, v6}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 4390
    goto :goto_1

    .line 4392
    :cond_1
    const-string v6, "[@;:]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 4393
    .local v6, "numberParts":[Ljava/lang/String;
    array-length v7, v6

    if-nez v7, :cond_2

    .line 4394
    const-string v7, "no number in XUI handle"

    invoke-direct {p0, v7}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 4395
    goto :goto_1

    .line 4397
    :cond_2
    const/4 v7, 0x0

    aget-object v5, v6, v7

    .line 4398
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    aput-object v7, v2, v3

    .line 4400
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IMS: convertUri() uri = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v3

    const-string v9, "ImsService"

    invoke-static {v9, v8}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 4385
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "number":Ljava/lang/String;
    .end local v6    # "numberParts":[Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4402
    .end local v3    # "i":I
    :cond_3
    return-object v2
.end method

.method protected deregisterIms(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 1468
    invoke-static {p1}, Lcom/mediatek/ims/ImsService;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deregisterIms() error phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1470
    return-void

    .line 1472
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deregisterIms, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1473
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1474
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result p1

    .line 1475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deregisterIms, MainCapabilityPhoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1477
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v1, v1, p1

    const/16 v2, 0x10

    .line 1478
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1477
    invoke-interface {v0, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->deregisterIms(Landroid/os/Message;)V

    .line 1479
    return-void
.end method

.method public deregisterImsWithCause(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "cause"    # I

    .line 1485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deregisterImsWithCause, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1487
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1488
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result p1

    .line 1489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deregisterImsWithCause, MainCapabilityPhoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1491
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v1, v1, p1

    const/16 v2, 0x10

    .line 1492
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1491
    invoke-interface {v0, p2, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->deregisterImsWithCause(ILandroid/os/Message;)V

    .line 1493
    return-void
.end method

.method public disableIms(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 1350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "turnOffIms, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1351
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ImsService;->onTurnOffIms(I)V

    .line 1352
    return-void
.end method

.method public enableIms(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 1337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "turnOnIms phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1338
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ImsService;->onTurnOnIms(I)V

    .line 1339
    return-void
.end method

.method public explicitCallTransfer(ILandroid/os/Message;Landroid/os/Messenger;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "target"    # Landroid/os/Messenger;

    .line 3661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "explicitCallTransfer: phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3663
    invoke-static {p1}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    .line 3664
    .local v0, "imsCallTracker":Lcom/mediatek/ims/ImsServiceCallTracker;
    invoke-virtual {v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->getFgCall()Lcom/mediatek/ims/ImsCallSessionProxy;

    move-result-object v1

    .line 3666
    .local v1, "fgCallSession":Lcom/mediatek/ims/ImsCallSessionProxy;
    if-eqz v1, :cond_0

    .line 3667
    invoke-virtual {v1, p2, p3}, Lcom/mediatek/ims/ImsCallSessionProxy;->explicitCallTransferWithCallback(Landroid/os/Message;Landroid/os/Messenger;)V

    goto :goto_0

    .line 3668
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 3669
    const/4 v2, 0x0

    iput v2, p2, Landroid/os/Message;->arg1:I

    .line 3671
    :try_start_0
    invoke-virtual {p3, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3674
    goto :goto_0

    .line 3672
    :catch_0
    move-exception v2

    .line 3673
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3676
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public fallBackAospMTFlow(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 4302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fallBackAospMTFlow: phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 4303
    iget v0, p0, Lcom/mediatek/ims/ImsService;->mRedirectIncomingSocketId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mRedirectIncomingAsyncResult:Landroid/os/AsyncResult;

    if-eqz v2, :cond_0

    .line 4304
    invoke-direct {p0, v0, v2}, Lcom/mediatek/ims/ImsService;->sendIncomingCallIndication(ILandroid/os/AsyncResult;)V

    .line 4306
    :cond_0
    iput v1, p0, Lcom/mediatek/ims/ImsService;->mRedirectIncomingSocketId:I

    .line 4307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mRedirectIncomingAsyncResult:Landroid/os/AsyncResult;

    .line 4308
    return-void
.end method

.method getCurrentCallCount(I)I
    .locals 2
    .param p1, "phoneId"    # I

    .line 3526
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 3531
    :cond_0
    invoke-static {p1}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCurrentCallCount()I

    move-result v0

    return v0

    .line 3527
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMS: getCurrentCallCount() phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3528
    const/4 v0, 0x0

    return v0
.end method

.method public getImsConfigManager()Lcom/mediatek/ims/ImsConfigManager;
    .locals 1

    .line 1906
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsConfigManager:Lcom/mediatek/ims/ImsConfigManager;

    return-object v0
.end method

.method public getImsNetworkState(I)[I
    .locals 1
    .param p1, "capability"    # I

    .line 3561
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsDataTracker:Lcom/mediatek/ims/internal/ImsDataTracker;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/ImsDataTracker;->getImsNetworkState(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getImsPdnStatus(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .line 4513
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsPdnRat:[I

    aget v0, v0, p1

    return v0
.end method

.method public getImsRILAdapter(I)Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .locals 2
    .param p1, "phoneId"    # I

    .line 1899
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 1900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImsRILAdapter phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImsRILAdapter is null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 1902
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected getImsRegUriType(I)I
    .locals 4
    .param p1, "phoneId"    # I

    .line 1437
    invoke-static {p1}, Lcom/mediatek/ims/ImsService;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImsRegUriType() error phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", use phone 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1439
    const/4 p1, 0x0

    .line 1441
    :cond_0
    const/4 v0, 0x1

    .line 1442
    .local v0, "uri_type":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ril.ims.extinfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1444
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    aget v2, v2, p1

    if-nez v2, :cond_1

    .line 1445
    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1447
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImsRegUriType, phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "uri_type ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1449
    return v0
.end method

.method public getImsServiceState(I)I
    .locals 2
    .param p1, "phoneId"    # I

    .line 1655
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1656
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result p1

    .line 1658
    :cond_0
    if-ltz p1, :cond_2

    iget v0, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 1662
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    aget v0, v0, p1

    return v0

    .line 1659
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImsServiceState, Invalid phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1660
    const/4 v0, 0x3

    return v0
.end method

.method protected getImsState(I)I
    .locals 2
    .param p1, "phoneId"    # I

    .line 1424
    invoke-static {p1}, Lcom/mediatek/ims/ImsService;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImsState() error phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", use phone 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1426
    const/4 p1, 0x0

    .line 1428
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsState:[I

    aget v0, v0, p1

    return v0
.end method

.method public getModemMultiImsCount()I
    .locals 4

    .line 1670
    const-string v0, "getModemMultiImsCount"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1671
    nop

    .line 1672
    const-string v0, "ro.vendor.md_mims_support"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1673
    .local v0, "mdMultiImsCount":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mdMultiImsCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1674
    if-ne v0, v1, :cond_0

    .line 1675
    const-string v1, "MD Multi IMS Count not initialized"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 1677
    :cond_0
    return v0
.end method

.method getRadioTech(I)I
    .locals 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1986
    const/4 v0, 0x0

    .line 1988
    .local v0, "radioTech":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRadioTech mRAN = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1992
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->bindAndRegisterMWIService()V

    .line 1994
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    aget v1, v1, p1

    packed-switch v1, :pswitch_data_0

    .line 2001
    const/16 v0, 0xe

    goto :goto_0

    .line 1996
    :pswitch_0
    const/16 v0, 0x12

    .line 1997
    nop

    .line 2004
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRadioTech mRAN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", radioTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2005
    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getRatType(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .line 3288
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    aget v0, v0, p1

    return v0
.end method

.method public getRttEmcGuardTimerUtil(I)Lcom/mediatek/ims/RttEmcGuardTimerUtil;
    .locals 1
    .param p1, "phoneId"    # I

    .line 4543
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mRttEmcGuardTimerUtil:[Lcom/mediatek/ims/RttEmcGuardTimerUtil;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSipTransport(I)Lcom/mediatek/ims/rcs/MtkSipTransportImpl;
    .locals 2
    .param p1, "slotId"    # I

    .line 3935
    sget-object v0, Lcom/mediatek/ims/ImsService;->sMtkSipTranportImpl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    return-object v0
.end method

.method public getSubIdUsingPhoneId(I)I
    .locals 4
    .param p1, "phoneId"    # I

    .line 4030
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 4031
    .local v0, "subIds":[I
    const/4 v1, -0x1

    .line 4032
    .local v1, "subId":I
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 4033
    const/4 v2, 0x0

    aget v1, v0, v2

    .line 4035
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getSubIdUsingPhoneId] volte_setting subId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 4036
    return v1
.end method

.method public getWfcRegErrorCode(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .line 4417
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mWfcRegErrorCode:[I

    aget v0, v0, p1

    return v0
.end method

.method public isImsEccSupported(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 3535
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mIsImsEccSupported:[I

    aget v0, v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isImsEccSupportedWhenNormalService(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 3539
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mIsImsEccSupported:[I

    aget v0, v0, p1

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSupportCFT(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .line 4146
    sget-object v0, Lcom/mediatek/ims/ImsService;->sMtkSSExt:Ljava/util/HashMap;

    monitor-enter v0

    .line 4147
    const/4 v1, 0x0

    .line 4148
    .local v1, "isSupport":Z
    :try_start_0
    sget-object v2, Lcom/mediatek/ims/ImsService;->sMtkSSExt:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4149
    sget-object v2, Lcom/mediatek/ims/ImsService;->sMtkSSExt:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/MtkSuppServExt;

    invoke-virtual {v2}, Lcom/mediatek/ims/MtkSuppServExt;->isSupportCFT()Z

    move-result v2

    move v1, v2

    .line 4151
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportCFT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 4152
    monitor-exit v0

    return v1

    .line 4153
    .end local v1    # "isSupport":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic lambda$notifyImsRegInd$9$com-mediatek-ims-ImsService(Lcom/mediatek/ims/ImsRegInfo;[Landroid/net/Uri;Landroid/telephony/ims/ImsReasonInfo;Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;)V
    .locals 2
    .param p1, "info"    # Lcom/mediatek/ims/ImsRegInfo;
    .param p2, "uris"    # [Landroid/net/Uri;
    .param p3, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p4, "l"    # Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;

    .line 4258
    :try_start_0
    iget v0, p1, Lcom/mediatek/ims/ImsRegInfo;->mReportType:I

    iget v1, p1, Lcom/mediatek/ims/ImsRegInfo;->mExpireTime:I

    invoke-interface {p4, v0, p2, v1, p3}, Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;->onRegistrationImsStateChanged(I[Landroid/net/Uri;ILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4262
    goto :goto_0

    .line 4260
    :catch_0
    move-exception v0

    .line 4261
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "onRegistrationImsStateChanged failed!!"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 4263
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method synthetic lambda$notifyRedirectIncomingCall$10$com-mediatek-ims-ImsService(ILandroid/os/AsyncResult;Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;
    .param p3, "l"    # Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;

    .line 4287
    :try_start_0
    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    invoke-interface {p3, p1, v0}, Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;->onRedirectIncomingCallIndication(I[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4290
    goto :goto_0

    .line 4288
    :catch_0
    move-exception v0

    .line 4289
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "onRedirectIncomingCallIndication failed!!"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 4291
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method synthetic lambda$notifyRegistrationAssociatedUriChange$0$com-mediatek-ims-ImsService([Landroid/net/Uri;Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 2
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "l"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 2050
    :try_start_0
    invoke-interface {p2, p1}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationAssociatedUriChanged([Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2053
    goto :goto_0

    .line 2051
    :catch_0
    move-exception v0

    .line 2052
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "handle self identify update failed!!"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 2054
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method synthetic lambda$notifyRegistrationErrorCode$5$com-mediatek-ims-ImsService(ILcom/mediatek/ims/internal/IMtkImsRegistrationListener;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "l"    # Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;

    .line 3726
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call notifyRegistrationErrorCode with error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3727
    invoke-interface {p2, p1}, Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;->onRegistrationErrorCodeIndication(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3730
    goto :goto_0

    .line 3728
    :catch_0
    move-exception v0

    .line 3729
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "notifyRegistrationErrorCode failed!!"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3731
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method synthetic lambda$resetXuiAndNotify$4$com-mediatek-ims-ImsService([Landroid/net/Uri;Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 2
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "l"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 3551
    :try_start_0
    invoke-interface {p2, p1}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationAssociatedUriChanged([Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3554
    goto :goto_0

    .line 3552
    :catch_0
    move-exception v0

    .line 3553
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "clear self identify failed!!"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3555
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method synthetic lambda$setRcsFeatureCallback$7$com-mediatek-ims-ImsService(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;Lcom/mediatek/ims/rcs/UaServiceManager;)V
    .locals 1
    .param p1, "capabilities"    # Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;
    .param p2, "it"    # Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 3770
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->addCapabilities(I)V

    .line 3771
    const-string v0, "add uce capability"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$updateImsRegstration$8$com-mediatek-ims-ImsService(Ljava/lang/Object;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/Object;

    .line 3971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "featureTag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->logi(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$updateImsRegstrationEx$1$com-mediatek-ims-ImsService(ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 2
    .param p1, "tech"    # I
    .param p2, "l"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 2087
    :try_start_0
    invoke-interface {p2, p1}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationConnectedWithRadioTech(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2091
    goto :goto_0

    .line 2088
    :catch_0
    move-exception v0

    .line 2090
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IMS: l.registrationConnectedWithRadioTech failed"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 2092
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public mapPhoneIdToServiceId(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .line 1646
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method public notifyCcCapabilityChange(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 2292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCallComposerCapabilityChange, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2293
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v0, v0, p1

    const/16 v1, 0x2c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2295
    return-void
.end method

.method public notifyIncomingCallSession(ILcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "c"    # Lcom/android/ims/internal/IImsCallSession;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 3882
    sget-object v0, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3884
    :try_start_0
    sget-object v0, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    invoke-interface {v0, p2, p3}, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;->notifyIncomingCallSession(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3887
    goto :goto_0

    .line 3885
    :catch_0
    move-exception v0

    .line 3886
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to notifyIncomingCallSession "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3889
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method protected notifyMultiSimConfigChanged(Landroid/content/Context;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activeModemCount"    # I

    .line 769
    sget-object v0, Lcom/mediatek/ims/ImsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 770
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    array-length v1, v1

    .line 771
    .local v1, "prevActiveModemCount":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyMultiSimConfigChanged, phone:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mNumOfPhones:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 774
    if-ne v1, p2, :cond_0

    monitor-exit v0

    return-void

    .line 778
    :cond_0
    iput p2, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    .line 779
    if-le v1, p2, :cond_1

    monitor-exit v0

    return-void

    .line 780
    :cond_1
    const-string v2, "notifyMultiSimConfigChanged, run"

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 782
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Handler;

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    .line 783
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 784
    move v2, v1

    .local v2, "i":I
    :goto_0
    const/16 v3, 0xa

    const/4 v4, 0x1

    if-ge v2, p2, :cond_3

    .line 785
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    new-instance v6, Lcom/mediatek/ims/ImsService$MyHandler;

    invoke-direct {v6, p0, v2}, Lcom/mediatek/ims/ImsService$MyHandler;-><init>(Lcom/mediatek/ims/ImsService;I)V

    aput-object v6, v5, v2

    .line 786
    new-instance v5, Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-direct {v5, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;-><init>(Landroid/content/Context;I)V

    .line 789
    .local v5, "ril":Lcom/mediatek/ims/ril/ImsRILAdapter;
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v6, v6, v2

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 790
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v6, v6, v2

    const/16 v7, 0x12

    invoke-virtual {v5, v6, v7, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 791
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v6, v6, v2

    const/16 v7, 0x13

    invoke-virtual {v5, v6, v7, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 792
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6, v4, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForImsRegistrationInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 793
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, v2

    invoke-virtual {v5, v4, v3, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForImsEnableStart(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 794
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v3, v3, v2

    const/16 v4, 0xb

    invoke-virtual {v5, v3, v4, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForImsEnableComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 795
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v3, v3, v2

    const/16 v4, 0xc

    invoke-virtual {v5, v3, v4, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForImsDisableStart(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 796
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v3, v3, v2

    const/4 v4, 0x5

    invoke-virtual {v5, v3, v4, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForImsDisableComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 797
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v3, v3, v2

    const/4 v4, 0x7

    invoke-virtual {v5, v3, v4, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setOnIncomingCallIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 798
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v3, v3, v2

    const/16 v4, 0xd

    invoke-virtual {v5, v3, v4, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForCallProgressIndicator(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 799
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v3, v3, v2

    const/16 v4, 0x11

    invoke-virtual {v5, v3, v4, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForImsDeregisterComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 801
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v3, v3, v2

    const/16 v4, 0x19

    invoke-virtual {v5, v3, v4, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForImsEccSupport(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 805
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v3, v3, v2

    const/16 v4, 0xf

    invoke-virtual {v5, v3, v4, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setOnUSSI(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 809
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v3, v3, v2

    const/16 v4, 0x14

    invoke-virtual {v5, v3, v4, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForImsRTPInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 812
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v3, v3, v2

    const/16 v4, 0x16

    invoke-virtual {v5, v3, v4, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForVolteSettingChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 814
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v3, v3, v2

    const/16 v4, 0x25

    invoke-virtual {v5, v3, v4, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForImsRegStatusInd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 816
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v3, v3, v2

    const/16 v4, 0x26

    invoke-virtual {v5, v3, v4, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForDetailImsRegistrationInd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 819
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 820
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v3, v3, v2

    const/16 v4, 0x18

    invoke-virtual {v5, v3, v4, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForXuiInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 823
    :cond_2
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v3, v3, v2

    const/16 v4, 0x1e

    invoke-virtual {v5, v3, v4, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 824
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v3, v3, v2

    const/16 v4, 0x1f

    invoke-virtual {v5, v3, v4, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setOnNewSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 825
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v3, v3, v2

    const/16 v4, 0x20

    invoke-virtual {v5, v3, v4, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 826
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v3, v3, v2

    const/16 v4, 0x22

    invoke-virtual {v5, v3, v4, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForVopsStatusInd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 828
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v3, v3, v2

    const/16 v4, 0x24

    invoke-virtual {v5, v3, v4, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForCallAdditionalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 830
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v3, v3, v2

    const/16 v4, 0x28

    invoke-virtual {v5, v3, v4, v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForImsRegFlagInd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 832
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aput-object v5, v3, v2

    .line 784
    .end local v5    # "ril":Lcom/mediatek/ims/ril/ImsRILAdapter;
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 836
    .end local v2    # "i":I
    :cond_3
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 837
    const-string v2, "Initializing"

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 838
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsDataTracker:Lcom/mediatek/ims/internal/ImsDataTracker;

    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-virtual {v2, p2, v5}, Lcom/mediatek/ims/internal/ImsDataTracker;->notifyMultiSimConfigChanged(I[Lcom/mediatek/ims/ril/ImsCommandsInterface;)V

    .line 841
    :cond_4
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    .line 842
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsExtInfo:[I

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsExtInfo:[I

    .line 843
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mServiceId:[I

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mServiceId:[I

    .line 844
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsState:[I

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsState:[I

    .line 845
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mExpectedImsState:[I

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mExpectedImsState:[I

    .line 846
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mRegErrorCode:[I

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mRegErrorCode:[I

    .line 847
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    .line 848
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsEcbm:[Lcom/mediatek/ims/ImsEcbmProxy;

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/mediatek/ims/ImsEcbmProxy;

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsEcbm:[Lcom/mediatek/ims/ImsEcbmProxy;

    .line 849
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsEvtPkgAdapter:[Lcom/mediatek/ims/ImsEventPackageAdapter;

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/mediatek/ims/ImsEventPackageAdapter;

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsEvtPkgAdapter:[Lcom/mediatek/ims/ImsEventPackageAdapter;

    .line 851
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsConfigMccmnc:[Ljava/lang/String;

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsConfigMccmnc:[Ljava/lang/String;

    .line 852
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsConfigIccid:[Ljava/lang/String;

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsConfigIccid:[Ljava/lang/String;

    .line 853
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mIsImsEccSupported:[I

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mIsImsEccSupported:[I

    .line 855
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mWaitSubInfoChange:[Z

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mWaitSubInfoChange:[Z

    .line 856
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mVolteEnable:[Z

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mVolteEnable:[Z

    .line 858
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsRegInd:[Lcom/mediatek/ims/ImsRegInfo;

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/mediatek/ims/ImsRegInfo;

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsRegInd:[Lcom/mediatek/ims/ImsRegInfo;

    .line 861
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mPendingMT:[Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/mediatek/ims/ImsCallSessionProxy;

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mPendingMT:[Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 862
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mMtkPendingMT:[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/mediatek/ims/MtkImsCallSessionProxy;

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mMtkPendingMT:[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 863
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mPendingMTCallId:[Ljava/lang/String;

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mPendingMTCallId:[Ljava/lang/String;

    .line 864
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mPendingMTSeqNum:[Ljava/lang/String;

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mPendingMTSeqNum:[Ljava/lang/String;

    .line 865
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mIsPendingMTTerminated:[Z

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mIsPendingMTTerminated:[Z

    .line 866
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsCallProfile:[Landroid/telephony/ims/ImsCallProfile;

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/ims/ImsCallProfile;

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsCallProfile:[Landroid/telephony/ims/ImsCallProfile;

    .line 867
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mMultiEndpoints:[Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mMultiEndpoints:[Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;

    .line 868
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mIsMTredirect:[Z

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mIsMTredirect:[Z

    .line 869
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mWfcPdnState:[I

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mWfcPdnState:[I

    .line 870
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mWfcRegErrorCode:[I

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mWfcRegErrorCode:[I

    .line 871
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mTempDisableWFC:[Z

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mTempDisableWFC:[Z

    .line 872
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mWfcHandoverToLteState:[I

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mWfcHandoverToLteState:[I

    .line 873
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsPdnRat:[I

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsPdnRat:[I

    .line 874
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mRcsState:[I

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mRcsState:[I

    .line 880
    move v2, v1

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, p2, :cond_6

    .line 881
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mListener:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 882
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mMtkListener:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    const/4 v6, 0x3

    aput v6, v5, v2

    .line 884
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mImsExtInfo:[I

    const/4 v6, 0x0

    aput v6, v5, v2

    .line 885
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mServiceId:[I

    add-int/lit8 v7, v2, 0x1

    aput v7, v5, v2

    .line 886
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mImsState:[I

    aput v6, v5, v2

    .line 887
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mExpectedImsState:[I

    aput v6, v5, v2

    .line 888
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mRegErrorCode:[I

    aput v6, v5, v2

    .line 889
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    aput v4, v5, v2

    .line 890
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mWfcPdnState:[I

    aput v6, v5, v2

    .line 891
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mWfcRegErrorCode:[I

    aput v6, v5, v2

    .line 892
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mImsEcbm:[Lcom/mediatek/ims/ImsEcbmProxy;

    new-instance v7, Lcom/mediatek/ims/ImsEcbmProxy;

    iget-object v8, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v9, v9, v2

    invoke-direct {v7, v8, v9, v2}, Lcom/mediatek/ims/ImsEcbmProxy;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V

    aput-object v7, v5, v2

    .line 893
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mImsConfigManager:Lcom/mediatek/ims/ImsConfigManager;

    iget-object v7, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-virtual {v5, v2, v7}, Lcom/mediatek/ims/ImsConfigManager;->init(I[Lcom/mediatek/ims/ril/ImsCommandsInterface;)V

    .line 894
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mIsImsEccSupported:[I

    aput v6, v5, v2

    .line 895
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 896
    sget-object v5, Lcom/mediatek/ims/ImsService;->sMtkSSExt:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/mediatek/ims/MtkSuppServExt;

    iget-object v9, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/mediatek/ims/ImsService;->mSslooper:Landroid/os/Looper;

    invoke-direct {v8, v9, v2, p0, v10}, Lcom/mediatek/ims/MtkSuppServExt;-><init>(Landroid/content/Context;ILcom/mediatek/ims/ImsService;Landroid/os/Looper;)V

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    :cond_5
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mImsEvtPkgAdapter:[Lcom/mediatek/ims/ImsEventPackageAdapter;

    new-instance v7, Lcom/mediatek/ims/ImsEventPackageAdapter;

    iget-object v8, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v9, v9, v2

    iget-object v10, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v10, v10, v2

    invoke-direct {v7, v8, v9, v10, v2}, Lcom/mediatek/ims/ImsEventPackageAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V

    aput-object v7, v5, v2

    .line 902
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mWaitSubInfoChange:[Z

    aput-boolean v6, v5, v2

    .line 903
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mVolteEnable:[Z

    aput-boolean v6, v5, v2

    .line 905
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mIsPendingMTTerminated:[Z

    aput-boolean v6, v5, v2

    .line 906
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mIsMTredirect:[Z

    aput-boolean v6, v5, v2

    .line 907
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mWfcHandoverToLteState:[I

    aput v4, v5, v2

    .line 908
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mIsImsEccSupported:[I

    aput v3, v5, v2

    .line 909
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mRcsState:[I

    aput v6, v5, v2

    .line 880
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 914
    .end local v2    # "i":I
    :cond_6
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v2

    const/16 v3, 0x15

    if-nez v2, :cond_7

    .line 915
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result v2

    .line 916
    .local v2, "mainPhoneId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMainCapabilityPhoneId: mainPhoneId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 918
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, v2

    .line 919
    invoke-virtual {v5, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 918
    invoke-interface {v4, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setImsRegistrationReport(Landroid/os/Message;)V

    .line 920
    .end local v2    # "mainPhoneId":I
    goto :goto_3

    .line 921
    :cond_7
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, p2, :cond_8

    .line 923
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, v2

    .line 924
    invoke-virtual {v5, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 923
    invoke-interface {v4, v5}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setImsRegistrationReport(Landroid/os/Message;)V

    .line 921
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 935
    .end local v2    # "i":I
    :cond_8
    :goto_3
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, p2, :cond_9

    .line 936
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v3, v3, v2

    const/16 v4, 0x21

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 935
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 939
    .end local v2    # "i":I
    :cond_9
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->getOpImsService()Lcom/mediatek/ims/ext/IImsServiceExt;

    move-result-object v2

    .line 940
    .local v2, "opImsService":Lcom/mediatek/ims/ext/IImsServiceExt;
    if-eqz v2, :cond_a

    .line 941
    move v3, v1

    .local v3, "i":I
    :goto_5
    if-ge v3, p2, :cond_a

    .line 942
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, v3

    const/16 v6, 0x27

    .line 943
    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 942
    invoke-interface {v2, v3, v4, v5}, Lcom/mediatek/ims/ext/IImsServiceExt;->notifyImsServiceEvent(ILandroid/content/Context;Landroid/os/Message;)V

    .line 941
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 947
    .end local v1    # "prevActiveModemCount":I
    .end local v2    # "opImsService":Lcom/mediatek/ims/ext/IImsServiceExt;
    .end local v3    # "i":I
    :cond_a
    monitor-exit v0

    .line 948
    return-void

    .line 947
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method notifyRcsCapabilityChanged(ILandroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "c"    # Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    .line 3866
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mCapLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 3867
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/ImsService;->mRcsFeatureCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3868
    sget-object v1, Lcom/mediatek/ims/ImsService;->mRcsFeatureCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ImsService$IMtkRcsFeatureCallback;

    invoke-interface {v1, p2}, Lcom/mediatek/ims/ImsService$IMtkRcsFeatureCallback;->notifyCapabilitiesChanged(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V

    goto :goto_0

    .line 3870
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is not IMtkRcsFeatureCallback for slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3872
    :goto_0
    monitor-exit v0

    .line 3873
    return-void

    .line 3872
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyUtCapabilityChange(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 2286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyUtCapabilityChange, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2287
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v0, v0, p1

    const/16 v1, 0x1d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2289
    return-void
.end method

.method protected onAddImsSmsListener(ILandroid/telephony/ims/aidl/IImsSmsListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 3566
    invoke-static {p1}, Lcom/mediatek/ims/ImsService;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAddImsSmsListener() error phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3568
    return-void

    .line 3570
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAddImsSmsListener: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3571
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsSmsListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 3572
    .local v0, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/telephony/ims/aidl/IImsSmsListener;>;"
    monitor-enter v0

    .line 3573
    :try_start_0
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3575
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 3577
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMS SMS listener set size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3579
    monitor-exit v0

    .line 3580
    return-void

    .line 3579
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onAddRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;Z)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "serviceType"    # I
    .param p3, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .param p4, "mtklistener"    # Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;
    .param p5, "notifyOnly"    # Z

    .line 1061
    invoke-static {p1}, Lcom/mediatek/ims/ImsService;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAddRegistrationListener() error phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1063
    return-void

    .line 1065
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAddRegistrationListener: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " serviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mtklistener= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " notifyOnly= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1067
    if-eqz p5, :cond_1

    const-string v1, "true"

    goto :goto_0

    :cond_1
    const-string v1, "false"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1065
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1068
    if-nez p5, :cond_3

    .line 1069
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 1070
    .local v0, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    monitor-enter v0

    .line 1071
    :try_start_0
    invoke-virtual {v0, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1072
    const-string v1, "listener already exist"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1074
    :cond_2
    invoke-virtual {v0, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1075
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listener set size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1077
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1080
    .end local v0    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    aget v0, v0, p1

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    .line 1081
    invoke-direct {p0, p1, v0, v2}, Lcom/mediatek/ims/ImsService;->notifyRegistrationStateChange(IIZ)V

    .line 1084
    :cond_4
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    aget v0, v0, p1

    if-nez v0, :cond_5

    .line 1085
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsExtInfo:[I

    aget v0, v0, p1

    invoke-direct {p0, p1, v0, v2}, Lcom/mediatek/ims/ImsService;->notifyRegistrationCapabilityChange(IIZ)V

    .line 1087
    invoke-static {}, Lcom/mediatek/ims/internal/ImsXuiManager;->getInstance()Lcom/mediatek/ims/internal/ImsXuiManager;

    move-result-object v0

    .line 1088
    .local v0, "xuiManager":Lcom/mediatek/ims/internal/ImsXuiManager;
    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ImsService;->notifyRegistrationAssociatedUriChange(Lcom/mediatek/ims/internal/ImsXuiManager;I)V

    .line 1091
    .end local v0    # "xuiManager":Lcom/mediatek/ims/internal/ImsXuiManager;
    :cond_5
    if-nez p5, :cond_7

    .line 1092
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mMtkListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 1093
    .local v0, "mtklisteners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;>;"
    monitor-enter v0

    .line 1094
    :try_start_1
    invoke-virtual {v0, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1095
    const-string v1, "mtklistener already exist"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1097
    :cond_6
    invoke-virtual {v0, p4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1098
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mtklistener set size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mMtkListener:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1100
    :goto_3
    monitor-exit v0

    goto :goto_4

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 1103
    .end local v0    # "mtklisteners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;>;"
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegInd:[Lcom/mediatek/ims/ImsRegInfo;

    aget-object v0, v0, p1

    invoke-direct {p0, v0, p4, p1}, Lcom/mediatek/ims/ImsService;->notifyImsRegInd(Lcom/mediatek/ims/ImsRegInfo;Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;I)V

    .line 1104
    return-void
.end method

.method protected onClose(I)V
    .locals 4
    .param p1, "serviceId"    # I

    .line 1011
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1012
    move v1, p1

    .line 1015
    .local v1, "phoneId":I
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsEcbm:[Lcom/mediatek/ims/ImsEcbmProxy;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 1016
    invoke-virtual {v2}, Lcom/mediatek/ims/ImsEcbmProxy;->getImsEcbm()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/ims/internal/IImsEcbm;->setListener(Lcom/android/ims/internal/IImsEcbmListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1020
    :cond_0
    goto :goto_0

    .line 1022
    .end local v1    # "phoneId":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1018
    .restart local v1    # "phoneId":I
    :catch_0
    move-exception v2

    .line 1022
    .end local v1    # "phoneId":I
    :goto_0
    :try_start_1
    monitor-exit v0

    .line 1023
    return-void

    .line 1022
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onCreateCallProfile(III)Landroid/telephony/ims/ImsCallProfile;
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I

    .line 1107
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0, p2, p3}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    return-object v0
.end method

.method public onCreateCallSession(ILandroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Landroid/telephony/ims/aidl/IImsCallSessionListener;

    .line 1113
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/ims/ImsService;->onCreateCallSessionProxy(ILandroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;)Lcom/mediatek/ims/ImsCallSessionProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public onCreateCallSessionProxy(ILandroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;)Lcom/mediatek/ims/ImsCallSessionProxy;
    .locals 12
    .param p1, "serviceId"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Landroid/telephony/ims/aidl/IImsCallSessionListener;

    .line 1119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateCallSessionProxy: serviceId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " profile ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " listener ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1121
    const/4 v0, 0x0

    .line 1122
    .local v0, "sessionListener":Landroid/telephony/ims/ImsCallSessionListener;
    if-eqz p3, :cond_0

    .line 1123
    new-instance v1, Landroid/telephony/ims/ImsCallSessionListener;

    invoke-direct {v1, p3}, Landroid/telephony/ims/ImsCallSessionListener;-><init>(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V

    move-object v0, v1

    .line 1126
    :cond_0
    move v9, p1

    .line 1127
    .local v9, "phoneId":I
    new-instance v10, Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v6, v1, v9

    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v7, v1, v9

    move-object v1, v10

    move-object v3, p2

    move-object v4, v0

    move-object v5, p0

    move v8, v9

    invoke-direct/range {v1 .. v8}, Lcom/mediatek/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V

    .line 1130
    .local v10, "cs":Lcom/mediatek/ims/ImsCallSessionProxy;
    new-instance v11, Lcom/mediatek/ims/MtkImsCallSessionProxy;

    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v6, v1, v9

    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v7, v1, v9

    move-object v1, v11

    invoke-direct/range {v1 .. v8}, Lcom/mediatek/ims/MtkImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V

    .line 1133
    .local v1, "mtk_cs":Lcom/mediatek/ims/MtkImsCallSessionProxy;
    invoke-virtual {v1, v10}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->setAospCallSessionProxy(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 1134
    invoke-virtual {v10, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->setMtkCallSessionProxy(Lcom/mediatek/ims/MtkImsCallSessionProxy;)V

    .line 1136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateCallSessionProxy: cs.getServiceImpl() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1138
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mPendingMtkImsCallSessionProxy:Ljava/util/Map;

    invoke-virtual {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    return-object v10
.end method

.method public onCreateMtkCallSession(ILandroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/android/ims/internal/IImsCallSession;)Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .param p4, "aospCallSessionImpl"    # Lcom/android/ims/internal/IImsCallSession;

    .line 1148
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/ims/ImsService;->onCreateMtkCallSessionProxy(ILandroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/android/ims/internal/IImsCallSession;)Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v0

    .line 1150
    .local v0, "mtk_cs":Lcom/mediatek/ims/MtkImsCallSessionProxy;
    if-nez v0, :cond_0

    .line 1151
    const-string v1, "onCreateMtkCallSessionProxy: return null"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1152
    const/4 v1, 0x0

    return-object v1

    .line 1154
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getServiceImpl()Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v1

    return-object v1
.end method

.method public onCreateMtkCallSessionProxy(ILandroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/android/ims/internal/IImsCallSession;)Lcom/mediatek/ims/MtkImsCallSessionProxy;
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .param p4, "aospCallSessionImpl"    # Lcom/android/ims/internal/IImsCallSession;

    .line 1161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateMtkCallSessionProxy: aospCallSessionImpl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateMtkCallSessionProxy: containsKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mPendingMtkImsCallSessionProxy:Ljava/util/Map;

    invoke-interface {v1, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1164
    const/4 v0, 0x0

    .line 1166
    .local v0, "mtk_cs":Lcom/mediatek/ims/MtkImsCallSessionProxy;
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mPendingMtkImsCallSessionProxy:Ljava/util/Map;

    invoke-interface {v1, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1168
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mPendingMtkImsCallSessionProxy:Ljava/util/Map;

    invoke-interface {v1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 1169
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mPendingMtkImsCallSessionProxy:Ljava/util/Map;

    invoke-interface {v1, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    :cond_0
    return-object v0
.end method

.method public onGetConfigInterface(I)Lcom/android/ims/internal/IImsConfig;
    .locals 2
    .param p1, "phoneId"    # I

    .line 1321
    invoke-static {p1}, Lcom/mediatek/ims/ImsService;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetConfigInterface() error phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", use phone 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1323
    const/4 p1, 0x0

    .line 1326
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->bindAndRegisterMWIService()V

    .line 1328
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsConfigManager:Lcom/mediatek/ims/ImsConfigManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsConfigManager;->get(I)Lcom/android/ims/internal/IImsConfig;

    move-result-object v0

    return-object v0
.end method

.method protected onGetEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;
    .locals 2
    .param p1, "serviceId"    # I

    .line 1362
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ImsService;->onGetEcbmProxy(I)Landroid/telephony/ims/stub/ImsEcbmImplBase;

    move-result-object v0

    .line 1364
    .local v0, "imsEcbmImplBase":Landroid/telephony/ims/stub/ImsEcbmImplBase;
    if-nez v0, :cond_0

    .line 1365
    const/4 v1, 0x0

    return-object v1

    .line 1367
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsEcbmImplBase;->getImsEcbm()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v1

    return-object v1
.end method

.method public onGetEcbmProxy(I)Landroid/telephony/ims/stub/ImsEcbmImplBase;
    .locals 5
    .param p1, "serviceId"    # I

    .line 1374
    move v0, p1

    .line 1376
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsEcbm:[Lcom/mediatek/ims/ImsEcbmProxy;

    aget-object v2, v1, v0

    if-nez v2, :cond_0

    .line 1377
    new-instance v2, Lcom/mediatek/ims/ImsEcbmProxy;

    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v4, v4, v0

    invoke-direct {v2, v3, v4, v0}, Lcom/mediatek/ims/ImsEcbmProxy;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V

    aput-object v2, v1, v0

    .line 1379
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsEcbm:[Lcom/mediatek/ims/ImsEcbmProxy;

    aget-object v1, v1, v0

    return-object v1
.end method

.method protected onGetMtkUtInterface(I)Lcom/mediatek/ims/internal/IMtkImsUt;
    .locals 3
    .param p1, "phoneId"    # I

    .line 1296
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "onGetMtkUtInterface"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    invoke-static {p1}, Lcom/mediatek/ims/ImsService;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetMtkUtInterface() error phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", use phone 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1301
    const/4 p1, 0x0

    .line 1303
    :cond_0
    const/4 v0, 0x0

    .line 1304
    .local v0, "inst":Lcom/mediatek/ims/internal/IMtkImsUt;
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1305
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p0}, Lcom/mediatek/ims/MtkImsUtImpl;->getInstance(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/MtkImsUtImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/MtkImsUtImpl;->getInterface()Lcom/mediatek/ims/internal/IMtkImsUt;

    move-result-object v0

    goto :goto_0

    .line 1307
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeLegacyComponentFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/LegacyComponentFactory;

    move-result-object v1

    .line 1308
    .local v1, "factory":Lcom/mediatek/ims/plugin/LegacyComponentFactory;
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2, p1, p0}, Lcom/mediatek/ims/plugin/LegacyComponentFactory;->makeMtkImsUt(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/feature/MtkImsUtImplBase;

    move-result-object v2

    .line 1309
    .local v2, "utImpl":Lcom/mediatek/ims/feature/MtkImsUtImplBase;
    if-eqz v2, :cond_2

    .line 1310
    invoke-virtual {v2}, Lcom/mediatek/ims/feature/MtkImsUtImplBase;->getInterface()Lcom/mediatek/ims/internal/IMtkImsUt;

    move-result-object v0

    .line 1314
    .end local v1    # "factory":Lcom/mediatek/ims/plugin/LegacyComponentFactory;
    .end local v2    # "utImpl":Lcom/mediatek/ims/feature/MtkImsUtImplBase;
    :cond_2
    :goto_0
    return-object v0
.end method

.method protected onGetMultiEndpointInterface(I)Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 2
    .param p1, "serviceId"    # I

    .line 1396
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ImsService;->onGetMultiEndpointProxy(I)Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    move-result-object v0

    .line 1398
    .local v0, "imsMultiendPoinImplBase":Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    if-nez v0, :cond_0

    .line 1399
    const/4 v1, 0x0

    return-object v1

    .line 1401
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->getIImsMultiEndpoint()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v1

    return-object v1
.end method

.method public onGetMultiEndpointProxy(I)Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    .locals 4
    .param p1, "serviceId"    # I

    .line 1405
    move v0, p1

    .line 1407
    .local v0, "phoneId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetMultiEndpointProxy phoneId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1408
    iget v1, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    if-lt v0, v1, :cond_0

    .line 1409
    const/4 v1, 0x0

    return-object v1

    .line 1411
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mMultiEndpoints:[Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;

    aget-object v2, v1, v0

    if-nez v2, :cond_1

    .line 1412
    new-instance v2, Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;

    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 1413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetMultiEndpointProxy instance is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mMultiEndpoints:[Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1415
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mMultiEndpoints:[Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;

    aget-object v1, v1, v0

    return-object v1
.end method

.method protected onGetPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 4
    .param p1, "serviceId"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .line 1247
    move v0, p1

    .line 1250
    .local v0, "phoneId":I
    iget v1, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mPendingMT:[Lcom/mediatek/ims/ImsCallSessionProxy;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 1255
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetPendingCallSession() : serviceId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", callId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mPendingMT"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mPendingMT:[Lcom/mediatek/ims/ImsCallSessionProxy;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1258
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mPendingMT:[Lcom/mediatek/ims/ImsCallSessionProxy;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    .line 1261
    .local v1, "pendingMTsession":Lcom/android/ims/internal/IImsCallSession;
    :try_start_0
    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1262
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mPendingMT:[Lcom/mediatek/ims/ImsCallSessionProxy;

    aput-object v2, v3, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1263
    return-object v1

    .line 1267
    :cond_1
    goto :goto_0

    .line 1265
    :catch_0
    move-exception v3

    .line 1269
    :goto_0
    return-object v2

    .line 1251
    .end local v1    # "pendingMTsession":Lcom/android/ims/internal/IImsCallSession;
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetPendingCallSession() : no pendingMT or wrong phoneId "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1252
    return-object v2
.end method

.method onGetPendingMtkCallSession(ILjava/lang/String;)Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .line 3390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetPendingMtkCallSession() : callId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPendingMT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mMtkPendingMT:[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3394
    iget v0, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    const/4 v1, 0x0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mMtkPendingMT:[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 3398
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getServiceImpl()Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 3401
    .local v0, "pendingMTsession":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :try_start_0
    invoke-interface {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3402
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mMtkPendingMT:[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getAospCallSessionProxy()Lcom/mediatek/ims/ImsCallSessionProxy;

    move-result-object v2

    .line 3404
    .local v2, "aospCallSession":Lcom/mediatek/ims/ImsCallSessionProxy;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGetPendingMtkCallSession() : aospCallSession = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3406
    if-eqz v2, :cond_1

    .line 3407
    invoke-virtual {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 3409
    .local v3, "aospCallSessionImpl":Lcom/android/ims/internal/IImsCallSession;
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mPendingMtkImsCallSessionProxy:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3410
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mPendingMtkImsCallSessionProxy:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3413
    .end local v3    # "aospCallSessionImpl":Lcom/android/ims/internal/IImsCallSession;
    :cond_1
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mMtkPendingMT:[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    aput-object v1, v3, p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3415
    return-object v0

    .line 3419
    .end local v2    # "aospCallSession":Lcom/mediatek/ims/ImsCallSessionProxy;
    :cond_2
    goto :goto_0

    .line 3417
    :catch_0
    move-exception v2

    .line 3421
    :goto_0
    return-object v1

    .line 3395
    .end local v0    # "pendingMTsession":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :cond_3
    :goto_1
    return-object v1
.end method

.method protected onGetUtInterface(I)Lcom/android/ims/internal/IImsUt;
    .locals 4
    .param p1, "phoneId"    # I

    .line 1276
    const/4 v0, 0x0

    .line 1278
    .local v0, "inst":Lcom/android/ims/internal/IImsUt;
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const-string v3, "onGetUtInterface"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1282
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p0}, Lcom/mediatek/ims/ImsUtImpl;->getInstance(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/ImsUtImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsUtImpl;->getInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object v0

    goto :goto_0

    .line 1284
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeLegacyComponentFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/LegacyComponentFactory;

    move-result-object v1

    .line 1285
    .local v1, "factory":Lcom/mediatek/ims/plugin/LegacyComponentFactory;
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2, p1, p0}, Lcom/mediatek/ims/plugin/LegacyComponentFactory;->makeImsUt(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)Landroid/telephony/ims/stub/ImsUtImplBase;

    move-result-object v2

    .line 1286
    .local v2, "utImpl":Landroid/telephony/ims/stub/ImsUtImplBase;
    if-eqz v2, :cond_1

    .line 1287
    invoke-virtual {v2}, Landroid/telephony/ims/stub/ImsUtImplBase;->getInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object v0

    .line 1291
    .end local v1    # "factory":Lcom/mediatek/ims/plugin/LegacyComponentFactory;
    .end local v2    # "utImpl":Landroid/telephony/ims/stub/ImsUtImplBase;
    :cond_1
    :goto_0
    return-object v0
.end method

.method protected onHangupAllCall(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 1457
    invoke-static {p1}, Lcom/mediatek/ims/ImsService;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHangupAllCall() error phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1459
    return-void

    .line 1461
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->hangupAllCall(Landroid/os/Message;)V

    .line 1462
    return-void
.end method

.method protected onIsConnected(III)Z
    .locals 2
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I

    .line 1032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIsConnected: serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1034
    move v0, p1

    .line 1035
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected onIsOpened(I)Z
    .locals 3
    .param p1, "serviceId"    # I

    .line 1044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIsOpened: serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1045
    move v0, p1

    .line 1046
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 1048
    .local v1, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method protected onOpen(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "serviceClass"    # I
    .param p3, "incomingCallIntent"    # Landroid/app/PendingIntent;
    .param p4, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOpen: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " serviceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ImsService;->mapPhoneIdToServiceId(I)I

    move-result v0

    .line 1005
    .local v0, "serviceId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOpen: serviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->englog(Ljava/lang/String;)V

    .line 1006
    return v0
.end method

.method protected onRunGbaAuthentication(Ljava/lang/String;[BZII)Lcom/mediatek/gba/NafSessionKey;
    .locals 9
    .param p1, "nafFqdn"    # Ljava/lang/String;
    .param p2, "nafSecureProtocolId"    # [B
    .param p3, "forceRun"    # Z
    .param p4, "netId"    # I
    .param p5, "phoneId"    # I

    .line 1222
    invoke-static {p5}, Lcom/mediatek/ims/ImsService;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRunGbaAuthentication() error phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", use phone 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1224
    const/4 p5, 0x0

    .line 1226
    :cond_0
    new-instance v0, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;-><init>(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/ImsService$1;)V

    .line 1227
    .local v0, "result":Lcom/mediatek/ims/ImsService$NafSessionKeyResult;
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v1, v1, p5

    const/16 v2, 0x17

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1229
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, v0, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->lockObj:Ljava/lang/Object;

    monitor-enter v2

    .line 1230
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v3, v3, p5

    .line 1231
    invoke-static {p2}, Lcom/mediatek/ims/ImsCommonUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    .line 1230
    move-object v4, p1

    move v6, p3

    move v7, p4

    move-object v8, v1

    invoke-interface/range {v3 .. v8}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->runGbaAuthentication(Ljava/lang/String;Ljava/lang/String;ZILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1233
    :try_start_1
    iget-object v3, v0, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->lockObj:Ljava/lang/Object;

    const-wide/16 v4, 0x7530

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1237
    goto :goto_0

    .line 1234
    :catch_0
    move-exception v3

    .line 1235
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v4, "onRunGbaAuthentication() InterruptedException occured"

    invoke-direct {p0, v4}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1236
    const/4 v4, 0x2

    iput v4, v0, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->cmdResult:I

    .line 1238
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRunGbaAuthentication complete, nafSessionKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->nafSessionKey:Lcom/mediatek/gba/NafSessionKey;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cmdResult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->cmdResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1242
    iget-object v2, v0, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->nafSessionKey:Lcom/mediatek/gba/NafSessionKey;

    return-object v2

    .line 1238
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method protected onSetCallIndication(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "callNum"    # Ljava/lang/String;
    .param p4, "seqNum"    # I
    .param p5, "toNumber"    # Ljava/lang/String;
    .param p6, "isAllow"    # Z
    .param p7, "cause"    # I

    .line 3323
    invoke-static {p1}, Lcom/mediatek/ims/ImsService;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetCallIndication() error phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3325
    return-void

    .line 3327
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mRedirectIncomingAsyncResult:Landroid/os/AsyncResult;

    const-string v1, ", seqNum:"

    const-string v2, "onSetCallIndication() error callId:"

    if-eqz v0, :cond_2

    .line 3328
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mRedirectIncomingAsyncResult:Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v0, v0, v3

    .line 3329
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eq p4, v0, :cond_4

    .line 3330
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3331
    return-void

    .line 3334
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mPendingMTCallId:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mPendingMTSeqNum:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 3335
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eq p4, v0, :cond_3

    goto :goto_0

    .line 3339
    :cond_3
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mPendingMTSeqNum:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, p1

    .line 3342
    :cond_4
    invoke-direct/range {p0 .. p7}, Lcom/mediatek/ims/ImsService;->setCallIndicationInternal(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V

    .line 3343
    return-void

    .line 3336
    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3337
    return-void
.end method

.method protected onSetRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 2
    .param p1, "serviceId"    # I
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 1055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetRegistrationListener: serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1056
    return-void
.end method

.method protected onSetUiTTYMode(IILandroid/os/Message;)V
    .locals 2
    .param p1, "serviceId"    # I
    .param p2, "uiTtyMode"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 1386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetUiTTYMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1387
    move v0, p1

    .line 1389
    .local v0, "phoneId":I
    return-void
.end method

.method protected onTurnOffIms(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 1355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "turnOffIms, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1356
    return-void
.end method

.method protected onTurnOnIms(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 1342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "turnOnIms phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1343
    return-void
.end method

.method protected onUpdateImsSate(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 2019
    invoke-static {p1}, Lcom/mediatek/ims/ImsService;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateImsSate() error phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 2021
    return-void

    .line 2023
    :cond_0
    const-string v0, "request onUpdateImsSate for ImsManager add local registrant"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2024
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    aget v0, v0, p1

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 2025
    invoke-direct {p0, p1, v0, v2}, Lcom/mediatek/ims/ImsService;->notifyRegistrationStateChange(IIZ)V

    .line 2028
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    aget v0, v0, p1

    if-nez v0, :cond_2

    .line 2029
    invoke-static {}, Lcom/mediatek/ims/internal/ImsXuiManager;->getInstance()Lcom/mediatek/ims/internal/ImsXuiManager;

    move-result-object v0

    .line 2030
    .local v0, "xuiManager":Lcom/mediatek/ims/internal/ImsXuiManager;
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsExtInfo:[I

    aget v1, v1, p1

    invoke-direct {p0, p1, v1, v2}, Lcom/mediatek/ims/ImsService;->notifyRegistrationCapabilityChange(IIZ)V

    .line 2031
    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ImsService;->notifyRegistrationAssociatedUriChange(Lcom/mediatek/ims/internal/ImsXuiManager;I)V

    .line 2033
    .end local v0    # "xuiManager":Lcom/mediatek/ims/internal/ImsXuiManager;
    :cond_2
    return-void
.end method

.method public sendSms(IIILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 13
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .param p3, "messageRef"    # I
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "smsc"    # Ljava/lang/String;
    .param p6, "isRetry"    # Z
    .param p7, "pdu"    # [B

    .line 3588
    move-object v0, p0

    move v1, p1

    move v10, p2

    invoke-static {p1}, Lcom/mediatek/ims/ImsService;->isValidPhoneId(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3589
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSms() error phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3590
    return-void

    .line 3592
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSms, token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", messageRef "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v11, p3

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3593
    iget-object v2, v0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v2, v2, v1

    const/16 v3, 0x1c

    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    .line 3594
    .local v12, "response":Landroid/os/Message;
    iget-object v2, v0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v2, v2, v1

    move v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object v9, v12

    invoke-interface/range {v2 .. v9}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->sendSms(IILjava/lang/String;Ljava/lang/String;Z[BLandroid/os/Message;)V

    .line 3595
    return-void
.end method

.method public setImsPreCallInfo(IILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;[Ljava/lang/String;)V
    .locals 18
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "fromUri"    # Ljava/lang/String;
    .param p6, "location"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4424
    .local p5, "extraHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    const-string v5, "1"

    const-string v6, ","

    const-string v7, ""

    if-nez p5, :cond_0

    if-eqz v2, :cond_6

    .line 4425
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 4427
    .local v8, "headerInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 4428
    .local v9, "headerCount":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 4429
    .local v10, "headerValuePair":Ljava/lang/StringBuilder;
    if-eqz p5, :cond_2

    .line 4430
    invoke-virtual/range {p5 .. p5}, Ljava/util/HashMap;->size()I

    move-result v11

    .line 4431
    .local v11, "size":I
    invoke-virtual/range {p5 .. p5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 4432
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 4433
    .local v14, "key":Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 4434
    .local v15, "value":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v12

    const-string v12, "setImsPreCallInfo key: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, ", value: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 4435
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v0, v14}, Lcom/mediatek/ims/ImsService;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {v0, v15}, Lcom/mediatek/ims/ImsService;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4436
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    move-object/from16 v12, v16

    goto :goto_0

    .line 4437
    :cond_1
    add-int/2addr v9, v11

    .line 4440
    .end local v11    # "size":I
    :cond_2
    if-eqz v2, :cond_3

    .line 4441
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "f"

    invoke-direct {v0, v11}, Lcom/mediatek/ims/ImsService;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {v0, v2}, Lcom/mediatek/ims/ImsService;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4442
    add-int/lit8 v9, v9, 0x1

    .line 4446
    :cond_3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4447
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4448
    .local v4, "header":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setImsPreCallInfo headerValuePair: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 4450
    const/16 v11, 0x3e8

    .line 4451
    .local v11, "maxLength":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4452
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4453
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    div-int/2addr v12, v11

    add-int/lit8 v12, v12, 0x1

    .line 4454
    .local v12, "total":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4455
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4456
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4457
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4458
    const/4 v13, 0x1

    .local v13, "i":I
    :goto_1
    if-gt v13, v12, :cond_5

    .line 4459
    const/4 v14, 0x3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4460
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    add-int/lit8 v14, v13, -0x1

    mul-int/lit16 v14, v14, 0x3e8

    mul-int/lit16 v2, v13, 0x3e8

    move/from16 v17, v9

    .end local v9    # "headerCount":I
    .local v17, "headerCount":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 4461
    mul-int/lit16 v2, v13, 0x3e8

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 4460
    :goto_2
    invoke-virtual {v4, v14, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x5

    invoke-virtual {v8, v9, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4462
    iget-object v2, v0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v2, v2, p1

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setCallAdditionalInfo(Ljava/util/ArrayList;Landroid/os/Message;)V

    .line 4458
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p4

    move/from16 v9, v17

    goto :goto_1

    .end local v17    # "headerCount":I
    .restart local v9    # "headerCount":I
    :cond_5
    move/from16 v17, v9

    .line 4467
    .end local v4    # "header":Ljava/lang/String;
    .end local v8    # "headerInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "headerCount":I
    .end local v10    # "headerValuePair":Ljava/lang/StringBuilder;
    .end local v11    # "maxLength":I
    .end local v12    # "total":I
    .end local v13    # "i":I
    :cond_6
    if-eqz v3, :cond_8

    .line 4468
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4470
    .local v2, "locationInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 4471
    .local v4, "locationString":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    array-length v9, v3

    if-ge v8, v9, :cond_7

    .line 4472
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v3, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4471
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 4476
    .end local v8    # "i":I
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4477
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4478
    const-string v6, "2"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4479
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4480
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4481
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4482
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4483
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setImsPreCallInfo locationString: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 4484
    iget-object v5, v0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v5, v5, p1

    const/4 v6, 0x0

    invoke-interface {v5, v2, v6}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setCallAdditionalInfo(Ljava/util/ArrayList;Landroid/os/Message;)V

    .line 4486
    .end local v2    # "locationInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "locationString":Ljava/lang/StringBuilder;
    :cond_8
    return-void
.end method

.method public setImsRegistration(ILcom/mediatek/ims/MtkImsRegistrationImpl;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "imsRegImpl"    # Lcom/mediatek/ims/MtkImsRegistrationImpl;

    .line 3892
    sget-object v0, Lcom/mediatek/ims/ImsService;->sMtkImsRegImpl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3893
    if-eqz p2, :cond_3

    .line 3894
    sget-object v0, Lcom/mediatek/ims/ImsService;->sMtkImsRegImpl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3895
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    aget v0, v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    .line 3896
    if-nez v0, :cond_0

    .line 3898
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ImsService;->getRadioTech(I)I

    move-result v0

    .line 3899
    .local v0, "radioTech":I
    nop

    .line 3901
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ImsService;->convertImsRegistrationTech(I)I

    move-result v4

    .line 3899
    invoke-virtual {p0, p1, v2, v4, v1}, Lcom/mediatek/ims/ImsService;->updateImsRegstration(IIILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "radioTech":I
    goto :goto_0

    .line 3902
    :catch_0
    move-exception v0

    .line 3903
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to get radio tech "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3904
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 3905
    :cond_0
    if-ne v0, v3, :cond_1

    .line 3906
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->createImsReasonInfo(I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 3907
    .local v0, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    const/4 v5, -0x1

    invoke-virtual {p0, p1, v4, v5, v0}, Lcom/mediatek/ims/ImsService;->updateImsRegstration(IIILandroid/telephony/ims/ImsReasonInfo;)V

    .line 3913
    .end local v0    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :cond_1
    :goto_1
    invoke-static {}, Lcom/mediatek/ims/internal/ImsXuiManager;->getInstance()Lcom/mediatek/ims/internal/ImsXuiManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/ImsXuiManager;->getSelfIdentifyUri(I)[Landroid/net/Uri;

    move-result-object v0

    .line 3914
    .local v0, "uris":[Landroid/net/Uri;
    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/ImsService;->updateAssociatedUriChanged(I[Landroid/net/Uri;)V

    .line 3916
    invoke-static {}, Lcom/mediatek/ims/rcs/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v4

    .line 3917
    .local v4, "uaSrvMgr":Lcom/mediatek/ims/rcs/UaServiceManager;
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getDefaultRcsPhoneId()I

    move-result v5

    if-ne p1, v5, :cond_3

    if-eqz v4, :cond_3

    .line 3918
    invoke-virtual {v4}, Lcom/mediatek/ims/rcs/UaServiceManager;->imsRegistered()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3919
    invoke-virtual {v4}, Lcom/mediatek/ims/rcs/UaServiceManager;->getRegistrationInfo()Lcom/mediatek/ims/rcsua/RegistrationInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->getRegMode()I

    move-result v5

    if-ne v5, v2, :cond_3

    .line 3920
    invoke-virtual {v4}, Lcom/mediatek/ims/rcs/UaServiceManager;->readConfiguraion()Lcom/mediatek/ims/rcsua/Configuration;

    move-result-object v2

    .line 3921
    .local v2, "config":Lcom/mediatek/ims/rcsua/Configuration;
    nop

    .line 3922
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/mediatek/ims/rcsua/Configuration;->getPAssociatedUri()[Ljava/lang/String;

    move-result-object v1

    .line 3921
    :cond_2
    invoke-virtual {p0, p1, v3, v1}, Lcom/mediatek/ims/ImsService;->updateRoiRegistration(IZ[Ljava/lang/String;)V

    .line 3925
    .end local v0    # "uris":[Landroid/net/Uri;
    .end local v2    # "config":Lcom/mediatek/ims/rcsua/Configuration;
    .end local v4    # "uaSrvMgr":Lcom/mediatek/ims/rcs/UaServiceManager;
    :cond_3
    return-void
.end method

.method public setMTRedirect(IZ)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z

    .line 4298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMTRedirect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 4299
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mIsMTredirect:[Z

    aput-boolean p2, v0, p1

    .line 4300
    return-void
.end method

.method public setMmTelFeatureCallback(ILcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;)V
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "c"    # Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    .line 3781
    sget-object v0, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3782
    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/mediatek/ims/ImsService;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3783
    sget-object v0, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3784
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-interface {p2, v0}, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;->notifyContextChanged(Landroid/content/Context;)V

    .line 3787
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.ims.MTK_MMTEL_READY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3788
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.mediatek.ims"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3789
    const-string v1, "android:phone_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3790
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3793
    const/4 v1, 0x6

    new-array v2, v1, [I

    .line 3794
    .local v2, "enabledFeatures":[I
    new-array v1, v1, [I

    .line 3795
    .local v1, "disabledFeatures":[I
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mImsExtInfo:[I

    aget v3, v3, p1

    invoke-direct {p0, p1, v3, v2, v1}, Lcom/mediatek/ims/ImsService;->updateCapabilityChange(II[I[I)V

    .line 3798
    invoke-direct {p0, p1, v2, v1}, Lcom/mediatek/ims/ImsService;->updateUtCapabilityChange(I[I[I)V

    .line 3801
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->convertCapabilities([I)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v3

    .line 3802
    .local v3, "capabilities":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mImsExtInfo:[I

    aget v4, v4, p1

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_0

    .line 3803
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 3806
    :cond_0
    invoke-static {p1}, Lcom/mediatek/ims/ImsCommonUtil;->isDefaultRcsPhoneId(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3807
    invoke-static {}, Lcom/mediatek/ims/rcs/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v4

    .line 3808
    .local v4, "uaSrvMgr":Lcom/mediatek/ims/rcs/UaServiceManager;
    if-eqz v4, :cond_1

    .line 3809
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/mediatek/ims/rcs/UaServiceManager;->setCcNotified(Z)V

    .line 3810
    invoke-virtual {v4}, Lcom/mediatek/ims/rcs/UaServiceManager;->imsRegistered()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/mediatek/ims/rcs/UaServiceManager;->getCapabilities()Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 3811
    const-string v5, "+g.gsma.callcomposer"

    .line 3812
    .local v5, "capCallComposer":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/mediatek/ims/rcs/UaServiceManager;->getCapabilities()Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v6

    const-string v7, "+g.gsma.callcomposer"

    invoke-virtual {v6, v7}, Lcom/mediatek/ims/rcsua/Capability;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3813
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/mediatek/ims/rcs/UaServiceManager;->setCcNotified(Z)V

    .line 3814
    const/16 v6, 0x10

    invoke-virtual {v3, v6}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 3819
    .end local v4    # "uaSrvMgr":Lcom/mediatek/ims/rcs/UaServiceManager;
    .end local v5    # "capCallComposer":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/mediatek/ims/ImsService;->notifyCapabilityChanged(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    .line 3821
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "disabledFeatures":[I
    .end local v2    # "enabledFeatures":[I
    .end local v3    # "capabilities":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    :cond_2
    return-void
.end method

.method public setRcsFeatureCallback(ILcom/mediatek/ims/ImsService$IMtkRcsFeatureCallback;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "rcsCallback"    # Lcom/mediatek/ims/ImsService$IMtkRcsFeatureCallback;

    .line 3760
    sget-object v0, Lcom/mediatek/ims/ImsService;->mRcsFeatureCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3761
    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/mediatek/ims/ImsService;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3762
    sget-object v0, Lcom/mediatek/ims/ImsService;->mRcsFeatureCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3763
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-interface {p2, v0}, Lcom/mediatek/ims/ImsService$IMtkRcsFeatureCallback;->notifyContextChanged(Landroid/content/Context;)V

    .line 3766
    new-instance v0, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;-><init>(I)V

    .line 3767
    .local v0, "capabilities":Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->rcsSingleRegistrationCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3768
    invoke-static {}, Lcom/mediatek/ims/rcs/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda5;-><init>(Lcom/mediatek/ims/ImsService;Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V

    .line 3769
    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 3773
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ImsService;->notifyRcsCapabilityChanged(ILandroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V

    .line 3775
    .end local v0    # "capabilities":Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;
    :cond_1
    return-void
.end method

.method public setSipHeader(ILjava/util/HashMap;Ljava/lang/String;)V
    .locals 10
    .param p1, "phoneId"    # I
    .param p3, "fromUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4313
    .local p2, "extraHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSipHeader phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fromUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extraHeaders: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 4315
    const/4 v0, 0x0

    .line 4316
    .local v0, "headerCount":I
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 4317
    return-void

    .line 4320
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4321
    .local v1, "headerValuePair":Ljava/lang/StringBuilder;
    const-string v2, ","

    if-eqz p2, :cond_2

    .line 4322
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 4323
    .local v3, "size":I
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 4324
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4325
    .local v6, "key":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 4326
    .local v7, "value":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setSipHeader key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 4327
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/ims/ImsService;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4328
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    goto :goto_0

    .line 4329
    :cond_1
    add-int/2addr v0, v3

    .line 4332
    .end local v3    # "size":I
    :cond_2
    if-eqz p3, :cond_3

    .line 4333
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "f,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4334
    add-int/lit8 v0, v0, 0x1

    .line 4338
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSipHeader headerValuePair: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 4342
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v3, v2, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v7, "0"

    invoke-interface/range {v3 .. v8}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setSipHeader(IIILjava/lang/String;Landroid/os/Message;)V

    .line 4345
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v2, v2, p1

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move v5, v0

    invoke-interface/range {v2 .. v7}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setSipHeader(IIILjava/lang/String;Landroid/os/Message;)V

    .line 4346
    return-void
.end method

.method public setSipTransport(ILcom/mediatek/ims/rcs/MtkSipTransportImpl;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "sipTransportImpl"    # Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    .line 3928
    sget-object v0, Lcom/mediatek/ims/ImsService;->sMtkSipTranportImpl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3929
    if-eqz p2, :cond_0

    .line 3930
    sget-object v0, Lcom/mediatek/ims/ImsService;->sMtkSipTranportImpl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3932
    :cond_0
    return-void
.end method

.method public setWfcRegErrorCode(II)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "errorCode"    # I

    .line 4413
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mWfcRegErrorCode:[I

    aput p2, v0, p1

    .line 4414
    return-void
.end method

.method public setWfcRegErrorCodeWithPdn(II)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "errorCode"    # I

    .line 4406
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mWfcPdnState:[I

    aget v0, v0, p1

    if-eqz v0, :cond_0

    .line 4408
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mWfcRegErrorCode:[I

    aput p2, v0, p1

    .line 4410
    :cond_0
    return-void
.end method

.method updateImsRegstration(IIILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "state"    # I
    .param p3, "imsRadioTech"    # I
    .param p4, "reason"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3942
    sget-object v0, Lcom/mediatek/ims/ImsService;->sMtkImsRegImpl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/MtkImsRegistrationImpl;

    .line 3943
    .local v0, "imsReg":Lcom/mediatek/ims/MtkImsRegistrationImpl;
    if-eqz v0, :cond_6

    .line 3945
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " updateImsRegstration, tech "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3947
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_4

    .line 3979
    :pswitch_0
    invoke-virtual {v0, p4}, Lcom/mediatek/ims/MtkImsRegistrationImpl;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_4

    .line 3952
    :pswitch_1
    const/4 v1, 0x0

    .line 3953
    .local v1, "featureTags":Ljava/util/Set;
    invoke-static {}, Lcom/mediatek/ims/rcs/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v2

    .line 3954
    .local v2, "uaSrvMgr":Lcom/mediatek/ims/rcs/UaServiceManager;
    if-eqz v2, :cond_4

    invoke-static {p1}, Lcom/mediatek/ims/ImsCommonUtil;->isDefaultRcsPhoneId(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3955
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->rcsSingleRegistrationCapable()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_4

    .line 3957
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/mediatek/ims/rcs/UaServiceManager;->isActivated()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3958
    invoke-virtual {v2}, Lcom/mediatek/ims/rcs/UaServiceManager;->getCapabilities()Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v5

    .line 3959
    .local v5, "capability":Lcom/mediatek/ims/rcsua/Capability;
    if-eqz v5, :cond_0

    .line 3960
    invoke-virtual {v5}, Lcom/mediatek/ims/rcsua/Capability;->toFeatureTags()Ljava/util/Set;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v6

    .line 3966
    .end local v5    # "capability":Lcom/mediatek/ims/rcsua/Capability;
    :cond_0
    if-eqz v1, :cond_1

    .line 3967
    :try_start_2
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    .line 3966
    :goto_0
    invoke-virtual {v2, v3}, Lcom/mediatek/ims/rcs/UaServiceManager;->setUpdateRcsFeatureTagState(Z)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3968
    goto :goto_3

    .line 3966
    :catchall_0
    move-exception v5

    goto :goto_1

    .line 3963
    :catch_0
    move-exception v5

    .line 3964
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to updateImsRegstration! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3966
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_2

    .line 3967
    :try_start_4
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_0

    .line 3966
    :goto_1
    if-eqz v1, :cond_3

    .line 3967
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v6

    if-lez v6, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    .line 3966
    :goto_2
    invoke-virtual {v2, v3}, Lcom/mediatek/ims/rcs/UaServiceManager;->setUpdateRcsFeatureTagState(Z)V

    .line 3968
    nop

    .end local v0    # "imsReg":Lcom/mediatek/ims/MtkImsRegistrationImpl;
    .end local p0    # "this":Lcom/mediatek/ims/ImsService;
    .end local p1    # "slotId":I
    .end local p2    # "state":I
    .end local p3    # "imsRadioTech":I
    .end local p4    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    throw v5

    .line 3970
    .restart local v0    # "imsReg":Lcom/mediatek/ims/MtkImsRegistrationImpl;
    .restart local p0    # "this":Lcom/mediatek/ims/ImsService;
    .restart local p1    # "slotId":I
    .restart local p2    # "state":I
    .restart local p3    # "imsRadioTech":I
    .restart local p4    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 3971
    new-instance v3, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda8;-><init>(Lcom/mediatek/ims/ImsService;)V

    invoke-interface {v1, v3}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 3972
    new-instance v3, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    invoke-direct {v3, p3}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;-><init>(I)V

    .line 3973
    invoke-virtual {v3, v1}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->setFeatureTags(Ljava/util/Set;)Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->build()Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object v3

    .line 3972
    invoke-virtual {v0, v3}, Lcom/mediatek/ims/MtkImsRegistrationImpl;->onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    goto :goto_4

    .line 3975
    :cond_5
    invoke-virtual {v0, p3}, Lcom/mediatek/ims/MtkImsRegistrationImpl;->onRegistered(I)V

    .line 3977
    goto :goto_4

    .line 3949
    .end local v1    # "featureTags":Ljava/util/Set;
    .end local v2    # "uaSrvMgr":Lcom/mediatek/ims/rcs/UaServiceManager;
    :pswitch_2
    invoke-virtual {v0, p3}, Lcom/mediatek/ims/MtkImsRegistrationImpl;->onRegistering(I)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    .line 3950
    goto :goto_4

    .line 3981
    :catch_1
    move-exception v1

    .line 3982
    .local v1, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to updateImsRegstration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3983
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_4
    goto :goto_5

    .line 3985
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is not ImsRegistrationImpl for slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3987
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateRadioState(II)V
    .locals 12
    .param p1, "radioState"    # I
    .param p2, "phoneId"    # I

    .line 1502
    invoke-static {p2}, Lcom/mediatek/ims/ImsService;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRadioState() error phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1504
    return-void

    .line 1507
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRadioState, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " radioState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1509
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsService;->bindAndRegisterWifiOffloadService()V

    .line 1511
    sget-object v0, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    if-eqz v0, :cond_1

    .line 1513
    :try_start_0
    invoke-interface {v0, p2, p1}, Lcom/mediatek/wfo/IWifiOffloadService;->updateRadioState(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1514
    :catch_0
    move-exception v0

    .line 1515
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "can\'t update radio state"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1516
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 1518
    :cond_1
    const-string v0, "can\'t get WifiOffloadService"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1521
    :goto_1
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1522
    invoke-static {p2}, Lcom/mediatek/ims/ImsCommonUtil;->isPhoneIdSupportIms(I)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_2

    .line 1523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRadioState() not support IMS, phoneId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1524
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsConfigMccmnc:[Ljava/lang/String;

    aput-object v1, v0, p2

    .line 1525
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsConfigIccid:[Ljava/lang/String;

    aput-object v1, v0, p2

    .line 1526
    return-void

    .line 1529
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    move v3, v2

    :cond_3
    move v0, v3

    .line 1532
    .local v0, "isAirPlaneMode":Z
    if-eqz v0, :cond_4

    .line 1533
    return-void

    .line 1537
    :cond_4
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSimStateForSlotIndex(I)I

    move-result v3

    .line 1540
    .local v3, "simState":I
    const/16 v4, 0xa

    if-eq v3, v4, :cond_9

    .line 1541
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    .line 1542
    .local v5, "subMgr":Landroid/telephony/SubscriptionManager;
    const/4 v6, 0x0

    .line 1543
    .local v6, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v5, :cond_5

    .line 1544
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    .line 1546
    :cond_5
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    .line 1547
    .local v7, "iccid":Ljava/lang/String;
    :goto_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-direct {p0, v7}, Lcom/mediatek/ims/ImsService;->isOp09SimCard(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1548
    :cond_7
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/mediatek/ims/ImsService;->mWaitSubInfoChange:[Z

    aget-boolean v8, v8, p2

    if-eqz v8, :cond_9

    .line 1549
    :cond_8
    const-string v1, "updateRadioState CT sim state isn\'t loaded, don\'t update."

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1550
    return-void

    .line 1555
    .end local v5    # "subMgr":Landroid/telephony/SubscriptionManager;
    .end local v6    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v7    # "iccid":Ljava/lang/String;
    :cond_9
    const/4 v5, 0x2

    if-eq v5, p1, :cond_15

    .line 1556
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, p2

    const/16 v6, 0x12

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1557
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, p2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1559
    :cond_a
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, p2

    const/16 v6, 0x13

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1560
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, p2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1563
    :cond_b
    invoke-static {p2}, Lcom/mediatek/ims/OperatorUtils;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v5

    .line 1565
    .local v5, "currentMccmnc":Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mImsConfigMccmnc:[Ljava/lang/String;

    aget-object v6, v6, p2

    if-eqz v6, :cond_c

    .line 1566
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateRadioState, mImsConfigMccmnc[phoneId]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/ims/ImsService;->mImsConfigMccmnc:[Ljava/lang/String;

    aget-object v7, v7, p2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", currentMccmnc: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/ims/ImsService;->englog(Ljava/lang/String;)V

    goto :goto_3

    .line 1570
    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateRadioState, mImsConfigMccmnc[phoneId] is null, currentMccmnc: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/ims/ImsService;->englog(Ljava/lang/String;)V

    .line 1574
    :goto_3
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v6

    .line 1575
    .local v6, "subMgr":Landroid/telephony/SubscriptionManager;
    const/4 v7, 0x0

    .line 1576
    .local v7, "subInfo":Landroid/telephony/SubscriptionInfo;
    const/4 v8, 0x0

    .line 1578
    .local v8, "currentIccid":Ljava/lang/String;
    if-eqz v6, :cond_d

    .line 1579
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v7

    .line 1582
    :cond_d
    if-eqz v7, :cond_e

    .line 1583
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v8

    .line 1586
    :cond_e
    if-nez v8, :cond_f

    .line 1587
    const-string v8, ""

    .line 1590
    :cond_f
    iget-object v9, p0, Lcom/mediatek/ims/ImsService;->mImsConfigIccid:[Ljava/lang/String;

    aget-object v9, v9, p2

    const-string v10, "ImsService"

    if-eqz v9, :cond_10

    .line 1591
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateRadioState, mImsConfigIccid[phoneId]: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/mediatek/ims/ImsService;->mImsConfigIccid:[Ljava/lang/String;

    aget-object v11, v11, p2

    .line 1592
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", currentIccid: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1593
    invoke-static {v10, v8}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1591
    invoke-direct {p0, v9}, Lcom/mediatek/ims/ImsService;->englog(Ljava/lang/String;)V

    goto :goto_4

    .line 1595
    :cond_10
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateRadioState, mImsConfigIccid[phoneId] is null, currentIccid: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1596
    invoke-static {v10, v8}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1595
    invoke-direct {p0, v9}, Lcom/mediatek/ims/ImsService;->englog(Ljava/lang/String;)V

    .line 1601
    :goto_4
    iget-object v9, p0, Lcom/mediatek/ims/ImsService;->mImsConfigMccmnc:[Ljava/lang/String;

    aget-object v9, v9, p2

    if-eqz v9, :cond_11

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    iget-object v9, p0, Lcom/mediatek/ims/ImsService;->mImsConfigMccmnc:[Ljava/lang/String;

    aget-object v9, v9, p2

    .line 1602
    invoke-virtual {v9, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_11

    iget-object v9, p0, Lcom/mediatek/ims/ImsService;->mImsConfigIccid:[Ljava/lang/String;

    aget-object v9, v9, p2

    if-eqz v9, :cond_11

    .line 1603
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsConfigIccid:[Ljava/lang/String;

    aget-object v1, v1, p2

    .line 1604
    invoke-virtual {v1, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_15

    .line 1605
    :cond_11
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    if-nez v1, :cond_12

    .line 1606
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v1

    iget-object v9, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    .line 1607
    invoke-interface {v1, v9}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsManagerPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    .line 1610
    :cond_12
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsConfigMccmnc:[Ljava/lang/String;

    aput-object v5, v1, p2

    .line 1611
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsConfigIccid:[Ljava/lang/String;

    aput-object v8, v1, p2

    .line 1615
    if-eq v3, v4, :cond_13

    .line 1616
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v4, "carrier_volte_available_bool"

    invoke-virtual {v1, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1618
    .local v1, "defaultSupportVolte":Z
    if-nez v1, :cond_13

    .line 1620
    return-void

    .line 1626
    .end local v1    # "defaultSupportVolte":Z
    :cond_13
    if-eq v3, v2, :cond_14

    .line 1627
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_14

    .line 1628
    const-string v1, "updateRadioState sim is loading, don\'t update."

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1629
    return-void

    .line 1632
    :cond_14
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2, p2}, Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;->updateImsServiceConfig(Landroid/content/Context;I)V

    .line 1637
    .end local v0    # "isAirPlaneMode":Z
    .end local v3    # "simState":I
    .end local v5    # "currentMccmnc":Ljava/lang/String;
    .end local v6    # "subMgr":Landroid/telephony/SubscriptionManager;
    .end local v7    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v8    # "currentIccid":Ljava/lang/String;
    :cond_15
    return-void
.end method

.method updateRoiRegistration(IZ[Ljava/lang/String;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "registered"    # Z
    .param p3, "uris"    # [Ljava/lang/String;

    .line 3991
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 3992
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/mediatek/ims/ImsService;->updateImsRegstration(IIILandroid/telephony/ims/ImsReasonInfo;)V

    .line 3995
    if-eqz p3, :cond_1

    .line 3996
    invoke-static {p3}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda10;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 3997
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-array v1, v1, [Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    .line 3996
    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/ImsService;->updateAssociatedUriChanged(I[Landroid/net/Uri;)V

    goto :goto_0

    .line 4000
    :cond_0
    const/4 v2, 0x3

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/mediatek/ims/ImsService;->updateImsRegstration(IIILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4006
    :cond_1
    :goto_0
    goto :goto_1

    .line 4004
    :catch_0
    move-exception v0

    .line 4005
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to updateRoiRegstration!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 4007
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public updateSelfIdentity(I)V
    .locals 2
    .param p1, "phondId"    # I

    .line 4023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSelfIdentity, send EVENT_SELF_IDENTIFY_UPDATE, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 4024
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v0, v0, p1

    .line 4025
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4024
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4026
    return-void
.end method
