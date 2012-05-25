.class public Lcom/android/server/enterprise/RestrictionPolicy;
.super Landroid/app/enterprise/IRestrictionPolicy$Stub;
.source "RestrictionPolicy.java"


# static fields
.field private static final BROADCAST_DELAY:I = 0x1388

.field private static final MESSAGE_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RestrictionPolicy"

.field private static final USB_MODE_NONE:I = 0x5

.field private static final UsbProperty:Ljava/lang/String; = "persist.service.usb.setting"

.field private static mHomekeyPolicySet:I


# instance fields
.field private mBluetoothPan:Landroid/bluetooth/BluetoothPan;

.field private mBootReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

.field private mHandler:Landroid/os/Handler;

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/RestrictionPolicy;->mHomekeyPolicySet:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;-><init>()V

    .line 79
    new-instance v1, Lcom/android/server/enterprise/RestrictionPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/RestrictionPolicy$1;-><init>(Lcom/android/server/enterprise/RestrictionPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 88
    new-instance v1, Lcom/android/server/enterprise/RestrictionPolicy$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/RestrictionPolicy$2;-><init>(Lcom/android/server/enterprise/RestrictionPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 119
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 228
    new-instance v1, Lcom/android/server/enterprise/RestrictionPolicy$3;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/RestrictionPolicy$3;-><init>(Lcom/android/server/enterprise/RestrictionPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mHandler:Landroid/os/Handler;

    .line 63
    iput-object p1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 64
    new-instance v1, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 65
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    .local v0, filterBoot:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/enterprise/RestrictionPolicy;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/RestrictionPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->updateUSBMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/RestrictionPolicy;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/RestrictionPolicy;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method private disableNFC()V
    .locals 4

    .prologue
    .line 790
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 792
    .local v2, token:J
    :try_start_0
    invoke-static {}, Landroid/nfc/NfcAdapter;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 793
    .local v1, nfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    .end local v1           #nfcAdapter:Landroid/nfc/NfcAdapter;
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 798
    return-void

    .line 794
    :catch_0
    move-exception v0

    .line 795
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private enforceHwPermission()I
    .locals 2

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_HW_CONTROL"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforceLocationPermission()I
    .locals 2

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_LOCATION"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 153
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforceRestrictionPermission()I
    .locals 2

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_RESTRICTION"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 162
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforceTetheringPermission()I
    .locals 2

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_RESTRICTION"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 144
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private matchRegex([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "tetherableRegexs"
    .parameter "iface"

    .prologue
    .line 272
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 273
    .local v3, regex:Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 274
    const/4 v4, 0x1

    .line 276
    .end local v3           #regex:Ljava/lang/String;
    :goto_1
    return v4

    .line 272
    .restart local v3       #regex:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    .end local v3           #regex:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private updateHomeKeyPolicySet()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 1289
    const/4 v1, 0x0

    .line 1291
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "homeKeyEnabled"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1294
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1295
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 1296
    const/4 v1, 0x1

    .line 1300
    .end local v2           #value:Z
    :cond_1
    if-ne v1, v5, :cond_2

    move v4, v5

    :goto_0
    sput v4, Lcom/android/server/enterprise/RestrictionPolicy;->mHomekeyPolicySet:I

    .line 1301
    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateHomeKeyPolicySet():mHomekeyPolicySet:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/enterprise/RestrictionPolicy;->mHomekeyPolicySet:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    return-void

    .line 1300
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private updateUSBMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1177
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->isUsbDebuggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1184
    :cond_0
    return-void
.end method


# virtual methods
.method public allowFactoryReset(Z)Z
    .locals 5
    .parameter "allow"

    .prologue
    .line 1258
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1259
    .local v0, callingUid:I
    const/4 v1, 0x0

    .line 1261
    .local v1, ret:Z
    iget-object v2, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "RESTRICTION"

    const-string v4, "factoryresetallowed"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1264
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowFactoryReset():set :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    return v1
.end method

.method public allowSettingsChanges(Z)Z
    .locals 16
    .parameter "allow"

    .prologue
    .line 881
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v2

    .line 882
    .local v2, callingUid:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v14, "RESTRICTION"

    const-string v15, "allowSettingsChanges"

    move/from16 v0, p1

    invoke-virtual {v13, v2, v14, v15, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 885
    .local v8, ret:Z
    if-eqz v8, :cond_2

    .line 886
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 887
    .local v11, token:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v14, "activity"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 889
    .local v1, am:Landroid/app/ActivityManager;
    const/16 v13, 0xc

    const/4 v14, 0x0

    invoke-virtual {v1, v13, v14}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v7

    .line 891
    .local v7, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const-string v9, "com.android.settings"

    .line 892
    .local v9, settingsPkg:Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1

    .line 893
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 894
    .local v10, task:Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v5, v10, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 895
    .local v5, origInt:Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 896
    .local v3, cmp:Landroid/content/ComponentName;
    if-eqz v3, :cond_0

    .line 897
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 898
    .local v6, packageName:Ljava/lang/String;
    const-string v13, "RestrictionPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "packageName "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    if-eqz v6, :cond_0

    const-string v13, "com.android.settings"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 902
    const-string v13, "com.android.settings"

    invoke-virtual {v1, v13}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 908
    .end local v3           #cmp:Landroid/content/ComponentName;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #origInt:Landroid/content/Intent;
    .end local v6           #packageName:Ljava/lang/String;
    .end local v10           #task:Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v14, Landroid/content/Intent;

    const-string v15, "edm.intent.action.allow.settings"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 910
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 912
    .end local v1           #am:Landroid/app/ActivityManager;
    .end local v7           #recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v9           #settingsPkg:Ljava/lang/String;
    .end local v11           #token:J
    :cond_2
    return v8
.end method

.method public getSDCardState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 977
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBackgroundDataEnabled()Z
    .locals 7

    .prologue
    .line 1237
    const/4 v1, 0x1

    .line 1238
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "backgroundDataEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1239
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1240
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 1241
    move v1, v2

    .line 1245
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isBackupAllowed(Z)Z
    .locals 8
    .parameter "showMsg"

    .prologue
    .line 754
    const/4 v2, 0x1

    .line 755
    .local v2, ret:Z
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "backupEnabled"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 758
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 759
    .local v3, value:Z
    if-nez v3, :cond_0

    .line 760
    move v2, v3

    .line 764
    .end local v3           #value:Z
    :cond_1
    if-eqz p1, :cond_2

    if-nez v2, :cond_2

    .line 765
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 766
    .local v0, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401b6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 768
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 770
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    return v2
.end method

.method public isBluetoothTetheringEnabled()Z
    .locals 7

    .prologue
    .line 433
    const/4 v1, 0x1

    .line 434
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "bluetoothTetheringEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 437
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 438
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 439
    move v1, v2

    .line 443
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isCameraEnabled(Z)Z
    .locals 8
    .parameter "showMsg"

    .prologue
    .line 192
    const/4 v2, 0x1

    .line 193
    .local v2, ret:Z
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "cameraEnabled"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 196
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 197
    .local v3, value:Z
    if-nez v3, :cond_0

    .line 198
    move v2, v3

    .line 202
    .end local v3           #value:Z
    :cond_1
    if-eqz p1, :cond_2

    if-nez v2, :cond_2

    .line 203
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401b2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 208
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    return v2
.end method

.method public isCellularDataAllowed()Z
    .locals 7

    .prologue
    .line 860
    const/4 v1, 0x1

    .line 861
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "cellularDataEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 864
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 865
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 866
    move v1, v2

    .line 870
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isClipboardAllowed(Z)Z
    .locals 8
    .parameter "showMsg"

    .prologue
    .line 1021
    const/4 v2, 0x1

    .line 1022
    .local v2, ret:Z
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "clipboardEnabled"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1025
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1026
    .local v3, value:Z
    if-nez v3, :cond_0

    .line 1027
    move v2, v3

    .line 1031
    .end local v3           #value:Z
    :cond_1
    if-eqz p1, :cond_2

    if-nez v2, :cond_2

    .line 1032
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1033
    .local v0, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401b7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1036
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1038
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    return v2
.end method

.method public isFactoryResetAllowed()Z
    .locals 7

    .prologue
    .line 1274
    const/4 v1, 0x1

    .line 1275
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "factoryresetallowed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1278
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1279
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 1280
    move v1, v2

    .line 1284
    .end local v2           #value:Z
    :cond_1
    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isFactoryResetAllowed():ret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    return v1
.end method

.method public isHomeKeyEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1335
    const/4 v0, 0x1

    .line 1337
    .local v0, ret:Z
    sget v2, Lcom/android/server/enterprise/RestrictionPolicy;->mHomekeyPolicySet:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1338
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->updateHomeKeyPolicySet()V

    .line 1340
    :cond_0
    sget v2, Lcom/android/server/enterprise/RestrictionPolicy;->mHomekeyPolicySet:I

    if-ne v2, v1, :cond_1

    const/4 v0, 0x0

    .line 1342
    :goto_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHomeKeyEnabled :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    return v0

    :cond_1
    move v0, v1

    .line 1340
    goto :goto_0
.end method

.method public isMicrophoneEnabled(Z)Z
    .locals 9
    .parameter "showMsg"

    .prologue
    .line 249
    const/4 v2, 0x1

    .line 250
    .local v2, ret:Z
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "microphoneEnabled"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 253
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 254
    .local v3, value:Z
    if-nez v3, :cond_0

    .line 255
    move v2, v3

    .line 259
    .end local v3           #value:Z
    :cond_1
    if-eqz p1, :cond_2

    if-nez v2, :cond_2

    .line 260
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    .local v0, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401b3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 264
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x1388

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 266
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    return v2
.end method

.method public isMockLocationEnabled()Z
    .locals 7

    .prologue
    .line 698
    const/4 v1, 0x1

    .line 699
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "mockLocationEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 702
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 703
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 704
    move v1, v2

    .line 708
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isNFCEnabled()Z
    .locals 7

    .prologue
    .line 805
    const/4 v1, 0x1

    .line 806
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "nfcEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 809
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 810
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 811
    move v1, v2

    .line 815
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isNonMarketAppAllowed()Z
    .locals 7

    .prologue
    .line 1187
    const-string v4, "RestrictionPolicy"

    const-string v5, "MiscPolicy.isNonMarketAppAllowed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "allowNonMarketApp"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1191
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    const/4 v2, 0x1

    .line 1192
    .local v2, ret:Z
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1193
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 1194
    .local v3, value:Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1195
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1200
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #value:Ljava/lang/Boolean;
    :cond_1
    return v2
.end method

.method public isScreenCaptureEnabled(Z)Z
    .locals 8
    .parameter "showMsg"

    .prologue
    .line 537
    const/4 v2, 0x1

    .line 538
    .local v2, ret:Z
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "screenCaptureEnabled"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 541
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 542
    .local v3, value:Z
    if-nez v3, :cond_0

    .line 543
    move v2, v3

    .line 547
    .end local v3           #value:Z
    :cond_1
    if-eqz p1, :cond_2

    if-nez v2, :cond_2

    .line 548
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 549
    .local v0, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401b4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 554
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    return v2
.end method

.method public isSdCardEnabled()Z
    .locals 7

    .prologue
    .line 985
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getSDCardState()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 986
    const/4 v1, 0x0

    .line 998
    :cond_0
    :goto_0
    return v1

    .line 988
    :cond_1
    const/4 v1, 0x1

    .line 989
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "sdCardEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 992
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 993
    .local v2, value:Z
    if-nez v2, :cond_2

    .line 994
    move v1, v2

    .line 995
    goto :goto_0
.end method

.method public isSettingsChangesAllowed(Z)Z
    .locals 8
    .parameter "showMsg"

    .prologue
    .line 923
    const/4 v2, 0x1

    .line 924
    .local v2, ret:Z
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "allowSettingsChanges"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 925
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 926
    .local v3, value:Z
    if-nez v3, :cond_0

    .line 927
    move v2, v3

    .line 931
    .end local v3           #value:Z
    :cond_1
    if-eqz p1, :cond_2

    if-nez v2, :cond_2

    .line 932
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 933
    .local v0, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401bb

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 936
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 938
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    return v2
.end method

.method public isTetheringEnabled()Z
    .locals 4

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->isUsbTetheringEnabled()Z

    move-result v0

    .line 299
    .local v0, ret1:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->isWifiTetheringEnabled()Z

    move-result v1

    .line 300
    .local v1, ret2:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->isBluetoothTetheringEnabled()Z

    move-result v2

    .line 301
    .local v2, ret3:Z
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isUsbDebuggingEnabled()Z
    .locals 7

    .prologue
    .line 590
    const/4 v1, 0x1

    .line 591
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "usbDebuggingEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 594
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 595
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 596
    move v1, v2

    .line 600
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isUsbKiesAvailable(Z)Z
    .locals 1
    .parameter "showMsg"

    .prologue
    .line 1083
    const/4 v0, 0x0

    return v0
.end method

.method public isUsbMassStorageEnabled(Z)Z
    .locals 8
    .parameter "showMsg"

    .prologue
    .line 644
    const/4 v2, 0x1

    .line 645
    .local v2, ret:Z
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "massStorageEnabled"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 648
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 649
    .local v3, value:Z
    if-nez v3, :cond_0

    .line 650
    move v2, v3

    .line 654
    .end local v3           #value:Z
    :cond_1
    if-eqz p1, :cond_2

    if-nez v2, :cond_2

    .line 655
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 656
    .local v0, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401b1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 659
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 661
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    return v2
.end method

.method public isUsbMediaPlayerAvailable(Z)Z
    .locals 8
    .parameter "showMsg"

    .prologue
    .line 1134
    const/4 v2, 0x1

    .line 1135
    .local v2, ret:Z
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "usbMediaPlayerEnabled"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1138
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1139
    .local v3, value:Z
    if-nez v3, :cond_0

    .line 1140
    move v2, v3

    .line 1144
    .end local v3           #value:Z
    :cond_1
    if-eqz p1, :cond_2

    if-nez v2, :cond_2

    .line 1145
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1146
    .local v0, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401b9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1149
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1151
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    return v2
.end method

.method public isUsbTetheringEnabled()Z
    .locals 7

    .prologue
    .line 338
    const/4 v1, 0x1

    .line 339
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "usbTetheringEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 342
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 343
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 344
    move v1, v2

    .line 348
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isWifiTetheringEnabled()Z
    .locals 7

    .prologue
    .line 387
    const/4 v1, 0x1

    .line 388
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "wifiTetheringEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 391
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 392
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 393
    move v1, v2

    .line 397
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method onAdminRemoved()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 72
    const/4 v1, -0x1

    sput v1, Lcom/android/server/enterprise/RestrictionPolicy;->mHomekeyPolicySet:I

    .line 73
    const-string v1, "screenCaptureEnabled"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/RestrictionPolicy;->isScreenCaptureEnabled(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/data/system/enterprise.conf"

    invoke-static {v1, v0, v2}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 77
    return-void
.end method

.method public setAllowNonMarketApps(Z)Z
    .locals 8
    .parameter "allow"

    .prologue
    .line 1043
    const-string v5, "RestrictionPolicy"

    const-string v6, "MiscPolicy.setAllowNonMarketApps"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1045
    .local v0, callingUid:I
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "allowNonMarketApp"

    invoke-virtual {v5, v0, v6, v7, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 1048
    .local v2, ret:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->isNonMarketAppAllowed()Z

    move-result v1

    .line 1049
    .local v1, restrict:Z
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 1050
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1051
    .local v3, token:J
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "install_non_market_apps"

    if-eqz v1, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v5

    and-int/2addr v2, v5

    .line 1053
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1055
    .end local v3           #token:J
    :cond_0
    return v2

    .line 1051
    .restart local v3       #token:J
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public setBackgroundData(Z)Z
    .locals 8
    .parameter "enable"

    .prologue
    .line 1211
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1212
    .local v0, callingUid:I
    const/4 v2, 0x0

    .line 1213
    .local v2, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1215
    .local v3, token:J
    if-nez p1, :cond_0

    .line 1216
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "background_data"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1219
    :cond_0
    const/4 v2, 0x1

    .line 1223
    :goto_0
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "backgroundDataEnabled"

    invoke-virtual {v5, v0, v6, v7, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    and-int/2addr v2, v5

    .line 1226
    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setBackgroundData : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1228
    return v2

    .line 1220
    :catch_0
    move-exception v1

    .line 1221
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setBackup(Z)Z
    .locals 9
    .parameter "enable"

    .prologue
    const/4 v6, 0x0

    .line 719
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v1

    .line 720
    .local v1, callingUid:I
    const/4 v3, 0x1

    .line 721
    .local v3, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 724
    .local v4, token:J
    if-nez p1, :cond_1

    .line 725
    :try_start_0
    const-string v7, "backup"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 728
    .local v0, backupManager:Landroid/app/backup/IBackupManager;
    if-nez v0, :cond_0

    .line 729
    const-string v7, "RestrictionPolicy"

    const-string v8, "Failed to get BackupManager"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    .end local v0           #backupManager:Landroid/app/backup/IBackupManager;
    :goto_0
    return v6

    .line 732
    .restart local v0       #backupManager:Landroid/app/backup/IBackupManager;
    :cond_0
    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 733
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    .end local v0           #backupManager:Landroid/app/backup/IBackupManager;
    :cond_1
    const/4 v3, 0x1

    .line 740
    :goto_1
    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "RESTRICTION"

    const-string v8, "backupEnabled"

    invoke-virtual {v6, v1, v7, v8, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    and-int/2addr v3, v6

    .line 743
    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setBackup: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v3

    .line 745
    goto :goto_0

    .line 736
    :catch_0
    move-exception v2

    .line 737
    .local v2, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 738
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setBluetoothTethering(Z)Z
    .locals 8
    .parameter "enable"

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceTetheringPermission()I

    move-result v0

    .line 408
    .local v0, callingUid:I
    const/4 v2, 0x0

    .line 409
    .local v2, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 412
    .local v3, token:J
    if-nez p1, :cond_0

    .line 413
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 415
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "bluetoothTetheringEnabled"

    invoke-virtual {v5, v0, v6, v7, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 419
    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setBluetoothTethering : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 424
    return v2

    .line 420
    :catch_0
    move-exception v1

    .line 421
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "RestrictionPolicy"

    const-string v6, "is EDMStorageProvider running?"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCamera(Z)Z
    .locals 5
    .parameter "enable"

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceHwPermission()I

    move-result v0

    .line 175
    .local v0, callingUid:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "RESTRICTION"

    const-string v4, "cameraEnabled"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 181
    :goto_0
    return v2

    .line 178
    :catch_0
    move-exception v1

    .line 179
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "RestrictionPolicy"

    const-string v3, "is EDMStorageProvider running?"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setCellularData(Z)Z
    .locals 9
    .parameter "enable"

    .prologue
    const/4 v6, 0x0

    .line 826
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 827
    .local v0, callingUid:I
    const/4 v3, 0x1

    .line 828
    .local v3, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 831
    .local v4, token:J
    if-nez p1, :cond_1

    .line 832
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 834
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    if-nez v1, :cond_0

    .line 835
    const-string v7, "RestrictionPolicy"

    const-string v8, "Failed to get Connectivity Manager"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    .end local v1           #connectivityManager:Landroid/net/ConnectivityManager;
    :goto_0
    return v6

    .line 838
    .restart local v1       #connectivityManager:Landroid/net/ConnectivityManager;
    :cond_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 839
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    .end local v1           #connectivityManager:Landroid/net/ConnectivityManager;
    :cond_1
    const/4 v3, 0x1

    .line 846
    :goto_1
    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "RESTRICTION"

    const-string v8, "cellularDataEnabled"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    and-int/2addr v3, v6

    .line 849
    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setCellularData: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v3

    .line 851
    goto :goto_0

    .line 842
    :catch_0
    move-exception v2

    .line 843
    .local v2, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 844
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setClipboardEnabled(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    .line 1009
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1010
    .local v0, callingUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "RESTRICTION"

    const-string v3, "clipboardEnabled"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public setEnableNFC(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    .line 779
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceHwPermission()I

    move-result v0

    .line 781
    .local v0, callingUid:I
    if-nez p1, :cond_0

    .line 782
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->disableNFC()V

    .line 784
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "RESTRICTION"

    const-string v3, "nfcEnabled"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public setHomeKeyState(Z)Z
    .locals 5
    .parameter "enable"

    .prologue
    .line 1318
    const/4 v1, 0x1

    .line 1319
    .local v1, ret:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1320
    .local v0, callingUid:I
    iget-object v2, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "RESTRICTION"

    const-string v4, "homeKeyEnabled"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1323
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->updateHomeKeyPolicySet()V

    .line 1324
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setHomeKeyState:ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mHomekeyPolicySet:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/enterprise/RestrictionPolicy;->mHomekeyPolicySet:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    return v1
.end method

.method public setMicrophoneState(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceHwPermission()I

    move-result v0

    .line 220
    .local v0, callingUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "RESTRICTION"

    const-string v3, "microphoneEnabled"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public setMockLocation(Z)Z
    .locals 8
    .parameter "enable"

    .prologue
    .line 671
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceLocationPermission()I

    move-result v0

    .line 672
    .local v0, callingUid:I
    const/4 v2, 0x1

    .line 673
    .local v2, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 675
    .local v3, token:J
    if-nez p1, :cond_0

    .line 676
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mock_location"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    :cond_0
    const/4 v2, 0x1

    .line 684
    :goto_0
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "mockLocationEnabled"

    invoke-virtual {v5, v0, v6, v7, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    and-int/2addr v2, v5

    .line 687
    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMockLocationState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 689
    return v2

    .line 680
    :catch_0
    move-exception v1

    .line 681
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 682
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setScreenCapture(Z)Z
    .locals 14
    .parameter "enable"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 452
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 453
    .local v0, callingUid:I
    const/4 v5, 0x0

    .line 454
    .local v5, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 458
    .local v6, token:J
    :try_start_0
    iget-object v11, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v12, "RESTRICTION"

    const-string v13, "screenCaptureEnabled"

    invoke-virtual {v11, v0, v12, v13, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    .line 460
    const-string v11, "RestrictionPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setScreenCapture : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    if-eqz v5, :cond_1

    .line 464
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/enterprise/RestrictionPolicy;->isScreenCaptureEnabled(Z)Z

    move-result v2

    .line 466
    .local v2, current:Z
    const-string v11, "screenCaptureEnabled"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v2, :cond_0

    move v10, v8

    :cond_0
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "/data/system/enterprise.conf"

    invoke-static {v11, v10, v12}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 469
    iget-object v10, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 472
    .local v4, pm:Landroid/content/pm/PackageManager;
    :try_start_1
    new-instance v1, Landroid/content/ComponentName;

    const-string v10, "com.sec.android.app.screencapture"

    const-string v11, "com.sec.android.app.screencapture.ScreenCaptureService"

    invoke-direct {v1, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    .local v1, comName:Landroid/content/ComponentName;
    if-eqz v2, :cond_2

    move v10, v8

    :goto_0
    const/4 v11, 0x0

    invoke-virtual {v4, v1, v10, v11}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 485
    .end local v1           #comName:Landroid/content/ComponentName;
    :goto_1
    :try_start_2
    new-instance v1, Landroid/content/ComponentName;

    const-string v10, "com.diotek.screen_capture"

    const-string v11, "com.diotek.screen_capture.CaptureService"

    invoke-direct {v1, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    .restart local v1       #comName:Landroid/content/ComponentName;
    if-eqz v2, :cond_3

    move v10, v8

    :goto_2
    const/4 v11, 0x0

    invoke-virtual {v4, v1, v10, v11}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 499
    .end local v1           #comName:Landroid/content/ComponentName;
    :goto_3
    :try_start_3
    new-instance v1, Landroid/content/ComponentName;

    const-string v10, "com.diotek.screen_capture2"

    const-string v11, "com.sec.android.app.screencapture.capture.CaptureService"

    invoke-direct {v1, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    .restart local v1       #comName:Landroid/content/ComponentName;
    if-eqz v2, :cond_4

    move v10, v8

    :goto_4
    const/4 v11, 0x0

    invoke-virtual {v4, v1, v10, v11}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 510
    .end local v1           #comName:Landroid/content/ComponentName;
    :goto_5
    :try_start_4
    new-instance v1, Landroid/content/ComponentName;

    const-string v10, "com.android.systemui"

    const-string v11, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v1, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    .restart local v1       #comName:Landroid/content/ComponentName;
    if-eqz v2, :cond_5

    :goto_6
    const/4 v9, 0x0

    invoke-virtual {v4, v1, v8, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 527
    .end local v1           #comName:Landroid/content/ComponentName;
    .end local v2           #current:Z
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    :goto_7
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 528
    return v5

    .restart local v1       #comName:Landroid/content/ComponentName;
    .restart local v2       #current:Z
    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    :cond_2
    move v10, v9

    .line 475
    goto :goto_0

    .line 480
    .end local v1           #comName:Landroid/content/ComponentName;
    :catch_0
    move-exception v3

    .line 481
    .local v3, e:Ljava/lang/Exception;
    :try_start_5
    const-string v10, "RestrictionPolicy"

    const-string v11, "is component enabled?"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 524
    .end local v2           #current:Z
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v3

    .line 525
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v8, "RestrictionPolicy"

    const-string v9, "setScreenCapture error"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #comName:Landroid/content/ComponentName;
    .restart local v2       #current:Z
    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    :cond_3
    move v10, v9

    .line 489
    goto :goto_2

    .line 494
    .end local v1           #comName:Landroid/content/ComponentName;
    :catch_2
    move-exception v3

    .line 495
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_6
    const-string v10, "RestrictionPolicy"

    const-string v11, "is component enabled?"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #comName:Landroid/content/ComponentName;
    :cond_4
    move v10, v9

    .line 502
    goto :goto_4

    .line 505
    .end local v1           #comName:Landroid/content/ComponentName;
    :catch_3
    move-exception v3

    .line 506
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v10, "RestrictionPolicy"

    const-string v11, "is component enabled?"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #comName:Landroid/content/ComponentName;
    :cond_5
    move v8, v9

    .line 513
    goto :goto_6

    .line 518
    .end local v1           #comName:Landroid/content/ComponentName;
    :catch_4
    move-exception v3

    .line 519
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v8, "RestrictionPolicy"

    const-string v9, "is component enabled?"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_7
.end method

.method public setSdCardState(Z)Z
    .locals 9
    .parameter "enable"

    .prologue
    const/4 v3, 0x0

    .line 947
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceHwPermission()I

    move-result v0

    .line 948
    .local v0, callingUid:I
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getSDCardState()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 968
    :goto_0
    return v3

    .line 951
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 952
    .local v4, token:J
    const/4 v3, 0x1

    .line 953
    .local v3, ret:Z
    const-string v6, "mount"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 955
    .local v2, mountService:Landroid/os/storage/IMountService;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "RESTRICTION"

    const-string v8, "sdCardEnabled"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    and-int/2addr v3, v6

    .line 958
    if-nez p1, :cond_1

    .line 959
    const-string v6, "/mnt/sdcard/external_sd"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v2, v6, v7, v8}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 967
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 961
    :cond_1
    :try_start_1
    const-string v6, "/mnt/sdcard/external_sd"

    invoke-interface {v2, v6}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 964
    :catch_0
    move-exception v1

    .line 965
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setTethering(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    .line 286
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/RestrictionPolicy;->setUsbTethering(Z)Z

    move-result v0

    .line 287
    .local v0, ret1:Z
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/RestrictionPolicy;->setWifiTethering(Z)Z

    move-result v1

    .line 288
    .local v1, ret2:Z
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/RestrictionPolicy;->setBluetoothTethering(Z)Z

    move-result v2

    .line 289
    .local v2, ret3:Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setUsbDebuggingEnabled(Z)Z
    .locals 8
    .parameter "enable"

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 565
    .local v0, callingUid:I
    const/4 v2, 0x1

    .line 566
    .local v2, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 568
    .local v3, token:J
    if-nez p1, :cond_0

    .line 569
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "adb_enabled"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    :cond_0
    const/4 v2, 0x1

    .line 576
    :goto_0
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "usbDebuggingEnabled"

    invoke-virtual {v5, v0, v6, v7, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    and-int/2addr v2, v5

    .line 579
    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setUSBDebugging : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 581
    return v2

    .line 573
    :catch_0
    move-exception v1

    .line 574
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setUsbKiesAvailability(Z)Z
    .locals 1
    .parameter "allow"

    .prologue
    .line 1061
    const/4 v0, 0x0

    return v0
.end method

.method public setUsbMassStorage(Z)Z
    .locals 9
    .parameter "enable"

    .prologue
    .line 610
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 611
    .local v0, callingUid:I
    const/4 v2, 0x1

    .line 612
    .local v2, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 613
    .local v4, token:J
    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "RESTRICTION"

    const-string v8, "massStorageEnabled"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    and-int/2addr v2, v6

    .line 617
    if-nez p1, :cond_2

    .line 618
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v7, "storage"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 620
    .local v3, storageManager:Landroid/os/storage/StorageManager;
    if-nez v3, :cond_0

    .line 621
    const-string v6, "RestrictionPolicy"

    const-string v7, "Failed to get StorageManager"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const/4 v6, 0x0

    .line 635
    .end local v3           #storageManager:Landroid/os/storage/StorageManager;
    :goto_0
    return v6

    .line 625
    .restart local v3       #storageManager:Landroid/os/storage/StorageManager;
    :cond_0
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 626
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->disableUsbMassStorage()V

    .line 627
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->updateUSBMode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    .end local v3           #storageManager:Landroid/os/storage/StorageManager;
    :cond_2
    const/4 v2, 0x1

    .line 634
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v2

    .line 635
    goto :goto_0

    .line 630
    :catch_0
    move-exception v1

    .line 631
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 632
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setUsbMediaPlayerAvailability(Z)Z
    .locals 10
    .parameter "allow"

    .prologue
    .line 1105
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1106
    .local v0, callingUid:I
    const/4 v4, 0x1

    .line 1107
    .local v4, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1108
    .local v5, token:J
    iget-object v7, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "RESTRICTION"

    const-string v9, "usbMediaPlayerEnabled"

    invoke-virtual {v7, v0, v8, v9, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    and-int/2addr v4, v7

    .line 1112
    if-nez p1, :cond_0

    .line 1114
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v7, "edm.intent.action.disable.mtp"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1115
    .local v2, intent1:Landroid/content/Intent;
    const/high16 v7, 0x2000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1116
    iget-object v7, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1118
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1119
    .local v3, intent2:Landroid/content/Intent;
    const/high16 v7, 0x2000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1120
    const-string v7, "mtp"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1121
    const-string v7, "ptp"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1122
    iget-object v7, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1127
    .end local v2           #intent1:Landroid/content/Intent;
    .end local v3           #intent2:Landroid/content/Intent;
    :cond_0
    :goto_0
    const-string v7, "RestrictionPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setUSBMediaPlayerAvailability: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1129
    return v4

    .line 1124
    :catch_0
    move-exception v1

    .line 1125
    .local v1, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setUsbTethering(Z)Z
    .locals 13
    .parameter "enable"

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceTetheringPermission()I

    move-result v1

    .line 312
    .local v1, callingUid:I
    const/4 v6, 0x1

    .local v6, ret1:Z
    const/4 v7, 0x1

    .line 313
    .local v7, ret2:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 314
    .local v8, token:J
    if-nez p1, :cond_1

    .line 316
    iget-object v10, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v11, "connectivity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 318
    .local v5, mConnManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 319
    .local v3, iface:Ljava/lang/String;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v3}, Lcom/android/server/enterprise/RestrictionPolicy;->matchRegex([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 320
    invoke-virtual {v5, v3}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_0

    .line 321
    const/4 v6, 0x0

    .line 318
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 325
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #iface:Ljava/lang/String;
    .end local v4           #len$:I
    .end local v5           #mConnManager:Landroid/net/ConnectivityManager;
    :cond_1
    iget-object v10, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "RESTRICTION"

    const-string v12, "usbTetheringEnabled"

    invoke-virtual {v10, v1, v11, v12, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    .line 328
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 329
    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    const/4 v10, 0x1

    :goto_1
    return v10

    :cond_2
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public setWifiTethering(Z)Z
    .locals 16
    .parameter "enable"

    .prologue
    .line 358
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceTetheringPermission()I

    move-result v2

    .line 359
    .local v2, callingUid:I
    const/4 v8, 0x1

    .local v8, ret1:Z
    const/4 v9, 0x1

    .local v9, ret2:Z
    const/4 v10, 0x1

    .line 360
    .local v10, ret3:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 361
    .local v11, token:J
    if-nez p1, :cond_2

    .line 362
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v14, "connectivity"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 364
    .local v6, mConnManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v4, v1, v3

    .line 365
    .local v4, iface:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Lcom/android/server/enterprise/RestrictionPolicy;->matchRegex([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 366
    invoke-virtual {v6, v4}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_0

    .line 367
    const/4 v8, 0x0

    .line 364
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 370
    .end local v4           #iface:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v14, "wifi"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 372
    .local v7, mWifiManager:Landroid/net/wifi/WifiManager;
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v7, v13, v14}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v9

    .line 374
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v6           #mConnManager:Landroid/net/ConnectivityManager;
    .end local v7           #mWifiManager:Landroid/net/wifi/WifiManager;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v14, "RESTRICTION"

    const-string v15, "wifiTetheringEnabled"

    move/from16 v0, p1

    invoke-virtual {v13, v2, v14, v15, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 377
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 378
    if-eqz v8, :cond_3

    if-eqz v9, :cond_3

    const/4 v13, 0x1

    :goto_1
    return v13

    :cond_3
    const/4 v13, 0x0

    goto :goto_1
.end method
