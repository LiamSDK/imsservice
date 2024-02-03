.class Lcom/mediatek/ims/internal/ImsVTProvider$1;
.super Landroid/os/Handler;
.source "ImsVTProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/internal/ImsVTProvider;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/internal/ImsVTProvider;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/internal/ImsVTProvider;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/ImsVTProvider;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 396
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 399
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 507
    :sswitch_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->sendRejectUpgradeResponseInternal()V

    .line 508
    goto/16 :goto_0

    .line 496
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 498
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 499
    .local v1, "callRat":I
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->updateCallRatInternal(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    .end local v1    # "callRat":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 502
    nop

    .line 503
    goto/16 :goto_0

    .line 501
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 502
    throw v1

    .line 485
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 487
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 489
    .local v1, "event":I
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveCallSessionEventInternal(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 491
    .end local v1    # "event":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 492
    nop

    .line 493
    goto/16 :goto_0

    .line 491
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 492
    throw v1

    .line 474
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 476
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_2
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 478
    .local v1, "state":I
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->updateProfileInternal(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 480
    .end local v1    # "state":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 481
    nop

    .line 482
    goto/16 :goto_0

    .line 480
    :catchall_2
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 481
    throw v1

    .line 471
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_4
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->resetWrapperInternal()V

    .line 472
    goto/16 :goto_0

    .line 459
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 461
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_3
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 463
    .local v1, "isRoaming":Z
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->switchRoamingInternal(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 465
    .end local v1    # "isRoaming":Z
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 466
    nop

    .line 468
    goto/16 :goto_0

    .line 465
    :catchall_3
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 466
    throw v1

    .line 446
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 448
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_4
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 449
    .local v1, "feature":I
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 451
    .local v2, "on":Z
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v3, v1, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->switchFeatureInternal(IZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 453
    .end local v1    # "feature":I
    .end local v2    # "on":Z
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 454
    nop

    .line 456
    goto/16 :goto_0

    .line 453
    :catchall_4
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 454
    throw v1

    .line 443
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_7
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->setUIModeInternal(IZ)V

    .line 444
    goto/16 :goto_0

    .line 440
    :sswitch_8
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->startScreenRecordingInternal()V

    .line 441
    goto/16 :goto_0

    .line 437
    :sswitch_9
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setPauseImageInternal(Landroid/net/Uri;)V

    .line 438
    goto :goto_0

    .line 434
    :sswitch_a
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->requestCallDataUsageInternal()V

    .line 435
    goto :goto_0

    .line 431
    :sswitch_b
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->requestCameraCapabilitiesInternal()V

    .line 432
    goto :goto_0

    .line 428
    :sswitch_c
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->sendSessionModifyResponseInternal(Landroid/telecom/VideoProfile;)V

    .line 429
    goto :goto_0

    .line 416
    :sswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 418
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_5
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile;

    .line 419
    .local v1, "fromProfile":Landroid/telecom/VideoProfile;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/VideoProfile;

    .line 421
    .local v2, "toProfile":Landroid/telecom/VideoProfile;
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v3, v1, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->sendSessionModifyRequestInternal(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 423
    .end local v1    # "fromProfile":Landroid/telecom/VideoProfile;
    .end local v2    # "toProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 424
    nop

    .line 425
    goto :goto_0

    .line 423
    :catchall_5
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 424
    throw v1

    .line 413
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_e
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setZoomInternal(F)V

    .line 414
    goto :goto_0

    .line 410
    :sswitch_f
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDeviceOrientationInternal(I)V

    .line 411
    goto :goto_0

    .line 407
    :sswitch_10
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDisplaySurfaceInternal(Landroid/view/Surface;)V

    .line 408
    goto :goto_0

    .line 404
    :sswitch_11
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setPreviewSurfaceInternal(Landroid/view/Surface;)V

    .line 405
    goto :goto_0

    .line 401
    :sswitch_12
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setCameraInternal(Ljava/lang/String;)V

    .line 402
    nop

    .line 514
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_12
        0x3 -> :sswitch_11
        0x4 -> :sswitch_10
        0x5 -> :sswitch_f
        0x6 -> :sswitch_e
        0x7 -> :sswitch_d
        0x8 -> :sswitch_c
        0x9 -> :sswitch_b
        0xa -> :sswitch_a
        0xb -> :sswitch_9
        0xc -> :sswitch_8
        0x2bd -> :sswitch_7
        0x2be -> :sswitch_6
        0x2bf -> :sswitch_5
        0x2c0 -> :sswitch_4
        0x2c1 -> :sswitch_3
        0x2c2 -> :sswitch_2
        0x2c3 -> :sswitch_1
        0x2c4 -> :sswitch_0
    .end sparse-switch
.end method
