.class public final synthetic Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4$$ExternalSyntheticLambda2;->f$0:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4;

    iput-boolean p2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4$$ExternalSyntheticLambda2;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4$$ExternalSyntheticLambda2;->f$0:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4;

    iget-boolean v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4$$ExternalSyntheticLambda2;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4;->lambda$availabilityChanged$3$com-mediatek-ims-rcs-UaServiceManager$UaServiceContext$4(Z)V

    return-void
.end method
