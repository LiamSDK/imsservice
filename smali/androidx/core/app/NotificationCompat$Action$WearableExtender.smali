.class public final Landroidx/core/app/NotificationCompat$Action$WearableExtender;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Landroidx/core/app/NotificationCompat$Action$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WearableExtender"
.end annotation


# static fields
.field private static final DEFAULT_FLAGS:I = 0x1

.field private static final EXTRA_WEARABLE_EXTENSIONS:Ljava/lang/String; = "android.wearable.EXTENSIONS"

.field private static final FLAG_AVAILABLE_OFFLINE:I = 0x1

.field private static final FLAG_HINT_DISPLAY_INLINE:I = 0x4

.field private static final FLAG_HINT_LAUNCHES_ACTIVITY:I = 0x2

.field private static final KEY_CANCEL_LABEL:Ljava/lang/String; = "cancelLabel"

.field private static final KEY_CONFIRM_LABEL:Ljava/lang/String; = "confirmLabel"

.field private static final KEY_FLAGS:Ljava/lang/String; = "flags"

.field private static final KEY_IN_PROGRESS_LABEL:Ljava/lang/String; = "inProgressLabel"


# instance fields
.field private mCancelLabel:Ljava/lang/CharSequence;

.field private mConfirmLabel:Ljava/lang/CharSequence;

.field private mFlags:I

.field private mInProgressLabel:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5098
    const/4 v0, 0x1

    iput v0, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    .line 5109
    return-void
.end method

.method public constructor <init>(Landroidx/core/app/NotificationCompat$Action;)V
    .locals 3
    .param p1, "action"    # Landroidx/core/app/NotificationCompat$Action;

    .line 5116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5098
    const/4 v0, 0x1

    iput v0, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    .line 5117
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.wearable.EXTENSIONS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 5118
    .local v1, "wearableBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 5119
    const-string v2, "flags"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    .line 5120
    const-string v0, "inProgressLabel"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    .line 5121
    const-string v0, "confirmLabel"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    .line 5122
    const-string v0, "cancelLabel"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    .line 5124
    :cond_0
    return-void
.end method

.method private setFlag(IZ)V
    .locals 2
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .line 5184
    if-eqz p2, :cond_0

    .line 5185
    iget v0, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    goto :goto_0

    .line 5187
    :cond_0
    iget v0, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    .line 5189
    :goto_0
    return-void
.end method


# virtual methods
.method public clone()Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    .locals 2

    .line 5154
    new-instance v0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$Action$WearableExtender;-><init>()V

    .line 5155
    .local v0, "that":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    iget v1, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    iput v1, v0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    .line 5156
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    .line 5157
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    .line 5158
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    .line 5159
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 5080
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->clone()Landroidx/core/app/NotificationCompat$Action$WearableExtender;

    move-result-object v0

    return-object v0
.end method

.method public extend(Landroidx/core/app/NotificationCompat$Action$Builder;)Landroidx/core/app/NotificationCompat$Action$Builder;
    .locals 3
    .param p1, "builder"    # Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 5133
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5135
    .local v0, "wearableBundle":Landroid/os/Bundle;
    iget v1, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 5136
    const-string v2, "flags"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5138
    :cond_0
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 5139
    const-string v2, "inProgressLabel"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 5141
    :cond_1
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 5142
    const-string v2, "confirmLabel"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 5144
    :cond_2
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 5145
    const-string v2, "cancelLabel"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 5148
    :cond_3
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.wearable.EXTENSIONS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 5149
    return-object p1
.end method

.method public getCancelLabel()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5273
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getConfirmLabel()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5245
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHintDisplayActionInline()Z
    .locals 1

    .line 5324
    iget v0, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getHintLaunchesActivity()Z
    .locals 1

    .line 5297
    iget v0, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getInProgressLabel()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5216
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isAvailableOffline()Z
    .locals 2

    .line 5180
    iget v0, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setAvailableOffline(Z)Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    .locals 1
    .param p1, "availableOffline"    # Z

    .line 5169
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->setFlag(IZ)V

    .line 5170
    return-object p0
.end method

.method public setCancelLabel(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5259
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    .line 5260
    return-object p0
.end method

.method public setConfirmLabel(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5230
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    .line 5231
    return-object p0
.end method

.method public setHintDisplayActionInline(Z)Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    .locals 1
    .param p1, "hintDisplayInline"    # Z

    .line 5311
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->setFlag(IZ)V

    .line 5312
    return-object p0
.end method

.method public setHintLaunchesActivity(Z)Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    .locals 1
    .param p1, "hintLaunchesActivity"    # Z

    .line 5285
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->setFlag(IZ)V

    .line 5286
    return-object p0
.end method

.method public setInProgressLabel(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5202
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    .line 5203
    return-object p0
.end method
