.class Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;
.super Ljava/lang/Object;
.source "WindowInsetsAnimationControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsAnimationControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    return-void
.end method


# virtual methods
.method finish(Z)V
    .locals 0
    .param p1, "shown"    # Z

    .line 268
    return-void
.end method

.method public getCurrentAlpha()F
    .locals 1

    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentFraction()F
    .locals 1

    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentInsets()Landroidx/core/graphics/Insets;
    .locals 1

    .line 245
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    return-object v0
.end method

.method public getHiddenStateInsets()Landroidx/core/graphics/Insets;
    .locals 1

    .line 235
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    return-object v0
.end method

.method public getShownStateInsets()Landroidx/core/graphics/Insets;
    .locals 1

    .line 240
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    return-object v0
.end method

.method public getTypes()I
    .locals 1

    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method isCancelled()Z
    .locals 1

    .line 279
    const/4 v0, 0x1

    return v0
.end method

.method isFinished()Z
    .locals 1

    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public setInsetsAndAlpha(Landroidx/core/graphics/Insets;FF)V
    .locals 0
    .param p1, "insets"    # Landroidx/core/graphics/Insets;
    .param p2, "alpha"    # F
    .param p3, "fraction"    # F

    .line 265
    return-void
.end method
