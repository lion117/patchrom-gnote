.class public Lcom/android/server/enterprise/SecurityPolicy;
.super Landroid/app/enterprise/ISecurityPolicy$Stub;
.source "SecurityPolicy.java"


# static fields
.field private static final ACCOUNTS_TYPE:Ljava/lang/String; = "type"

.field private static final LS_COMMAND:I = 0x0

.field private static final LS_LA_COMMAND:I = 0x1

.field private static final TABLE_ACCOUNTS:Ljava/lang/String; = "accounts"

.field private static final TAG:Ljava/lang/String; = "SecurityPolicy"


# instance fields
.field mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mMediaFormatRet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/app/enterprise/ISecurityPolicy$Stub;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/SecurityPolicy;->mMediaFormatRet:Z

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/SecurityPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 73
    iput-object p1, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 74
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/SecurityPolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    .line 75
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/enterprise/SecurityPolicy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/server/enterprise/SecurityPolicy;->mMediaFormatRet:Z

    return p1
.end method

.method private enforceSecurityPermission()I
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private executeCommand(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 802
    .local p1, commandStr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 803
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 804
    .local v6, resultList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 805
    .local v2, readLength:I
    const/4 v3, 0x0

    .line 807
    .local v3, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v7, Ljava/lang/ProcessBuilder;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .line 809
    .local v1, process:Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 810
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 811
    .end local v3           #reader:Ljava/io/BufferedReader;
    .local v4, reader:Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 812
    .local v5, resultLine:Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 813
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_0

    .line 815
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 816
    .end local v1           #process:Ljava/lang/Process;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .end local v5           #resultLine:Ljava/lang/String;
    .local v0, e:Ljava/io/IOException;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    const-string v7, "SecurityPolicy"

    const-string v8, "executeCommand failed "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 823
    if-eqz v3, :cond_0

    .line 824
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 830
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    :goto_2
    return-object v6

    .line 823
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v1       #process:Ljava/lang/Process;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    .restart local v5       #resultLine:Ljava/lang/String;
    :cond_1
    if-eqz v4, :cond_2

    .line 824
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_2
    :goto_3
    move-object v3, v4

    .line 829
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 818
    .end local v1           #process:Ljava/lang/Process;
    .end local v5           #resultLine:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 819
    .local v0, e:Ljava/lang/InterruptedException;
    :goto_4
    :try_start_5
    const-string v7, "SecurityPolicy"

    const-string v8, "executeCommand failed "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 823
    if-eqz v3, :cond_0

    .line 824
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 826
    :catch_2
    move-exception v0

    .line 827
    .local v0, e:Ljava/io/IOException;
    const-string v7, "SecurityPolicy"

    const-string v8, ""

    :goto_5
    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 822
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 823
    :goto_6
    if-eqz v3, :cond_3

    .line 824
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 822
    :cond_3
    :goto_7
    throw v7

    .line 826
    :catch_3
    move-exception v0

    .line 827
    .restart local v0       #e:Ljava/io/IOException;
    const-string v8, "SecurityPolicy"

    const-string v9, ""

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 826
    :catch_4
    move-exception v0

    .line 827
    const-string v7, "SecurityPolicy"

    const-string v8, ""

    goto :goto_5

    .line 826
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v1       #process:Ljava/lang/Process;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    .restart local v5       #resultLine:Ljava/lang/String;
    :catch_5
    move-exception v0

    .line 827
    .restart local v0       #e:Ljava/io/IOException;
    const-string v7, "SecurityPolicy"

    const-string v8, ""

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 822
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_6

    .line 818
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 815
    .end local v1           #process:Ljava/lang/Process;
    .end local v5           #resultLine:Ljava/lang/String;
    :catch_7
    move-exception v0

    goto :goto_1
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/enterprise/SecurityPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/SecurityPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/SecurityPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    const/4 v1, 0x0

    .line 98
    if-nez p1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-object v1

    .line 98
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    move-object v1, p1

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SecurityPolicy"

    const-string v3, "is string valid?"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public changeCredentialStoragePassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "oldpassword"
    .parameter "newpassword"

    .prologue
    .line 615
    const/4 v0, 0x0

    return v0
.end method

.method public clearInstalledCertificates()Z
    .locals 12

    .prologue
    .line 674
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 676
    const/4 v7, 0x1

    .line 678
    .local v7, ret:Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .local v3, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 682
    .local v8, token:J
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v10

    const-string v11, "CACERT_"

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 683
    .local v6, names:[Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 684
    .local v5, name:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CACERT_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 686
    .end local v5           #name:Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v10

    const-string v11, "USRCERT_"

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 687
    move-object v0, v6

    array-length v4, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v5, v0, v1

    .line 688
    .restart local v5       #name:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "USRCERT_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 690
    .end local v5           #name:Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v10

    const-string v11, "USRPKEY_"

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 691
    move-object v0, v6

    array-length v4, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_2

    aget-object v5, v0, v1

    .line 692
    .restart local v5       #name:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "USRPKEY_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 695
    .end local v5           #name:Ljava/lang/String;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 696
    .local v2, key:Ljava/lang/String;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move-result v10

    and-int/2addr v7, v10

    goto :goto_3

    .line 719
    .end local v2           #key:Ljava/lang/String;
    :cond_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 721
    return v7
.end method

.method public formatInternalStorage(ZZ)Z
    .locals 1
    .parameter "includeSystemDirectory"
    .parameter "includeDataDirectory"

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method public formatSelective([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "fileList"
    .parameter "filters"

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public formatStorageCard(Z)Z
    .locals 12
    .parameter "isExternal"

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x1

    .line 219
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 221
    iput-boolean v9, p0, Lcom/android/server/enterprise/SecurityPolicy;->mMediaFormatRet:Z

    .line 222
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 225
    .local v1, ident:J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v10, "storage"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageManager;

    .line 226
    .local v7, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v7}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v8

    .line 228
    .local v8, storageVolumes:[Landroid/os/storage/StorageVolume;
    const/4 v3, 0x0

    .line 229
    .local v3, intent:Landroid/content/Intent;
    if-ne p1, v11, :cond_1

    .line 230
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v9, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v9, "storage_volume"

    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 237
    :goto_0
    sget-object v9, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 238
    const-string v9, "edm"

    const-string v10, "true"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    iget-object v9, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 241
    if-ne p1, v11, :cond_0

    .line 242
    new-instance v5, Ljava/lang/Object;

    invoke-direct/range {v5 .. v5}, Ljava/lang/Object;-><init>()V

    .line 243
    .local v5, lock:Ljava/lang/Object;
    new-instance v6, Lcom/android/server/enterprise/SecurityPolicy$1;

    invoke-direct {v6, p0, v8, v5}, Lcom/android/server/enterprise/SecurityPolicy$1;-><init>(Lcom/android/server/enterprise/SecurityPolicy;[Landroid/os/storage/StorageVolume;Ljava/lang/Object;)V

    .line 261
    .local v6, mediaReceiver:Landroid/content/BroadcastReceiver;
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 262
    .local v4, intentFilter:Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    const-string v9, "file"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 264
    iget-object v9, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 266
    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    const-wide/16 v9, 0x1b58

    :try_start_1
    invoke-virtual {v5, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 272
    :goto_1
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 273
    :try_start_3
    iget-object v9, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 280
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #intentFilter:Landroid/content/IntentFilter;
    .end local v5           #lock:Ljava/lang/Object;
    .end local v6           #mediaReceiver:Landroid/content/BroadcastReceiver;
    .end local v7           #storageManager:Landroid/os/storage/StorageManager;
    .end local v8           #storageVolumes:[Landroid/os/storage/StorageVolume;
    :cond_0
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 282
    iget-boolean v9, p0, Lcom/android/server/enterprise/SecurityPolicy;->mMediaFormatRet:Z

    return v9

    .line 233
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v7       #storageManager:Landroid/os/storage/StorageManager;
    .restart local v8       #storageVolumes:[Landroid/os/storage/StorageVolume;
    :cond_1
    :try_start_4
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v9, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v9, "storage_volume"

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 276
    .end local v3           #intent:Landroid/content/Intent;
    .end local v7           #storageManager:Landroid/os/storage/StorageManager;
    .end local v8           #storageVolumes:[Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v0

    .line 277
    .local v0, e:Ljava/lang/Exception;
    const-string v9, "SecurityPolicy"

    const-string v10, "formatStorageCard fail"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 269
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #intentFilter:Landroid/content/IntentFilter;
    .restart local v5       #lock:Ljava/lang/Object;
    .restart local v6       #mediaReceiver:Landroid/content/BroadcastReceiver;
    .restart local v7       #storageManager:Landroid/os/storage/StorageManager;
    .restart local v8       #storageVolumes:[Landroid/os/storage/StorageVolume;
    :catch_1
    move-exception v0

    .line 270
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_5
    const-string v9, "SecurityPolicy"

    const-string v10, "formatStorageCard - InterruptedException"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 272
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v9

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v9
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
.end method

.method public getFileNamesOnDevice(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 772
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 773
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 774
    .local v0, commandStr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "ls"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 777
    const-string v1, "@"

    const-string v2, "\\@"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 778
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 780
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/SecurityPolicy;->executeCommand(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getFileNamesWithAttributes(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 788
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 789
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 790
    .local v0, commandStr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "ls"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    const-string v1, "-l"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 792
    const-string v1, "-a"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 793
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 795
    const-string v1, "@"

    const-string v2, "\\@"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 796
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 798
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/SecurityPolicy;->executeCommand(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getInstalledCertificateNames(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 504
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 509
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 510
    const/4 v0, 0x0

    .line 511
    .local v0, names:[Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 512
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 513
    .local v1, token:J
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 514
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 516
    .end local v1           #token:J
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getInstalledCertificates()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 417
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 418
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .local v14, ret:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    const/4 v5, 0x0

    .line 421
    .local v5, cf:Ljava/security/cert/CertificateFactory;
    :try_start_0
    const-string v17, "X.509"

    invoke-static/range {v17 .. v17}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 426
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .local v11, nameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 431
    .local v15, token:J
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v17

    const-string v18, "USRCERT_"

    invoke-virtual/range {v17 .. v18}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 432
    .local v12, names:[Ljava/lang/String;
    move-object v2, v12

    .local v2, arr$:[Ljava/lang/String;
    array-length v9, v2

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v10, v2, v7

    .line 433
    .local v10, name:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "USRCERT_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 422
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #nameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v12           #names:[Ljava/lang/String;
    .end local v15           #token:J
    :catch_0
    move-exception v6

    .line 423
    .local v6, e:Ljava/security/cert/CertificateException;
    const-string v17, "SecurityPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error getting CertificateFactory instance"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    .end local v6           #e:Ljava/security/cert/CertificateException;
    :goto_1
    return-object v14

    .line 436
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v7       #i$:I
    .restart local v9       #len$:I
    .restart local v11       #nameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12       #names:[Ljava/lang/String;
    .restart local v15       #token:J
    :cond_0
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 437
    .restart local v10       #name:Ljava/lang/String;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/security/KeyStore;->cert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 438
    .local v13, pem_cert:Ljava/lang/String;
    const/4 v3, 0x0

    .line 440
    .local v3, cert:Ljava/security/cert/X509Certificate;
    :try_start_1
    new-instance v17, Ljava/io/ByteArrayInputStream;

    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v3, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 445
    :goto_3
    if-eqz v3, :cond_1

    .line 446
    new-instance v4, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v4}, Landroid/app/enterprise/CertificateInfo;-><init>()V

    .line 447
    .local v4, certInfo:Landroid/app/enterprise/CertificateInfo;
    invoke-virtual {v4, v3}, Landroid/app/enterprise/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    .line 448
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 442
    .end local v4           #certInfo:Landroid/app/enterprise/CertificateInfo;
    :catch_1
    move-exception v6

    .line 443
    .local v6, e:Ljava/lang/Exception;
    const-string v17, "SecurityPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception reading certificate"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 453
    .end local v3           #cert:Ljava/security/cert/X509Certificate;
    .end local v6           #e:Ljava/lang/Exception;
    .end local v10           #name:Ljava/lang/String;
    .end local v13           #pem_cert:Ljava/lang/String;
    :cond_2
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 455
    .local v8, keystoreAliases:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v17

    const-string v18, "CACERT_"

    invoke-virtual/range {v17 .. v18}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 456
    move-object v2, v12

    array-length v9, v2

    const/4 v7, 0x0

    .local v7, i$:I
    :goto_4
    if-ge v7, v9, :cond_3

    aget-object v10, v2, v7

    .line 457
    .restart local v10       #name:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CACERT_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 459
    .end local v10           #name:Ljava/lang/String;
    :cond_3
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_4
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 460
    .restart local v10       #name:Ljava/lang/String;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/security/KeyStore;->cert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 461
    .restart local v13       #pem_cert:Ljava/lang/String;
    const/4 v3, 0x0

    .line 463
    .restart local v3       #cert:Ljava/security/cert/X509Certificate;
    :try_start_2
    new-instance v17, Ljava/io/ByteArrayInputStream;

    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v3, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 468
    :goto_6
    if-eqz v3, :cond_4

    .line 469
    new-instance v4, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v4}, Landroid/app/enterprise/CertificateInfo;-><init>()V

    .line 470
    .restart local v4       #certInfo:Landroid/app/enterprise/CertificateInfo;
    invoke-virtual {v4, v3}, Landroid/app/enterprise/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/SecurityPolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 472
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 465
    .end local v4           #certInfo:Landroid/app/enterprise/CertificateInfo;
    :catch_2
    move-exception v6

    .line 466
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v17, "SecurityPolicy"

    const-string v18, "Exception reading certificate"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 494
    .end local v3           #cert:Ljava/security/cert/X509Certificate;
    .end local v6           #e:Ljava/lang/Exception;
    .end local v10           #name:Ljava/lang/String;
    .end local v13           #pem_cert:Ljava/lang/String;
    :cond_5
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1
.end method

.method public getSystemCertificates()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 401
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v5, ret:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    iget-object v6, p0, Lcom/android/server/enterprise/SecurityPolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->allSystemAliases()Ljava/util/Set;

    move-result-object v1

    .line 404
    .local v1, aliases:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 405
    .local v0, alias:Ljava/lang/String;
    new-instance v3, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v3}, Landroid/app/enterprise/CertificateInfo;-><init>()V

    .line 406
    .local v3, certInfo:Landroid/app/enterprise/CertificateInfo;
    iget-object v6, p0, Lcom/android/server/enterprise/SecurityPolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-virtual {v6, v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 407
    .local v2, cert:Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_0

    .line 408
    invoke-virtual {v3, v2}, Landroid/app/enterprise/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    .line 409
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 412
    .end local v0           #alias:Ljava/lang/String;
    .end local v2           #cert:Ljava/security/cert/X509Certificate;
    .end local v3           #certInfo:Landroid/app/enterprise/CertificateInfo;
    :cond_1
    return-object v5
.end method

.method public installCertificate(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "type"
    .parameter "value"
    .parameter "name"
    .parameter "password"

    .prologue
    .line 646
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 647
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 648
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 649
    invoke-direct {p0, p4}, Lcom/android/server/enterprise/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 650
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v5, p2

    if-eqz v5, :cond_0

    if-nez p3, :cond_1

    .line 651
    :cond_0
    const-string v5, "SecurityPolicy"

    const-string v6, "installCertificate : Invalid parameter(s)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/4 v1, 0x0

    .line 669
    :goto_0
    return v1

    .line 654
    :cond_1
    const/4 v1, 0x0

    .line 655
    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 657
    .local v2, token:J
    :try_start_0
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v5

    invoke-virtual {v5}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v5, v6, :cond_2

    .line 658
    new-instance v4, Lcom/android/server/enterprise/CertificateUtil;

    invoke-direct {v4}, Lcom/android/server/enterprise/CertificateUtil;-><init>()V

    .line 659
    .local v4, util:Lcom/android/server/enterprise/CertificateUtil;
    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/android/server/enterprise/CertificateUtil;->install(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 668
    .end local v4           #util:Lcom/android/server/enterprise/CertificateUtil;
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 662
    :cond_2
    :try_start_1
    const-string v5, "SecurityPolicy"

    const-string v6, "installCertificate : KS not UNLOCKED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 663
    const/4 v1, 0x0

    goto :goto_1

    .line 665
    :catch_0
    move-exception v0

    .line 666
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "SecurityPolicy"

    const-string v6, "installCertificate EX: "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public installCertificateWithType(Ljava/lang/String;[B)V
    .locals 6
    .parameter "type"
    .parameter "value"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 136
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v4, p2

    if-lez v4, :cond_0

    .line 137
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 139
    .local v2, token:J
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.credentials.INSTALL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 141
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 142
    iget-object v4, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 149
    .end local v2           #token:J
    :cond_0
    return-void

    .line 143
    .restart local v2       #token:J
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SecurityPolicy::installCertificateWithType() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 146
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public installCertificatesFromSdCard()V
    .locals 6

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 156
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 158
    .local v2, token:J
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.credentials.INSTALL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 160
    iget-object v4, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 166
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SecurityPolicy::installCertificatesFromSdCard() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 164
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public installKeyPair(Ljava/security/KeyPair;)V
    .locals 0
    .parameter "pair"

    .prologue
    .line 126
    return-void
.end method

.method public isExternalStorageEncrypted()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 385
    iget-object v3, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_SECURITY"

    const-string v5, "Security Policy"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :try_start_0
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 388
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v3, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 389
    .local v0, dem:Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->isStorageCardEncryptionPoliciesApplied()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 390
    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v3

    invoke-virtual {v3}, Landroid/dirEncryption/SDCardEncryptionPolicies;->getDefaultEnc()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 395
    .end local v0           #dem:Landroid/dirEncryption/DirEncryptionManager;
    :cond_0
    :goto_0
    return v2

    .line 390
    .restart local v0       #dem:Landroid/dirEncryption/DirEncryptionManager;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 392
    .end local v0           #dem:Landroid/dirEncryption/DirEncryptionManager;
    :catch_0
    move-exception v1

    .line 393
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "SecurityPolicy"

    const-string v4, "is External Storage Encrypted ?"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isInternalStorageEncrypted()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 368
    iget-object v3, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_SECURITY"

    const-string v5, "Security Policy"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 372
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    .line 376
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_0
    :goto_0
    return v2

    .line 373
    :catch_0
    move-exception v1

    .line 374
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "SecurityPolicy"

    const-string v4, "is Internal Storage Encrypted ?"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public powerOffDevice()V
    .locals 4

    .prologue
    .line 728
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 729
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 730
    .local v0, token:J
    const-string v2, "SecurityPolicy"

    const-string v3, "powerOffDevice():EDM power off device start..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 732
    iget-object v2, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 733
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 734
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 735
    return-void
.end method

.method public removeAccountsByType(Ljava/lang/String;)Z
    .locals 13
    .parameter "type"

    .prologue
    const/4 v6, 0x1

    const/high16 v12, 0x1000

    const/4 v7, 0x0

    .line 741
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 742
    const/4 v1, 0x0

    .line 743
    .local v1, accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, -0x1

    .line 745
    .local v5, rowCount:I
    :try_start_0
    const-string v2, "/data/system/accounts.db"

    .line 746
    .local v2, accountsDBPath:Ljava/lang/String;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 748
    const-string v8, "accounts"

    const-string v9, "type=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-virtual {v1, v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 752
    invoke-static {}, Landroid/accounts/AccountManagerService;->getSingleton()Landroid/accounts/AccountManagerService;

    move-result-object v3

    .line 753
    .local v3, ams:Landroid/accounts/AccountManagerService;
    if-eqz v3, :cond_0

    .line 754
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/accounts/AccountManagerService;->onServiceChanged(Landroid/accounts/AuthenticatorDescription;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    :cond_0
    if-eqz v1, :cond_1

    .line 761
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 763
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v8, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 764
    .local v0, accountChangedIntent:Landroid/content/Intent;
    invoke-virtual {v0, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 765
    iget-object v8, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    .end local v2           #accountsDBPath:Ljava/lang/String;
    .end local v3           #ams:Landroid/accounts/AccountManagerService;
    :goto_0
    invoke-virtual {v8, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 767
    const/4 v8, -0x1

    if-eq v5, v8, :cond_4

    :goto_1
    return v6

    .line 756
    .end local v0           #accountChangedIntent:Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 757
    .local v4, e:Ljava/lang/Exception;
    const/4 v5, -0x1

    .line 758
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 760
    if-eqz v1, :cond_2

    .line 761
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 763
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v8, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 764
    .restart local v0       #accountChangedIntent:Landroid/content/Intent;
    invoke-virtual {v0, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 765
    iget-object v8, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 760
    .end local v0           #accountChangedIntent:Landroid/content/Intent;
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v1, :cond_3

    .line 761
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 763
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 764
    .restart local v0       #accountChangedIntent:Landroid/content/Intent;
    invoke-virtual {v0, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 765
    iget-object v7, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 760
    throw v6

    :cond_4
    move v6, v7

    .line 767
    goto :goto_1
.end method

.method public removeCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "key"
    .parameter "type"

    .prologue
    .line 541
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 542
    const/4 v1, 0x0

    .line 543
    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 582
    .local v2, token:J
    :try_start_0
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 586
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 587
    return v1

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "SecurityPolicy"

    const-string v5, "removeCertificate EX: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resetCredentialStorage()Z
    .locals 6

    .prologue
    .line 629
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 630
    const/4 v1, 0x0

    .line 631
    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 633
    .local v2, token:J
    :try_start_0
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    invoke-virtual {v4}, Landroid/security/KeyStore;->reset()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 637
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 638
    return v1

    .line 634
    :catch_0
    move-exception v0

    .line 635
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "SecurityPolicy"

    const-string v5, "resetCredentialStorage EX: "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCredentialStoragePassword(Ljava/lang/String;)Z
    .locals 1
    .parameter "password"

    .prologue
    .line 597
    const/4 v0, 0x0

    return v0
.end method

.method public setExternalStorageEncryption(Z)V
    .locals 10
    .parameter "isEncrypt"

    .prologue
    .line 324
    iget-object v7, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.sec.MDM_SECURITY"

    const-string v9, "Misc Policy"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 327
    .local v5, token:J
    :try_start_0
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 328
    iget-object v7, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v8, "device_policy"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 330
    .local v1, dpm:Landroid/app/admin/DevicePolicyManager;
    if-nez p1, :cond_1

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 331
    const-string v7, "SecurityPolicy"

    const-string v8, "SD Encryption enabled by some other admin cannot decrypt"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    .end local v1           #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_0
    :goto_0
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 360
    return-void

    .line 334
    .restart local v1       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_1
    :try_start_1
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v7, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 335
    .local v0, dem:Landroid/dirEncryption/DirEncryptionManager;
    const/4 v7, 0x1

    if-ne p1, v7, :cond_3

    .line 336
    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x7

    invoke-virtual {v0, v7, v8, v9}, Landroid/dirEncryption/DirEncryptionManager;->setStorageCardEncryptionPolicy(III)I

    .line 343
    :goto_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 344
    .local v4, status:Ljava/lang/String;
    const-string v7, "mounted_ro"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "mounted"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 346
    :cond_2
    const-string v7, "SecurityPolicy"

    const-string v8, "setExternalStorageEncryption : SDCard mounted"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    .local v3, intent:Landroid/content/Intent;
    const/high16 v7, 0x1000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 350
    iget-object v7, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 355
    .end local v0           #dem:Landroid/dirEncryption/DirEncryptionManager;
    .end local v1           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #status:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 356
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    const-string v7, "SecurityPolicy"

    const-string v8, "is External Storage Encrypted?"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 358
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 340
    .restart local v0       #dem:Landroid/dirEncryption/DirEncryptionManager;
    .restart local v1       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_3
    const/4 v7, 0x3

    const/4 v8, 0x5

    const/4 v9, 0x7

    :try_start_3
    invoke-virtual {v0, v7, v8, v9}, Landroid/dirEncryption/DirEncryptionManager;->setStorageCardEncryptionPolicy(III)I

    goto :goto_1

    .line 353
    .restart local v4       #status:Ljava/lang/String;
    :cond_4
    const-string v7, "SecurityPolicy"

    const-string v8, "setExternalStorageEncryption : SDCard not mounted"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method public setInternalStorageEncryption(Z)V
    .locals 8
    .parameter "isEncrypt"

    .prologue
    .line 292
    iget-object v5, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.sec.MDM_SECURITY"

    const-string v7, "Security Policy"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 295
    .local v3, token:J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 297
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-nez p1, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 298
    const-string v5, "SecurityPolicy"

    const-string v6, "SD Encryption enabled by some other admin cannot decrypt"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 315
    return-void

    .line 301
    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/SecurityPolicy;->isInternalStorageEncrypted()Z

    move-result v5

    if-nez v5, :cond_1

    .line 302
    const-string v5, "SecurityPolicy"

    const-string v6, "setInternalStorageEncryption : Not encrypted"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 310
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :catch_0
    move-exception v1

    .line 311
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v5, "SecurityPolicy"

    const-string v6, "is Internal Storage Encrypted?"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 313
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 305
    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_1
    :try_start_3
    const-string v5, "SecurityPolicy"

    const-string v6, "setInternalStorageEncryption : Launching Encrption activity"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.app.action.START_ENCRYPTION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    .local v2, intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 309
    iget-object v5, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method public unlockCredentialStorage(Ljava/lang/String;)Z
    .locals 8
    .parameter "password"

    .prologue
    .line 524
    invoke-direct {p0}, Lcom/android/server/enterprise/SecurityPolicy;->enforceSecurityPermission()I

    .line 525
    const/4 v2, 0x0

    .line 526
    .local v2, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 528
    .local v3, token:J
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.credentials.UNLOCK"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 529
    .local v1, intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 530
    iget-object v5, p0, Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    const/4 v2, 0x1

    .line 535
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 536
    return v2

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "SecurityPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unlockCredentialStorage EX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
