.class public Lcom/mediatek/ims/RttEmcGuardTimerUtil;
.super Ljava/lang/Object;
.source "RttEmcGuardTimerUtil.java"


# static fields
.field private static final INTENT_RTT_EMC_GUARD_TIMER_180:Ljava/lang/String; = "com.mediatek.internal.telephony.imsphone.rtt_emc_guard_timer_180"

.field private static final TAG:Ljava/lang/String; = "RttEmcGuardTimerUtil"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mDuringRttGuardDuration:Z

.field private mIsRegisteredReceiver:Z

.field private mIsRttEmcGuardTimerSupported:Z

.field private mRttEmcIntent:Landroid/app/PendingIntent;

.field private mRttReceiver:Landroid/content/BroadcastReceiver;

.field private mSubId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mIsRegisteredReceiver:Z

    .line 58
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mRttEmcIntent:Landroid/app/PendingIntent;

    .line 59
    iput-boolean v0, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mDuringRttGuardDuration:Z

    .line 60
    iput-boolean v0, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mIsRttEmcGuardTimerSupported:Z

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mSubId:I

    .line 86
    new-instance v0, Lcom/mediatek/ims/RttEmcGuardTimerUtil$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/RttEmcGuardTimerUtil$1;-><init>(Lcom/mediatek/ims/RttEmcGuardTimerUtil;)V

    iput-object v0, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mRttReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    iput-object p1, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mContext:Landroid/content/Context;

    .line 64
    iput p2, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mSubId:I

    .line 65
    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/ims/RttEmcGuardTimerUtil;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/RttEmcGuardTimerUtil;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .line 51
    iput-object p1, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mRttEmcIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/ims/RttEmcGuardTimerUtil;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/RttEmcGuardTimerUtil;
    .param p1, "x1"    # Z

    .line 51
    invoke-direct {p0, p1}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->setDuringGuardTimer(Z)V

    return-void
.end method

.method private getReceiver()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mIsRegisteredReceiver:Z

    return v0
.end method

.method private isDuringGuardTimer()Z
    .locals 1

    .line 204
    iget-boolean v0, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mDuringRttGuardDuration:Z

    return v0
.end method

.method private isRttEmcCarrierSupport()Z
    .locals 5

    .line 178
    iget-object v0, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mContext:Landroid/content/Context;

    .line 179
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 180
    .local v0, "carrierConfigManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    const-string v2, "RttEmcGuardTimerUtil"

    if-nez v0, :cond_0

    .line 181
    const-string v3, "cacheCarrierConfiguration: No carrier config service found."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return v1

    .line 185
    :cond_0
    iget v3, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mSubId:I

    invoke-virtual {v0, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 186
    .local v3, "carrierConfig":Landroid/os/PersistableBundle;
    if-nez v3, :cond_1

    .line 187
    const-string v4, "cacheCarrierConfiguration: Empty carrier config."

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return v1

    .line 191
    :cond_1
    nop

    .line 192
    const-string v1, "mtk_emc_rtt_guard_timer_bool"

    invoke-virtual {v3, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mIsRttEmcGuardTimerSupported:Z

    .line 193
    return v1
.end method

.method private registerRttReceiver()V
    .locals 3

    .line 103
    const-string v0, "RttEmcGuardTimerUtil"

    const-string v1, "registerRttReceiver"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 105
    .local v0, "intentfilter":Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.internal.telephony.imsphone.rtt_emc_guard_timer_180"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mRttReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    return-void
.end method

.method private setDuringGuardTimer(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 207
    iput-boolean p1, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mDuringRttGuardDuration:Z

    .line 208
    return-void
.end method

.method private setReceiver(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 199
    iput-boolean p1, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mIsRegisteredReceiver:Z

    .line 200
    return-void
.end method

.method private unregisterRttReceiver()V
    .locals 2

    .line 110
    invoke-direct {p0}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->getReceiver()Z

    move-result v0

    const-string v1, "RttEmcGuardTimerUtil"

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "unregisterRttReceiver"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mRttReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->setReceiver(Z)V

    goto :goto_0

    .line 116
    :cond_0
    const-string v0, "UnregisterRttReciever: No active reciever"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_0
    return-void
.end method


# virtual methods
.method public checkIncomingCallInRttEmcGuardTime()Z
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkIncomingCallInRttEmcGuardTime mDuringRttGuardDuration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->isDuringGuardTimer()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RttEmcGuardTimerUtil"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-boolean v0, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mDuringRttGuardDuration:Z

    return v0
.end method

.method public disposeRttEmcGuardTimer()V
    .locals 2

    .line 99
    const-string v0, "RttEmcGuardTimerUtil"

    const-string v1, "disposeRttEmcGuardTimer"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->unregisterRttReceiver()V

    .line 101
    return-void
.end method

.method public initRttEmcGuardTimer()V
    .locals 2

    .line 67
    const-string v0, "RttEmcGuardTimerUtil"

    const-string v1, "initRttEmcGuardTimer"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v1, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 69
    const-string v1, "initRttEmcGuardTimer mContext == null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    return-void
.end method

.method public setRttEmcGuardTimerSupported(Z)V
    .locals 0
    .param p1, "isSupported"    # Z

    .line 174
    iput-boolean p1, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mIsRttEmcGuardTimerSupported:Z

    .line 175
    return-void
.end method

.method public startRttEmcGuardTimer()V
    .locals 9

    .line 135
    const-string v0, "RttEmcGuardTimerUtil"

    const-string v1, "startRttEmcGuardTimer"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v1, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 137
    const-string v1, "startRttEmcGuardTimer: mContext == null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->isRttEmcCarrierSupport()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mIsRttEmcGuardTimerSupported:Z

    .line 141
    if-nez v1, :cond_1

    .line 142
    const-string v1, "startRttEmcGuardTimer: Current carrier doesn\'t support RTT EMC guard timer, just return"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->stopRttEmcGuardTimer()V

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRttEmcGuardTimer , mIsRegisteredReceiver :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->getReceiver()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mIsRttEmcGuardTimerSupported : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mIsRttEmcGuardTimerSupported:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-boolean v1, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mIsRttEmcGuardTimerSupported:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->getReceiver()Z

    move-result v1

    if-nez v1, :cond_2

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initRttEmcGuardTimer , mIsRegisteredReceiver :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->getReceiver()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v1, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mAlarmManager:Landroid/app/AlarmManager;

    .line 154
    invoke-direct {p0}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->registerRttReceiver()V

    .line 155
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->setReceiver(Z)V

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->getReceiver()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Registered reciver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.mediatek.internal.telephony.imsphone.rtt_emc_guard_timer_180"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x4000000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mRttEmcIntent:Landroid/app/PendingIntent;

    .line 166
    const v3, 0x2bf20

    .line 167
    .local v3, "delay":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startRttEmcGuardTimer: delay="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-direct {p0, v1}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->setDuringGuardTimer(Z)V

    .line 169
    iget-object v1, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    .line 170
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    int-to-long v7, v3

    add-long/2addr v5, v7

    iget-object v7, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mRttEmcIntent:Landroid/app/PendingIntent;

    .line 169
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRttEmcGuardTimer: delay = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " started"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void

    .line 159
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "delay":I
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRttEmcGuardTimer , mIsRttEmcGuardTimerSupported :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mIsRttEmcGuardTimerSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void
.end method

.method public stopRttEmcGuardTimer()V
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopRttEmcGuardTimer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mRttEmcIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RttEmcGuardTimerUtil"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mRttEmcIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "stopRttEmcGuardTimer, cancel timer"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mRttEmcIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->mRttEmcIntent:Landroid/app/PendingIntent;

    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->setDuringGuardTimer(Z)V

    .line 127
    invoke-virtual {p0}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->disposeRttEmcGuardTimer()V

    .line 129
    :cond_0
    return-void
.end method
