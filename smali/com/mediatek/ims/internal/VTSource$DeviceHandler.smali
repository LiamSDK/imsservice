.class Lcom/mediatek/ims/internal/VTSource$DeviceHandler;
.super Landroid/os/Handler;
.source "VTSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/VTSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceHandler"
.end annotation


# static fields
.field private static final MAX_RETRY_OPEN_CAMERA_COUNT:I = 0x19

.field public static final MSG_CLOSE_CAMERA:I = 0x9

.field public static final MSG_DEVICE_ORIENTATION:I = 0xb

.field public static final MSG_GET_CAMERA_CHARACTERISTICS:I = 0x8

.field public static final MSG_OPEN_CAMERA:I = 0x0

.field public static final MSG_PERFORM_ZOOM:I = 0x7

.field public static final MSG_RELEASE:I = 0xa

.field public static final MSG_RESTART_CAMERA:I = 0xc

.field public static final MSG_SET_PAUSE_IMAGE:I = 0xe

.field public static final MSG_START_PREVIEW:I = 0x1

.field public static final MSG_START_RECORDING:I = 0x4

.field public static final MSG_START_SCREEN_RECORDING:I = 0xf

.field public static final MSG_STOP_PREVIEW:I = 0x2

.field public static final MSG_STOP_RECORDING:I = 0x5

.field public static final MSG_STOP_RECORDING_PREVIEW:I = 0xd

.field public static final MSG_STOP_SCREEN_RECORDING:I = 0x10

.field public static final MSG_SUBMIT_REQUEST:I = 0x6

.field public static final MSG_UPDATE_RECORD_SURFACE:I = 0x3


# instance fields
.field private mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraId:Ljava/lang/String;

.field private mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private mDeviceConditionVariable:Landroid/os/ConditionVariable;

.field private mDeviceDegree:I

.field private mEventCallBack:Lcom/mediatek/ims/internal/VTSource$EventCallback;

.field private mHasAddTarget:Z

.field private mOutputConfigurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mRespondThread:Landroid/os/HandlerThread;

.field private mRetryCount:I

.field private mSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private mSessionConditionVariable:Landroid/os/ConditionVariable;

.field private mSessionUsedSurfaceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomValue:F

.field final synthetic this$0:Lcom/mediatek/ims/internal/VTSource;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/internal/VTSource;Landroid/os/Looper;Lcom/mediatek/ims/internal/VTSource$EventCallback;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "cb"    # Lcom/mediatek/ims/internal/VTSource$EventCallback;

    .line 744
    iput-object p1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    .line 745
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 733
    new-instance p1, Landroid/os/ConditionVariable;

    invoke-direct {p1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object p1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mDeviceConditionVariable:Landroid/os/ConditionVariable;

    .line 737
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mZoomValue:F

    .line 738
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mHasAddTarget:Z

    .line 740
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mSessionConditionVariable:Landroid/os/ConditionVariable;

    .line 741
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mSessionUsedSurfaceList:Ljava/util/List;

    .line 742
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mOutputConfigurations:Ljava/util/List;

    .line 1623
    new-instance v0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$1;-><init>(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 1682
    new-instance v0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$2;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler$2;-><init>(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 746
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VTSource-Respond"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mRespondThread:Landroid/os/HandlerThread;

    .line 747
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 748
    iput p1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mDeviceDegree:I

    .line 749
    iput-object p3, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mEventCallBack:Lcom/mediatek/ims/internal/VTSource$EventCallback;

    .line 750
    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    .line 707
    iget v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mRetryCount:I

    return v0
.end method

.method static synthetic access$1508(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)I
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    .line 707
    iget v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mRetryCount:I

    return v0
.end method

.method static synthetic access$1600(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    .line 707
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/VTSource$DeviceHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .line 707
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->doOpenCamera(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Landroid/os/ConditionVariable;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    .line 707
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mDeviceConditionVariable:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Lcom/mediatek/ims/internal/VTSource$EventCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    .line 707
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mEventCallBack:Lcom/mediatek/ims/internal/VTSource$EventCallback;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Landroid/hardware/camera2/CameraDevice;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    .line 707
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/VTSource$DeviceHandler;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraDevice;

    .line 707
    iput-object p1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/VTSource$DeviceHandler;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 707
    iput-object p1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/mediatek/ims/internal/VTSource$DeviceHandler;)Landroid/os/ConditionVariable;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    .line 707
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mSessionConditionVariable:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private calculateAeFpsRange()Landroid/util/Range;
    .locals 8

    .line 1090
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HDR] [calculateAeFpsRange] Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isVideoQualityTestMode()Z

    move-result v0

    const-string v1, "], Finish"

    const-string v2, ", "

    if-eqz v0, :cond_0

    .line 1093
    new-instance v0, Landroid/util/Range;

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1094
    .local v0, "preSetFps":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v3}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HDR] [calculateAeFpsRange] for VQ test, Range = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1095
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1094
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    return-object v0

    .line 1098
    .end local v0    # "preSetFps":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_0
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getPreConfigureFPS()I

    move-result v0

    .line 1099
    .local v0, "FpsInEM":I
    if-lez v0, :cond_1

    .line 1100
    new-instance v3, Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1101
    .local v3, "preSetFps":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v4}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HDR] [calculateAeFpsRange] fps is set in EM, Range = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1102
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1101
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    return-object v3

    .line 1107
    .end local v0    # "FpsInEM":I
    .end local v3    # "preSetFps":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Range;

    .line 1112
    .local v0, "availableFpsRange":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    aget-object v3, v0, v1

    .line 1113
    .local v3, "bestRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    array-length v4, v0

    :goto_0
    if-ge v1, v4, :cond_4

    aget-object v5, v0, v1

    .line 1114
    .local v5, "r":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 1115
    move-object v3, v5

    goto :goto_1

    .line 1116
    :cond_2
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    if-ne v6, v7, :cond_3

    .line 1117
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v6, v7, :cond_3

    .line 1118
    move-object v3, v5

    .line 1113
    .end local v5    # "r":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1122
    :cond_4
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v1}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HDR] [calculateAeFpsRange] Finish, Range = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1123
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1122
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    return-object v3
.end method

.method private calculateCropRegionByZoomValue(F)Landroid/graphics/Rect;
    .locals 5
    .param p1, "zoomValue"    # F

    .line 1071
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HDR] [calculateCropRegionByZoomValue] Start, zoomValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1074
    .local v0, "center":Landroid/graphics/PointF;
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1076
    .local v1, "maxZoom":F
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 1079
    .local v2, "sensorArraySize":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v3}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[HDR] [calculateCropRegionByZoomValue] Finish"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->getCropRegionForZoom(FLandroid/graphics/PointF;FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    return-object v3
.end method

.method private closeSession()V
    .locals 4

    .line 1048
    const-string v0, "[HDR] [closeSession] exception"

    const-string v1, "VT SRC"

    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v2}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HDR] [closeSession] Start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v2, :cond_0

    .line 1052
    :try_start_0
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 1053
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 1054
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1057
    :catch_0
    move-exception v2

    .line 1058
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1059
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/IllegalStateException;
    goto :goto_0

    .line 1055
    :catch_1
    move-exception v2

    .line 1056
    .local v2, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1060
    .end local v2    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    goto :goto_1

    .line 1063
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HDR] [closeSession] mCameraCaptureSession = NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    :goto_1
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HDR] [closeSession] Finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    return-void
.end method

.method private createSession()V
    .locals 7

    .line 980
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HDR] [createSession] Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HDR] [createSession] mCameraDevice is null !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    return-void

    .line 986
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->prepareOutputConfiguration()Z

    move-result v0

    .line 987
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mSessionUsedSurfaceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 993
    :cond_1
    new-instance v1, Landroid/hardware/camera2/params/SessionConfiguration;

    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mOutputConfigurations:Ljava/util/List;

    new-instance v3, Lcom/mediatek/ims/internal/VTSource$HandlerExecutor;

    new-instance v4, Landroid/os/Handler;

    iget-object v5, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mRespondThread:Landroid/os/HandlerThread;

    .line 996
    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v3, v4}, Lcom/mediatek/ims/internal/VTSource$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v4, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    const/4 v5, 0x0

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 998
    .local v1, "sessionConfigByOutput":Landroid/hardware/camera2/params/SessionConfiguration;
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v2}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HDR] [createSession] Create sessionConfig"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    invoke-direct {p0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->makeRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    .line 1001
    .local v2, "requestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    if-nez v2, :cond_2

    .line 1002
    iget-object v3, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v3}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[HDR] [createSession] requestBuilder == null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    iget-object v3, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mEventCallBack:Lcom/mediatek/ims/internal/VTSource$EventCallback;

    invoke-interface {v3}, Lcom/mediatek/ims/internal/VTSource$EventCallback;->onError()V

    .line 1004
    return-void

    .line 1006
    :cond_2
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/params/SessionConfiguration;->setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V

    .line 1008
    iget-object v3, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mSessionConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->close()V

    .line 1010
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v3, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1021
    nop

    .line 1022
    iget-object v3, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mSessionConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->block()V

    .line 1024
    iget-object v3, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v3}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[HDR] [createSession] Finish"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    return-void

    .line 1011
    :catch_0
    move-exception v3

    .line 1013
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v4}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HDR] [createSession] create preview session with exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget-object v4, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v4}, Lcom/mediatek/ims/internal/VTSource;->access$400(Lcom/mediatek/ims/internal/VTSource;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1016
    iget-object v4, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mEventCallBack:Lcom/mediatek/ims/internal/VTSource$EventCallback;

    invoke-interface {v4}, Lcom/mediatek/ims/internal/VTSource$EventCallback;->onError()V

    goto :goto_0

    .line 1018
    :cond_3
    iget-object v4, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v4}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mIsWaitRelease means call end or VTS error, ignore MA error"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :goto_0
    return-void

    .line 988
    .end local v1    # "sessionConfigByOutput":Landroid/hardware/camera2/params/SessionConfiguration;
    .end local v2    # "requestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v1}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[HDR] [createSession] Session surface list size <=0 or prepareOutputConfiguration fail"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    return-void
.end method

.method private doCloseCamera(Z)V
    .locals 2
    .param p1, "needWaitComplete"    # Z

    .line 1259
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HDR] [doCloseCamera] Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    .line 1263
    if-eqz p1, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mDeviceConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 1267
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 1268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 1270
    if-eqz p1, :cond_2

    .line 1271
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mDeviceConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    goto :goto_0

    .line 1275
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HDR] [doCloseCamera] mCameraDevice = NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HDR] [doCloseCamera] Finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    return-void
.end method

.method private doOpenCamera(Ljava/lang/String;)V
    .locals 4
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 1357
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HDR] [doOpenCamera] Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$500(Lcom/mediatek/ims/internal/VTSource;)Landroid/hardware/camera2/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mRespondThread:Landroid/os/HandlerThread;

    .line 1362
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1360
    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1367
    goto :goto_0

    .line 1363
    :catch_0
    move-exception v0

    .line 1364
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v1}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HDR] [doOpenCamera] open camera with access exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mDeviceConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 1366
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mEventCallBack:Lcom/mediatek/ims/internal/VTSource$EventCallback;

    invoke-interface {v1}, Lcom/mediatek/ims/internal/VTSource$EventCallback;->onError()V

    .line 1369
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HDR] [doOpenCamera] Finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    return-void
.end method

.method private doSetPauseImage(Landroid/net/Uri;)V
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1498
    const-string v0, "can not close imageStream"

    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v1}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[HDR] [doSetPauseImage] Start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v1}, Lcom/mediatek/ims/internal/VTSource;->access$700(Lcom/mediatek/ims/internal/VTSource;)Landroid/view/Surface;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1501
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v1}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "no surface for picture, return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    :cond_0
    const/4 v1, 0x0

    .line 1504
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 1507
    .local v2, "imageStream":Ljava/io/InputStream;
    :try_start_0
    sget-object v3, Lcom/mediatek/ims/internal/VTSource;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    move-object v2, v3

    .line 1508
    if-eqz v2, :cond_3

    .line 1509
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    .line 1518
    if-eqz v2, :cond_1

    .line 1520
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1523
    :goto_0
    goto :goto_1

    .line 1521
    :catch_0
    move-exception v3

    .line 1522
    .local v3, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v4}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 1526
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$700(Lcom/mediatek/ims/internal/VTSource;)Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1527
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "mCachedPauseImageSurface, skip"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    return-void

    .line 1532
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$700(Lcom/mediatek/ims/internal/VTSource;)Landroid/view/Surface;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 1533
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    .line 1534
    .local v4, "cavasWidth":I
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    .line 1535
    .local v5, "cavasHeight":I
    iget-object v6, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v6}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "srcWidth="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " srcHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dstWidth="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    .line 1536
    invoke-static {v8}, Lcom/mediatek/ims/internal/VTSource;->access$800(Lcom/mediatek/ims/internal/VTSource;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dstHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v8}, Lcom/mediatek/ims/internal/VTSource;->access$900(Lcom/mediatek/ims/internal/VTSource;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "cavasWidth="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", cavasHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1535
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v9, 0x0

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1539
    .local v6, "srcRect":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v8}, Lcom/mediatek/ims/internal/VTSource;->access$800(Lcom/mediatek/ims/internal/VTSource;)I

    move-result v8

    iget-object v10, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v10}, Lcom/mediatek/ims/internal/VTSource;->access$900(Lcom/mediatek/ims/internal/VTSource;)I

    move-result v10

    invoke-direct {v7, v9, v9, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1540
    .local v7, "dstRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v1, v6, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1541
    iget-object v8, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v8}, Lcom/mediatek/ims/internal/VTSource;->access$700(Lcom/mediatek/ims/internal/VTSource;)Landroid/view/Surface;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 1542
    iget-object v8, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v8}, Lcom/mediatek/ims/internal/VTSource;->access$700(Lcom/mediatek/ims/internal/VTSource;)Landroid/view/Surface;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Surface;->release()V

    .line 1543
    iget-object v8, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v8, v3}, Lcom/mediatek/ims/internal/VTSource;->access$702(Lcom/mediatek/ims/internal/VTSource;Landroid/view/Surface;)Landroid/view/Surface;

    .line 1544
    iget-object v3, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v3}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "[HDR] [doSetPauseImage] Finish"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    return-void

    .line 1511
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "cavasWidth":I
    .end local v5    # "cavasHeight":I
    .end local v6    # "srcRect":Landroid/graphics/Rect;
    .end local v7    # "dstRect":Landroid/graphics/Rect;
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v3}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "imageStream is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1518
    if-eqz v2, :cond_4

    .line 1520
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1523
    goto :goto_2

    .line 1521
    :catch_1
    move-exception v3

    .line 1522
    .restart local v3    # "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v4}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    .end local v3    # "e":Ljava/io/IOException;
    :cond_4
    :goto_2
    return-void

    .line 1518
    :catchall_0
    move-exception v3

    goto :goto_4

    .line 1514
    :catch_2
    move-exception v3

    .line 1515
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    iget-object v4, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v4}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "can not find the file"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1518
    if-eqz v2, :cond_5

    .line 1520
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1523
    goto :goto_3

    .line 1521
    :catch_3
    move-exception v4

    .line 1522
    .local v4, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v5}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    .end local v4    # "e":Ljava/io/IOException;
    :cond_5
    :goto_3
    return-void

    .line 1518
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_4
    if-eqz v2, :cond_6

    .line 1520
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1523
    goto :goto_5

    .line 1521
    :catch_4
    move-exception v4

    .line 1522
    .restart local v4    # "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v5}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    .end local v4    # "e":Ljava/io/IOException;
    :cond_6
    :goto_5
    throw v3
.end method

.method private doStartShareScreen()V
    .locals 2

    .line 1549
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "doStartShareScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->prepareShareScreen()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1556
    :goto_0
    goto :goto_1

    .line 1554
    :catch_0
    move-exception v0

    .line 1555
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1552
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1553
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 1557
    :goto_1
    return-void
.end method

.method private doStopShareScreen()V
    .locals 3

    .line 1604
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "doStopShareScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$1100(Lcom/mediatek/ims/internal/VTSource;)Landroid/media/projection/MediaProjection;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1607
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "not shared before, no need stop sharing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    return-void

    .line 1611
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$1400(Lcom/mediatek/ims/internal/VTSource;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 1612
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$1100(Lcom/mediatek/ims/internal/VTSource;)Landroid/media/projection/MediaProjection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->stop()V

    .line 1613
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/VTSource;->access$1102(Lcom/mediatek/ims/internal/VTSource;Landroid/media/projection/MediaProjection;)Landroid/media/projection/MediaProjection;

    .line 1614
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/VTSource;->access$1002(Lcom/mediatek/ims/internal/VTSource;Landroid/view/Surface;)Landroid/view/Surface;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1618
    goto :goto_0

    .line 1615
    :catch_0
    move-exception v0

    .line 1616
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop screen share failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VT SRC"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1619
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "doStopShareScreen end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    return-void
.end method

.method private getCameraRotation(ILandroid/hardware/camera2/CameraCharacteristics;)I
    .locals 6
    .param p1, "degrees"    # I
    .param p2, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 1374
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HDR] [getCameraRotation] Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1377
    .local v0, "facing":I
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1378
    .local v1, "orientation":I
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v2}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HDR] [getCameraRotation] degrees: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", facing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", orientation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    if-nez v0, :cond_0

    .line 1383
    sparse-switch p1, :sswitch_data_0

    .line 1397
    const/4 v2, 0x0

    .line 1398
    .local v2, "result":I
    goto :goto_0

    .line 1394
    .end local v2    # "result":I
    :sswitch_0
    const/16 v2, 0x5a

    .line 1395
    .restart local v2    # "result":I
    goto :goto_0

    .line 1391
    .end local v2    # "result":I
    :sswitch_1
    const/16 v2, 0xb4

    .line 1392
    .restart local v2    # "result":I
    goto :goto_0

    .line 1388
    .end local v2    # "result":I
    :sswitch_2
    const/16 v2, 0x10e

    .line 1389
    .restart local v2    # "result":I
    goto :goto_0

    .line 1385
    .end local v2    # "result":I
    :sswitch_3
    const/4 v2, 0x0

    .line 1386
    .restart local v2    # "result":I
    goto :goto_0

    .line 1407
    .end local v2    # "result":I
    :cond_0
    sparse-switch p1, :sswitch_data_1

    .line 1421
    const/4 v2, 0x0

    .restart local v2    # "result":I
    goto :goto_0

    .line 1418
    .end local v2    # "result":I
    :sswitch_4
    const/16 v2, 0x10e

    .line 1419
    .restart local v2    # "result":I
    goto :goto_0

    .line 1415
    .end local v2    # "result":I
    :sswitch_5
    const/16 v2, 0xb4

    .line 1416
    .restart local v2    # "result":I
    goto :goto_0

    .line 1412
    .end local v2    # "result":I
    :sswitch_6
    const/16 v2, 0x5a

    .line 1413
    .restart local v2    # "result":I
    goto :goto_0

    .line 1409
    .end local v2    # "result":I
    :sswitch_7
    const/4 v2, 0x0

    .line 1410
    .restart local v2    # "result":I
    nop

    .line 1435
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v3}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HDR] [getCameraRotation] Fisnish, Final angle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    return v2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_7
        0x5a -> :sswitch_6
        0xb4 -> :sswitch_5
        0x10e -> :sswitch_4
    .end sparse-switch
.end method

.method private getCropRegionForZoom(FLandroid/graphics/PointF;FLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 11
    .param p1, "zoomFactor"    # F
    .param p2, "center"    # Landroid/graphics/PointF;
    .param p3, "maxZoom"    # F
    .param p4, "activeArray"    # Landroid/graphics/Rect;

    .line 1443
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HDR] [getCropRegionForZoom] Start, zoomFactor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", center = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxZoom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", activeArray = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    const-string v1, " should be >= 1.0"

    if-ltz v0, :cond_6

    .line 1452
    iget v0, p2, Landroid/graphics/PointF;->x:F

    float-to-double v4, v0

    cmpl-double v0, v4, v2

    const-string v4, " should be in range of [0, 1.0]"

    if-gtz v0, :cond_5

    iget v0, p2, Landroid/graphics/PointF;->x:F

    const/4 v5, 0x0

    cmpg-float v0, v0, v5

    if-ltz v0, :cond_5

    .line 1456
    iget v0, p2, Landroid/graphics/PointF;->y:F

    float-to-double v6, v0

    cmpl-double v0, v6, v2

    if-gtz v0, :cond_4

    iget v0, p2, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v5

    if-ltz v0, :cond_4

    .line 1460
    float-to-double v4, p3

    cmpg-double v0, v4, v2

    if-ltz v0, :cond_3

    .line 1464
    if-eqz p4, :cond_2

    .line 1468
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p2, Landroid/graphics/PointF;->y:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    .line 1469
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1468
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1470
    .local v0, "minCenterLength":F
    const/high16 v1, 0x3f000000    # 0.5f

    div-float/2addr v1, v0

    .line 1471
    .local v1, "minEffectiveZoom":F
    cmpl-float v2, v1, p3

    if-gtz v2, :cond_1

    .line 1477
    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    .line 1478
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v2}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested zoomFactor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > minimal zoomable factor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". It will be overwritten by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    move p1, v1

    .line 1483
    :cond_0
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 1484
    .local v2, "cropCenterX":I
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 1485
    .local v3, "cropCenterY":I
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, p1

    float-to-int v4, v4

    .line 1486
    .local v4, "cropWidth":I
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, p1

    float-to-int v5, v5

    .line 1488
    .local v5, "cropHeight":I
    iget-object v6, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v6}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "[HDR] [getCropRegionForZoom] Finish"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    new-instance v6, Landroid/graphics/Rect;

    div-int/lit8 v7, v4, 0x2

    sub-int v7, v2, v7

    div-int/lit8 v8, v5, 0x2

    sub-int v8, v3, v8

    div-int/lit8 v9, v4, 0x2

    add-int/2addr v9, v2

    add-int/lit8 v9, v9, -0x1

    div-int/lit8 v10, v5, 0x2

    add-int/2addr v10, v3

    add-int/lit8 v10, v10, -0x1

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v6

    .line 1472
    .end local v2    # "cropCenterX":I
    .end local v3    # "cropCenterY":I
    .end local v4    # "cropWidth":I
    .end local v5    # "cropHeight":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested center "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/graphics/PointF;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has minimal zoomable factor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", which exceeds max zoom factor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1465
    .end local v0    # "minCenterLength":F
    .end local v1    # "minEffectiveZoom":F
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activeArray must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1461
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "max zoom factor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1457
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "center.y "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1453
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "center.x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1449
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zoom factor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSessionRotationIndex(I)I
    .locals 3
    .param p1, "rotation"    # I

    .line 1030
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HDR] [getSessionRotationIndex] rotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    .line 1042
    return v0

    .line 1040
    :sswitch_0
    const/4 v0, 0x3

    return v0

    .line 1038
    :sswitch_1
    const/4 v0, 0x2

    return v0

    .line 1036
    :sswitch_2
    const/4 v0, 0x1

    return v0

    .line 1034
    :sswitch_3
    return v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method private makeRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 8

    .line 1130
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HDR] [makeRequestBuilder] Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mHasAddTarget:Z

    .line 1133
    const/4 v1, 0x0

    .line 1136
    .local v1, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    move-object v1, v2

    .line 1138
    iget v2, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mZoomValue:F

    invoke-direct {p0, v2}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->calculateCropRegionByZoomValue(F)Landroid/graphics/Rect;

    move-result-object v2

    .line 1139
    .local v2, "cropRegion":Landroid/graphics/Rect;
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1141
    invoke-direct {p0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->calculateAeFpsRange()Landroid/util/Range;

    move-result-object v3

    .line 1142
    .local v3, "aeFps":Landroid/util/Range;
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v4, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1144
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->is512mbProject()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isVideoQualityTestMode()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 1148
    :cond_0
    iget-object v4, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v4}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "[HDR] [makeRequestBuilder] Turn on face detection"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1150
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 1145
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v4}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "[HDR] [makeRequestBuilder] 512MB project or VQtest,turn off face detection"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    :goto_1
    iget-object v4, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v4}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HDR] [makeRequestBuilder] Add target mNeedRecordStream = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    .line 1154
    invoke-static {v7}, Lcom/mediatek/ims/internal/VTSource;->access$300(Lcom/mediatek/ims/internal/VTSource;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mCachedRecordSurface = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    .line 1155
    invoke-static {v7}, Lcom/mediatek/ims/internal/VTSource;->access$200(Lcom/mediatek/ims/internal/VTSource;)Landroid/view/Surface;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mCachedPreviewSurface = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    .line 1156
    invoke-static {v7}, Lcom/mediatek/ims/internal/VTSource;->access$100(Lcom/mediatek/ims/internal/VTSource;)Landroid/view/Surface;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1153
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    iget-object v4, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v4}, Lcom/mediatek/ims/internal/VTSource;->access$300(Lcom/mediatek/ims/internal/VTSource;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v4}, Lcom/mediatek/ims/internal/VTSource;->access$200(Lcom/mediatek/ims/internal/VTSource;)Landroid/view/Surface;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mSessionUsedSurfaceList:Ljava/util/List;

    iget-object v6, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    .line 1159
    invoke-static {v6}, Lcom/mediatek/ims/internal/VTSource;->access$200(Lcom/mediatek/ims/internal/VTSource;)Landroid/view/Surface;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1160
    iget-object v4, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v4}, Lcom/mediatek/ims/internal/VTSource;->access$200(Lcom/mediatek/ims/internal/VTSource;)Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1161
    iput-boolean v5, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mHasAddTarget:Z

    .line 1164
    :cond_2
    iget-object v4, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v4}, Lcom/mediatek/ims/internal/VTSource;->access$100(Lcom/mediatek/ims/internal/VTSource;)Landroid/view/Surface;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mSessionUsedSurfaceList:Ljava/util/List;

    iget-object v6, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    .line 1165
    invoke-static {v6}, Lcom/mediatek/ims/internal/VTSource;->access$100(Lcom/mediatek/ims/internal/VTSource;)Landroid/view/Surface;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1166
    iget-object v4, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v4}, Lcom/mediatek/ims/internal/VTSource;->access$100(Lcom/mediatek/ims/internal/VTSource;)Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1167
    iput-boolean v5, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mHasAddTarget:Z

    .line 1171
    :cond_3
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isVideoQualityTestMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1172
    iget-object v4, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v4}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "[HDR] [makeRequestBuilder] set CONTINUOUS_PICTURE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1175
    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1174
    invoke-virtual {v1, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1178
    :cond_4
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1179
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1178
    invoke-virtual {v1, v4, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1186
    .end local v2    # "cropRegion":Landroid/graphics/Rect;
    .end local v3    # "aeFps":Landroid/util/Range;
    goto :goto_2

    .line 1181
    :catch_0
    move-exception v0

    .line 1183
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v2}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HDR] [makeRequestBuilder] exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1185
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mEventCallBack:Lcom/mediatek/ims/internal/VTSource$EventCallback;

    invoke-interface {v2}, Lcom/mediatek/ims/internal/VTSource$EventCallback;->onError()V

    .line 1188
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "[HDR] [makeRequestBuilder] Finish"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    return-object v1
.end method

.method private openCamera(Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 1337
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HDR] [openCamera] Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1340
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "open existing camera, ignore open!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    return-void

    .line 1345
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->prepareForOpenCamera(Ljava/lang/String;)V

    .line 1346
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mRetryCount:I

    .line 1347
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v1, v0}, Lcom/mediatek/ims/internal/VTSource;->access$602(Lcom/mediatek/ims/internal/VTSource;Z)Z

    .line 1348
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mDeviceConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 1349
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->doOpenCamera(Ljava/lang/String;)V

    .line 1350
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mDeviceConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 1352
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HDR] [openCamera] Finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    return-void
.end method

.method private prepareForOpenCamera(Ljava/lang/String;)V
    .locals 4
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 1239
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HDR] [prepareForOpenCamera] Start, cameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1242
    invoke-direct {p0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->closeSession()V

    .line 1243
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->doCloseCamera(Z)V

    .line 1245
    :cond_0
    iput-object p1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraId:Ljava/lang/String;

    .line 1247
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$500(Lcom/mediatek/ims/internal/VTSource;)Landroid/hardware/camera2/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1252
    goto :goto_0

    .line 1248
    :catch_0
    move-exception v0

    .line 1249
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v1}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HDR] [prepareForOpenCamera] before open camera getCameraCharacteristics access exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mEventCallBack:Lcom/mediatek/ims/internal/VTSource$EventCallback;

    invoke-interface {v1}, Lcom/mediatek/ims/internal/VTSource$EventCallback;->onError()V

    .line 1254
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HDR] [prepareForOpenCamera] Finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    return-void
.end method

.method private prepareOutputConfiguration()Z
    .locals 7

    .line 1283
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HDR] [prepareOutputConfiguration] Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mSessionUsedSurfaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1286
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mOutputConfigurations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1288
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$100(Lcom/mediatek/ims/internal/VTSource;)Landroid/view/Surface;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "[HDR] [prepareOutputConfiguration] Finish"

    if-eqz v0, :cond_0

    .line 1290
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "[HDR] [prepareOutputConfiguration][Preview]"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mSessionUsedSurfaceList:Ljava/util/List;

    iget-object v4, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v4}, Lcom/mediatek/ims/internal/VTSource;->access$100(Lcom/mediatek/ims/internal/VTSource;)Landroid/view/Surface;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1295
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mOutputConfigurations:Ljava/util/List;

    new-instance v4, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v5, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v5}, Lcom/mediatek/ims/internal/VTSource;->access$100(Lcom/mediatek/ims/internal/VTSource;)Landroid/view/Surface;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1307
    goto :goto_0

    .line 1297
    :catch_0
    move-exception v0

    .line 1298
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v4}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HDR] [prepareOutputConfiguration][Preview] new OutputConfiguration with exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    iget-object v4, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mSessionUsedSurfaceList:Ljava/util/List;

    iget-object v5, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v5}, Lcom/mediatek/ims/internal/VTSource;->access$100(Lcom/mediatek/ims/internal/VTSource;)Landroid/view/Surface;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1301
    iget-object v4, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v4, v2}, Lcom/mediatek/ims/internal/VTSource;->access$102(Lcom/mediatek/ims/internal/VTSource;Landroid/view/Surface;)Landroid/view/Surface;

    .line 1302
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mEventCallBack:Lcom/mediatek/ims/internal/VTSource$EventCallback;

    invoke-interface {v2}, Lcom/mediatek/ims/internal/VTSource$EventCallback;->onError()V

    .line 1304
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v2}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    return v1

    .line 1310
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$200(Lcom/mediatek/ims/internal/VTSource;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1312
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "[HDR] [prepareOutputConfiguration][Record]"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mSessionUsedSurfaceList:Ljava/util/List;

    iget-object v4, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v4}, Lcom/mediatek/ims/internal/VTSource;->access$200(Lcom/mediatek/ims/internal/VTSource;)Landroid/view/Surface;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1316
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mOutputConfigurations:Ljava/util/List;

    new-instance v4, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v5, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v5}, Lcom/mediatek/ims/internal/VTSource;->access$200(Lcom/mediatek/ims/internal/VTSource;)Landroid/view/Surface;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1328
    goto :goto_1

    .line 1318
    :catch_1
    move-exception v0

    .line 1319
    .restart local v0    # "ex":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v4}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HDR] [prepareOutputConfiguration][Record] new OutputConfiguration with exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    iget-object v4, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mSessionUsedSurfaceList:Ljava/util/List;

    iget-object v5, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v5}, Lcom/mediatek/ims/internal/VTSource;->access$200(Lcom/mediatek/ims/internal/VTSource;)Landroid/view/Surface;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1322
    iget-object v4, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v4, v2}, Lcom/mediatek/ims/internal/VTSource;->access$202(Lcom/mediatek/ims/internal/VTSource;Landroid/view/Surface;)Landroid/view/Surface;

    .line 1323
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mEventCallBack:Lcom/mediatek/ims/internal/VTSource$EventCallback;

    invoke-interface {v2}, Lcom/mediatek/ims/internal/VTSource$EventCallback;->onError()V

    .line 1325
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v2}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    return v1

    .line 1331
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    const/4 v0, 0x1

    return v0
.end method

.method private prepareShareScreen()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1562
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v1}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "prepareShareScreen"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    iget-object v1, v0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v1}, Lcom/mediatek/ims/internal/VTSource;->access$1000(Lcom/mediatek/ims/internal/VTSource;)Landroid/view/Surface;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1565
    iget-object v1, v0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v1}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "no surface for screen recording, return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    return-void

    .line 1569
    :cond_0
    const-string v1, "media_projection"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1570
    .local v1, "b":Landroid/os/IBinder;
    nop

    .line 1571
    invoke-static {v1}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v2

    .line 1572
    .local v2, "mediaService":Landroid/media/projection/IMediaProjectionManager;
    const/4 v3, 0x0

    .line 1574
    .local v3, "proj":Landroid/media/projection/IMediaProjection;
    sget-object v4, Lcom/mediatek/ims/internal/VTSource;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    .line 1575
    .local v4, "currentUserId":I
    sget-object v5, Lcom/mediatek/ims/internal/VTSource;->sContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v4, v5, v6, v6}, Landroid/media/projection/IMediaProjectionManager;->createProjection(ILjava/lang/String;IZ)Landroid/media/projection/IMediaProjection;

    move-result-object v3

    .line 1577
    invoke-interface {v3}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 1578
    .local v5, "projection":Landroid/os/IBinder;
    iget-object v6, v0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    new-instance v7, Landroid/media/projection/MediaProjection;

    sget-object v8, Lcom/mediatek/ims/internal/VTSource;->sContext:Landroid/content/Context;

    .line 1579
    invoke-static {v5}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/media/projection/MediaProjection;-><init>(Landroid/content/Context;Landroid/media/projection/IMediaProjection;)V

    .line 1578
    invoke-static {v6, v7}, Lcom/mediatek/ims/internal/VTSource;->access$1102(Lcom/mediatek/ims/internal/VTSource;Landroid/media/projection/MediaProjection;)Landroid/media/projection/MediaProjection;

    .line 1582
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1583
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    sget-object v7, Lcom/mediatek/ims/internal/VTSource;->sContext:Landroid/content/Context;

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 1584
    .local v7, "wm":Landroid/view/WindowManager;
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1587
    iget-object v8, v0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v8}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "width="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " height="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " densityDpi"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "mScreenShareWidth="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    .line 1589
    invoke-static {v10}, Lcom/mediatek/ims/internal/VTSource;->access$1200(Lcom/mediatek/ims/internal/VTSource;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mScreenShareHeight="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v10}, Lcom/mediatek/ims/internal/VTSource;->access$1300(Lcom/mediatek/ims/internal/VTSource;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1587
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    iget-object v8, v0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v8}, Lcom/mediatek/ims/internal/VTSource;->access$1100(Lcom/mediatek/ims/internal/VTSource;)Landroid/media/projection/MediaProjection;

    move-result-object v9

    const-string v10, "Screen Share"

    iget-object v11, v0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    .line 1593
    invoke-static {v11}, Lcom/mediatek/ims/internal/VTSource;->access$1200(Lcom/mediatek/ims/internal/VTSource;)I

    move-result v11

    iget-object v12, v0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    .line 1594
    invoke-static {v12}, Lcom/mediatek/ims/internal/VTSource;->access$1300(Lcom/mediatek/ims/internal/VTSource;)I

    move-result v12

    iget v13, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v14, 0x90

    iget-object v15, v0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    .line 1597
    invoke-static {v15}, Lcom/mediatek/ims/internal/VTSource;->access$1000(Lcom/mediatek/ims/internal/VTSource;)Landroid/view/Surface;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1591
    invoke-virtual/range {v9 .. v17}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/ims/internal/VTSource;->access$1402(Lcom/mediatek/ims/internal/VTSource;Landroid/hardware/display/VirtualDisplay;)Landroid/hardware/display/VirtualDisplay;

    .line 1600
    return-void
.end method

.method private submitRepeatingRequest()V
    .locals 6

    .line 1195
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HDR] [submitRepeatingRequest] Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1202
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->makeRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1203
    .local v0, "requestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    if-nez v0, :cond_1

    .line 1204
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v1}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "submitRepeatingRequest requestBuilder == null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mEventCallBack:Lcom/mediatek/ims/internal/VTSource$EventCallback;

    invoke-interface {v1}, Lcom/mediatek/ims/internal/VTSource$EventCallback;->onError()V

    .line 1206
    return-void

    .line 1210
    :cond_1
    :try_start_0
    iget-boolean v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mHasAddTarget:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1211
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 1212
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    new-instance v4, Landroid/os/Handler;

    iget-object v5, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mRespondThread:Landroid/os/HandlerThread;

    .line 1214
    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1211
    invoke-virtual {v1, v3, v2, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 1218
    :cond_2
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isVideoQualityTestMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1219
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v1}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "[HDR] [submitRepeatingRequest] trigger set focus once"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1221
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1220
    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1222
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 1223
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    new-instance v4, Landroid/os/Handler;

    iget-object v5, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mRespondThread:Landroid/os/HandlerThread;

    .line 1225
    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1222
    invoke-virtual {v1, v3, v2, v4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1232
    :cond_3
    goto :goto_0

    .line 1227
    :catch_0
    move-exception v1

    .line 1229
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v2}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HDR] [submitRepeatingRequest] exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1231
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mEventCallBack:Lcom/mediatek/ims/internal/VTSource$EventCallback;

    invoke-interface {v2}, Lcom/mediatek/ims/internal/VTSource$EventCallback;->onError()V

    .line 1234
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v1}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[HDR] [submitRepeatingRequest] Finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    return-void

    .line 1198
    .end local v0    # "requestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "submitRepeatingRequest illegal state, ignore!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 755
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mRespondThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[handleMessage] mRespondThread null, ignore message!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    return-void

    .line 760
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "]"

    packed-switch v0, :pswitch_data_0

    .line 973
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HDR] [handleMessage] what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 968
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HDR] [handleMessage] MSG_STOP_SCREEN_RECORDING ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    invoke-direct {p0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->doStopShareScreen()V

    .line 970
    goto/16 :goto_4

    .line 963
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HDR] [handleMessage] MSG_START_SCREEN_RECORDING ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    invoke-direct {p0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->doStartShareScreen()V

    .line 965
    goto/16 :goto_4

    .line 957
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HDR] [handleMessage] MSG_SET_PAUSE_IMAGE ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    .line 959
    .local v0, "uri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->doSetPauseImage(Landroid/net/Uri;)V

    .line 960
    goto/16 :goto_4

    .line 877
    .end local v0    # "uri":Landroid/net/Uri;
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HDR] [handleMessage] MSG_STOP_RECORDING_PREVIEW ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$300(Lcom/mediatek/ims/internal/VTSource;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 881
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0, v3}, Lcom/mediatek/ims/internal/VTSource;->access$302(Lcom/mediatek/ims/internal/VTSource;Z)Z

    .line 882
    invoke-direct {p0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->closeSession()V

    goto/16 :goto_4

    .line 949
    :pswitch_4
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HDR] [handleMessage] MSG_RESTART_CAMERA ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    invoke-direct {p0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->closeSession()V

    .line 952
    invoke-direct {p0, v2}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->doCloseCamera(Z)V

    .line 953
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->openCamera(Ljava/lang/String;)V

    .line 954
    goto/16 :goto_4

    .line 937
    :pswitch_5
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HDR] [handleMessage] MSG_DEVICE_ORIENTATION ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mDeviceDegree:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_e

    .line 941
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HDR] [handleMessage] Change device orientation from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mDeviceDegree:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 942
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 941
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mDeviceDegree:I

    goto/16 :goto_4

    .line 921
    :pswitch_6
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HDR] [handleMessage] MSG_RELEASE ["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iput-object v4, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 925
    iput v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mZoomValue:F

    .line 926
    invoke-direct {p0, v3}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->doCloseCamera(Z)V

    .line 927
    invoke-direct {p0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->doStopShareScreen()V

    .line 928
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mSessionUsedSurfaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 929
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mOutputConfigurations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 930
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0, v4}, Lcom/mediatek/ims/internal/VTSource;->access$202(Lcom/mediatek/ims/internal/VTSource;Landroid/view/Surface;)Landroid/view/Surface;

    .line 931
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0, v4}, Lcom/mediatek/ims/internal/VTSource;->access$102(Lcom/mediatek/ims/internal/VTSource;Landroid/view/Surface;)Landroid/view/Surface;

    .line 932
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mRespondThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 933
    goto/16 :goto_4

    .line 911
    :pswitch_7
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HDR] [handleMessage] MSG_CLOSE_CAMERA ["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iput-object v4, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 915
    iput v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mZoomValue:F

    .line 916
    invoke-direct {p0, v3}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->doCloseCamera(Z)V

    .line 917
    goto/16 :goto_4

    .line 902
    :pswitch_8
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HDR] [handleMessage] MSG_GET_CAMERA_CHARACTERISTICS ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/camera2/CameraCharacteristics;

    .line 906
    .local v0, "characteristicses":[Landroid/hardware/camera2/CameraCharacteristics;
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    aput-object v1, v0, v3

    .line 907
    goto/16 :goto_4

    .line 888
    .end local v0    # "characteristicses":[Landroid/hardware/camera2/CameraCharacteristics;
    :pswitch_9
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HDR] [handleMessage] MSG_PERFORM_ZOOM ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_1

    goto :goto_0

    .line 896
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mZoomValue:F

    .line 897
    invoke-direct {p0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->submitRepeatingRequest()V

    .line 898
    goto/16 :goto_4

    .line 891
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HDR] [handleMessage] perform zoom with null device or session!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    return-void

    .line 794
    :pswitch_a
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HDR] [handleMessage] MSG_SUBMIT_REQUEST ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_3

    goto :goto_1

    .line 801
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->submitRepeatingRequest()V

    .line 802
    goto/16 :goto_4

    .line 797
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HDR] [handleMessage] submitRepeatingRequest illegal state, ignore!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    return-void

    .line 858
    :pswitch_b
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HDR] [handleMessage] MSG_STOP_RECORDING ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 862
    .local v0, "keepSession":Z
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v1}, Lcom/mediatek/ims/internal/VTSource;->access$300(Lcom/mediatek/ims/internal/VTSource;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 863
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v1, v3}, Lcom/mediatek/ims/internal/VTSource;->access$302(Lcom/mediatek/ims/internal/VTSource;Z)Z

    .line 864
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v1}, Lcom/mediatek/ims/internal/VTSource;->access$200(Lcom/mediatek/ims/internal/VTSource;)Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 865
    invoke-direct {p0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->closeSession()V

    .line 866
    if-eqz v0, :cond_5

    .line 867
    invoke-direct {p0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->createSession()V

    goto/16 :goto_4

    .line 869
    :cond_5
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v1}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "no need keep session, skip create sessoin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 839
    .end local v0    # "keepSession":Z
    :pswitch_c
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HDR] [handleMessage] MSG_START_RECORDING ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    .line 843
    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$300(Lcom/mediatek/ims/internal/VTSource;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 852
    :cond_6
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0, v2}, Lcom/mediatek/ims/internal/VTSource;->access$302(Lcom/mediatek/ims/internal/VTSource;Z)Z

    .line 853
    invoke-direct {p0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->submitRepeatingRequest()V

    .line 854
    goto/16 :goto_4

    .line 844
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HDR] [handleMessage] start recording status error, device:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", session:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", record status:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    .line 847
    invoke-static {v3}, Lcom/mediatek/ims/internal/VTSource;->access$300(Lcom/mediatek/ims/internal/VTSource;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 844
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0, v2}, Lcom/mediatek/ims/internal/VTSource;->access$302(Lcom/mediatek/ims/internal/VTSource;Z)Z

    .line 850
    return-void

    .line 815
    :pswitch_d
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HDR] [handleMessage] MSG_UPDATE_RECORD_SURFACE ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    .line 819
    .local v0, "newSurface":Landroid/view/Surface;
    if-nez v0, :cond_8

    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v1}, Lcom/mediatek/ims/internal/VTSource;->access$200(Lcom/mediatek/ims/internal/VTSource;)Landroid/view/Surface;

    move-result-object v1

    if-nez v1, :cond_8

    .line 820
    return-void

    .line 823
    :cond_8
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v1, v0}, Lcom/mediatek/ims/internal/VTSource;->access$202(Lcom/mediatek/ims/internal/VTSource;Landroid/view/Surface;)Landroid/view/Surface;

    .line 825
    if-nez v0, :cond_9

    .line 828
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v1}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[HDR] record surface change to null, no need recreate Session because recording should be stopped already"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    return-void

    .line 832
    :cond_9
    invoke-direct {p0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->closeSession()V

    .line 833
    invoke-direct {p0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->createSession()V

    .line 834
    goto/16 :goto_4

    .line 806
    .end local v0    # "newSurface":Landroid/view/Surface;
    :pswitch_e
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HDR] [handleMessage] MSG_STOP_PREVIEW ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0, v4}, Lcom/mediatek/ims/internal/VTSource;->access$102(Lcom/mediatek/ims/internal/VTSource;Landroid/view/Surface;)Landroid/view/Surface;

    .line 809
    invoke-direct {p0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->closeSession()V

    .line 810
    invoke-direct {p0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->createSession()V

    .line 811
    goto/16 :goto_4

    .line 771
    :pswitch_f
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HDR] [handleMessage] MSG_START_PREVIEW ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    .line 774
    .restart local v0    # "newSurface":Landroid/view/Surface;
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_c

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_3

    .line 784
    :cond_a
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v1}, Lcom/mediatek/ims/internal/VTSource;->access$100(Lcom/mediatek/ims/internal/VTSource;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 785
    invoke-direct {p0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->closeSession()V

    .line 787
    :cond_b
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v1, v0}, Lcom/mediatek/ims/internal/VTSource;->access$102(Lcom/mediatek/ims/internal/VTSource;Landroid/view/Surface;)Landroid/view/Surface;

    .line 788
    invoke-direct {p0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->createSession()V

    .line 789
    goto :goto_4

    .line 775
    :cond_c
    :goto_3
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v1}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HDR] [handleMessage] start preview with status error, device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", new surface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 778
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v1}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[HDR] [handleMessage] Camera closed, store the surface for use later."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v1, v0}, Lcom/mediatek/ims/internal/VTSource;->access$102(Lcom/mediatek/ims/internal/VTSource;Landroid/view/Surface;)Landroid/view/Surface;

    .line 782
    :cond_d
    return-void

    .line 763
    .end local v0    # "newSurface":Landroid/view/Surface;
    :pswitch_10
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->this$0:Lcom/mediatek/ims/internal/VTSource;

    invoke-static {v0}, Lcom/mediatek/ims/internal/VTSource;->access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HDR] [handleMessage] MSG_OPEN_CAMERA ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 766
    .local v0, "cameraId":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;->openCamera(Ljava/lang/String;)V

    .line 767
    nop

    .line 976
    .end local v0    # "cameraId":Ljava/lang/String;
    :cond_e
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
