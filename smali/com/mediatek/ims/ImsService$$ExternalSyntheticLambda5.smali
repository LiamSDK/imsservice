.class public final synthetic Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/mediatek/ims/ImsService;

.field public final synthetic f$1:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;


# direct methods
.method public synthetic constructor <init>(Lcom/mediatek/ims/ImsService;Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda5;->f$0:Lcom/mediatek/ims/ImsService;

    iput-object p2, p0, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda5;->f$1:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda5;->f$0:Lcom/mediatek/ims/ImsService;

    iget-object v1, p0, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda5;->f$1:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    check-cast p1, Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ImsService;->lambda$setRcsFeatureCallback$7$com-mediatek-ims-ImsService(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;Lcom/mediatek/ims/rcs/UaServiceManager;)V

    return-void
.end method
