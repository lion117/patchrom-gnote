.class Lcom/android/internal/policy/impl/WallpaperWidget;
.super Landroid/widget/FrameLayout;
.source "WallpaperWidget.java"


# instance fields
.field private final ACTION_LOCKSCREEN_LIVE_WALLPAPER_CHANGED:Ljava/lang/String;

.field private final ACTION_LOCKSCREEN_WALLPAPER_CHANGED:Ljava/lang/String;

.field private final DBG:Z

.field private final LANDSCAPE_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

.field private final MSG_LIVE_WALLPAPER_CHANGED:I

.field private final MSG_WALLPAPER_CHANGED:I

.field private final PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final WALLPAPER_IMAGE_PATH:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCreationOrientation:I

.field private mHandler:Landroid/os/Handler;

.field private mIsLiveWallpaper:Z

.field private mIsTabletDevice:Z

.field private mLockScreenWallpaperImage:Landroid/widget/ImageView;

.field private mWallpapaerPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "context"
    .parameter "configuration"

    .prologue
    const/4 v7, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    const-string v5, "WallpaperWidget"

    iput-object v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->TAG:Ljava/lang/String;

    .line 31
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->DBG:Z

    .line 34
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 37
    const-string v5, "com.android.lockscreenwallpaper.CHANGED"

    iput-object v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->ACTION_LOCKSCREEN_WALLPAPER_CHANGED:Ljava/lang/String;

    .line 38
    const-string v5, "com.android.lockscreenwallpaper.LIVE_CHANGED"

    iput-object v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->ACTION_LOCKSCREEN_LIVE_WALLPAPER_CHANGED:Ljava/lang/String;

    .line 41
    const-string v5, "/data/data/com.android.sec.gallery3d/zzzzzz_lockscreen_wallpaper.jpg"

    iput-object v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

    .line 42
    const-string v5, "/data/data/com.android.sec.gallery3d/zzzzzz_lockscreen_wallpaper_land.jpg"

    iput-object v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->LANDSCAPE_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

    .line 43
    const-string v5, "/data/data/com.cooliris.media/files/zzzzzz_lockscreen_wallpaper.jpg"

    iput-object v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->WALLPAPER_IMAGE_PATH:Ljava/lang/String;

    .line 45
    const/16 v5, 0x12c0

    iput v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->MSG_WALLPAPER_CHANGED:I

    .line 46
    const/16 v5, 0x12c1

    iput v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->MSG_LIVE_WALLPAPER_CHANGED:I

    .line 59
    iput-object p1, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mContext:Landroid/content/Context;

    .line 60
    iget v5, p2, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mCreationOrientation:I

    .line 63
    :try_start_0
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .line 65
    .local v2, wm:Landroid/view/IWindowManager;
    invoke-interface {v2}, Landroid/view/IWindowManager;->canStatusBarHide()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 66
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mIsTabletDevice:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v2           #wm:Landroid/view/IWindowManager;
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lockscreen_wallpaper"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_1

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mIsLiveWallpaper:Z

    .line 77
    const-string v3, "WallpaperWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsLiveWallpaper = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mIsLiveWallpaper:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mIsLiveWallpaper:Z

    if-eqz v3, :cond_2

    .line 121
    :goto_2
    return-void

    .line 68
    .restart local v2       #wm:Landroid/view/IWindowManager;
    :cond_0
    const/4 v5, 0x1

    :try_start_1
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mIsTabletDevice:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 70
    .end local v2           #wm:Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "WallpaperWidget"

    const-string v6, "Failing checking whether status bar can hide"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mIsTabletDevice:Z

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    move v3, v4

    .line 76
    goto :goto_1

    .line 82
    :cond_2
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 83
    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 84
    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v7, v7}, Lcom/android/internal/policy/impl/WallpaperWidget;->addView(Landroid/view/View;II)V

    .line 87
    new-instance v3, Lcom/android/internal/policy/impl/WallpaperWidget$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/WallpaperWidget$1;-><init>(Lcom/android/internal/policy/impl/WallpaperWidget;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mHandler:Landroid/os/Handler;

    .line 102
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 103
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "com.android.lockscreenwallpaper.CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v3, "com.android.lockscreenwallpaper.LIVE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    new-instance v3, Lcom/android/internal/policy/impl/WallpaperWidget$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/WallpaperWidget$2;-><init>(Lcom/android/internal/policy/impl/WallpaperWidget;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    invoke-direct {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->setLockScreenWallpaper()V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/WallpaperWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->handleWallpaperUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/WallpaperWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->handleLiveWallpaperUpdate()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/WallpaperWidget;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private handleLiveWallpaperUpdate()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    return-void
.end method

.method private handleWallpaperUpdate()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    invoke-direct {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->setLockScreenWallpaper()V

    .line 127
    return-void
.end method

.method private setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;
    .locals 6

    .prologue
    const v5, 0x10803b8

    .line 192
    new-instance v1, Ljava/io/File;

    const-string v4, "//system/wallpaper/lockscreen_default_wallpaper.jpg"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .local v1, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 194
    .local v2, is:Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 196
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    .end local v2           #is:Ljava/io/InputStream;
    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .restart local v2       #is:Ljava/io/InputStream;
    :goto_0
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 206
    .local v3, tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 210
    :goto_1
    return-object v3

    .line 197
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Ljava/io/IOException;
    iget-object v4, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 199
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 201
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0

    .line 207
    .restart local v3       #tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :catch_1
    move-exception v0

    .line 208
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private setLockScreenWallpaper()V
    .locals 7

    .prologue
    .line 145
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mIsTabletDevice:Z

    if-eqz v3, :cond_1

    .line 146
    iget v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mCreationOrientation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 147
    const-string v3, "/data/data/com.android.sec.gallery3d/zzzzzz_lockscreen_wallpaper.jpg"

    iput-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mWallpapaerPath:Ljava/lang/String;

    .line 155
    :goto_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mWallpapaerPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 159
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mWallpapaerPath:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_1
    return-void

    .line 149
    .end local v2           #file:Ljava/io/File;
    :cond_0
    const-string v3, "/data/data/com.android.sec.gallery3d/zzzzzz_lockscreen_wallpaper_land.jpg"

    iput-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mWallpapaerPath:Ljava/lang/String;

    goto :goto_0

    .line 152
    :cond_1
    const-string v3, "/data/data/com.cooliris.media/files/zzzzzz_lockscreen_wallpaper.jpg"

    iput-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mWallpapaerPath:Ljava/lang/String;

    goto :goto_0

    .line 161
    .restart local v2       #file:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 162
    .local v1, ex:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    .line 167
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mIsTabletDevice:Z

    if-eqz v3, :cond_4

    .line 168
    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mWallpapaerPath:Ljava/lang/String;

    const-string v4, "/data/data/com.android.sec.gallery3d/zzzzzz_lockscreen_wallpaper.jpg"

    if-ne v3, v4, :cond_3

    const-string v3, "/data/data/com.android.sec.gallery3d/zzzzzz_lockscreen_wallpaper_land.jpg"

    :goto_2
    iput-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mWallpapaerPath:Ljava/lang/String;

    .line 173
    :goto_3
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mWallpapaerPath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, alternateFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 176
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mWallpapaerPath:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 178
    :catch_1
    move-exception v1

    .line 179
    .restart local v1       #ex:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    .line 168
    .end local v0           #alternateFile:Ljava/io/File;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_3
    const-string v3, "/data/data/com.android.sec.gallery3d/zzzzzz_lockscreen_wallpaper.jpg"

    goto :goto_2

    .line 170
    :cond_4
    const-string v3, "/data/data/com.cooliris.media/files/zzzzzz_lockscreen_wallpaper.jpg"

    iput-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mWallpapaerPath:Ljava/lang/String;

    goto :goto_3

    .line 184
    .restart local v0       #alternateFile:Ljava/io/File;
    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 137
    const-string v0, "WallpaperWidget"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mIsLiveWallpaper:Z

    if-eqz v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
