.class public Lcom/evernote/edam/userstore/UserStore$checkVersion_result;
.super Ljava/lang/Object;
.source "UserStore.java"

# interfaces
.implements Lorg/apache/thrift/TBase;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/edam/userstore/UserStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "checkVersion_result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/edam/userstore/UserStore$checkVersion_result$_Fields;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/thrift/TBase",
        "<",
        "Lcom/evernote/edam/userstore/UserStore$checkVersion_result;",
        "Lcom/evernote/edam/userstore/UserStore$checkVersion_result$_Fields;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

.field private static final SUCCESS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final __SUCCESS_ISSET_ID:I

.field public static final metaDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/evernote/edam/userstore/UserStore$checkVersion_result$_Fields;",
            "Lorg/apache/thrift/meta_data/FieldMetaData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private __isset_vector:[Z

.field private success:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 1149
    new-instance v1, Lorg/apache/thrift/protocol/TStruct;

    const-string v2, "checkVersion_result"

    invoke-direct {v1, v2}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 1151
    new-instance v1, Lorg/apache/thrift/protocol/TField;

    const-string v2, "success"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v6, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v1, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->SUCCESS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 1219
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/evernote/edam/userstore/UserStore$checkVersion_result$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 1220
    .local v0, tmpMap:Ljava/util/Map;,"Ljava/util/Map<Lcom/evernote/edam/userstore/UserStore$checkVersion_result$_Fields;Lorg/apache/thrift/meta_data/FieldMetaData;>;"
    sget-object v1, Lcom/evernote/edam/userstore/UserStore$checkVersion_result$_Fields;->SUCCESS:Lcom/evernote/edam/userstore/UserStore$checkVersion_result$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "success"

    const/4 v4, 0x3

    new-instance v5, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v5, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->metaDataMap:Ljava/util/Map;

    .line 1223
    const-class v1, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;

    sget-object v2, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->metaDataMap:Ljava/util/Map;

    invoke-static {v1, v2}, Lorg/apache/thrift/meta_data/FieldMetaData;->addStructMetaDataMap(Ljava/lang/Class;Ljava/util/Map;)V

    .line 1224
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1215
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->__isset_vector:[Z

    .line 1227
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/userstore/UserStore$checkVersion_result;)V
    .locals 4
    .parameter "other"

    .prologue
    const/4 v3, 0x0

    .line 1240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1215
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->__isset_vector:[Z

    .line 1241
    iget-object v0, p1, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->__isset_vector:[Z

    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->__isset_vector:[Z

    iget-object v2, p1, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->__isset_vector:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1242
    iget-boolean v0, p1, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->success:Z

    iput-boolean v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->success:Z

    .line 1243
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "success"

    .prologue
    .line 1232
    invoke-direct {p0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;-><init>()V

    .line 1233
    iput-boolean p1, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->success:Z

    .line 1234
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->setSuccessIsSet(Z)V

    .line 1235
    return-void
.end method

.method static synthetic access$000(Lcom/evernote/edam/userstore/UserStore$checkVersion_result;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1148
    iget-boolean v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->success:Z

    return v0
.end method

.method static synthetic access$002(Lcom/evernote/edam/userstore/UserStore$checkVersion_result;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1148
    iput-boolean p1, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->success:Z

    return p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1250
    invoke-virtual {p0, v0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->setSuccessIsSet(Z)V

    .line 1251
    iput-boolean v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->success:Z

    .line 1252
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/userstore/UserStore$checkVersion_result;)I
    .locals 4
    .parameter "other"

    .prologue
    .line 1340
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1341
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 1356
    :goto_0
    return v2

    .line 1344
    :cond_0
    const/4 v0, 0x0

    .line 1345
    .local v0, lastComparison:I
    move-object v1, p1

    .line 1347
    .local v1, typedOther:Lcom/evernote/edam/userstore/UserStore$checkVersion_result;
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1348
    if-eqz v0, :cond_1

    move v2, v0

    .line 1349
    goto :goto_0

    .line 1351
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->success:Z

    iget-boolean v3, v1, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->success:Z

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 1352
    if-eqz v0, :cond_2

    move v2, v0

    .line 1353
    goto :goto_0

    .line 1356
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1148
    check-cast p1, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->compareTo(Lcom/evernote/edam/userstore/UserStore$checkVersion_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/userstore/UserStore$checkVersion_result;
    .locals 1

    .prologue
    .line 1246
    new-instance v0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;-><init>(Lcom/evernote/edam/userstore/UserStore$checkVersion_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/apache/thrift/TBase;
    .locals 1

    .prologue
    .line 1148
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->deepCopy()Lcom/evernote/edam/userstore/UserStore$checkVersion_result;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/evernote/edam/userstore/UserStore$checkVersion_result;)Z
    .locals 5
    .parameter "that"

    .prologue
    const/4 v4, 0x0

    .line 1320
    if-nez p1, :cond_0

    move v2, v4

    .line 1332
    :goto_0
    return v2

    .line 1323
    :cond_0
    const/4 v1, 0x1

    .line 1324
    .local v1, this_present_success:Z
    const/4 v0, 0x1

    .line 1325
    .local v0, that_present_success:Z
    if-nez v1, :cond_1

    if-eqz v0, :cond_4

    .line 1326
    :cond_1
    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    :cond_2
    move v2, v4

    .line 1327
    goto :goto_0

    .line 1328
    :cond_3
    iget-boolean v2, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->success:Z

    iget-boolean v3, p1, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->success:Z

    if-eq v2, v3, :cond_4

    move v2, v4

    .line 1329
    goto :goto_0

    .line 1332
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "that"

    .prologue
    const/4 v1, 0x0

    .line 1312
    if-nez p1, :cond_0

    move v0, v1

    .line 1316
    .end local p1
    :goto_0
    return v0

    .line 1314
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;

    if-eqz v0, :cond_1

    .line 1315
    check-cast p1, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->equals(Lcom/evernote/edam/userstore/UserStore$checkVersion_result;)Z

    move-result v0

    goto :goto_0

    .restart local p1
    :cond_1
    move v0, v1

    .line 1316
    goto :goto_0
.end method

.method public fieldForId(I)Lcom/evernote/edam/userstore/UserStore$checkVersion_result$_Fields;
    .locals 1
    .parameter "fieldId"

    .prologue
    .line 1360
    invoke-static {p1}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result$_Fields;->findByThriftId(I)Lcom/evernote/edam/userstore/UserStore$checkVersion_result$_Fields;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fieldForId(I)Lorg/apache/thrift/TFieldIdEnum;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1148
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->fieldForId(I)Lcom/evernote/edam/userstore/UserStore$checkVersion_result$_Fields;

    move-result-object v0

    return-object v0
.end method

.method public getFieldValue(Lcom/evernote/edam/userstore/UserStore$checkVersion_result$_Fields;)Ljava/lang/Object;
    .locals 2
    .parameter "field"

    .prologue
    .line 1290
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$1;->$SwitchMap$com$evernote$edam$userstore$UserStore$checkVersion_result$_Fields:[I

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result$_Fields;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1295
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1292
    :pswitch_0
    new-instance v0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->isSuccess()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v0

    .line 1290
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getFieldValue(Lorg/apache/thrift/TFieldIdEnum;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1148
    check-cast p1, Lcom/evernote/edam/userstore/UserStore$checkVersion_result$_Fields;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->getFieldValue(Lcom/evernote/edam/userstore/UserStore$checkVersion_result$_Fields;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1336
    const/4 v0, 0x0

    return v0
.end method

.method public isSet(Lcom/evernote/edam/userstore/UserStore$checkVersion_result$_Fields;)Z
    .locals 2
    .parameter "field"

    .prologue
    .line 1300
    if-nez p1, :cond_0

    .line 1301
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1304
    :cond_0
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$1;->$SwitchMap$com$evernote$edam$userstore$UserStore$checkVersion_result$_Fields:[I

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result$_Fields;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1308
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1306
    :pswitch_0
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->isSetSuccess()Z

    move-result v0

    return v0

    .line 1304
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic isSet(Lorg/apache/thrift/TFieldIdEnum;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1148
    check-cast p1, Lcom/evernote/edam/userstore/UserStore$checkVersion_result$_Fields;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->isSet(Lcom/evernote/edam/userstore/UserStore$checkVersion_result$_Fields;)Z

    move-result v0

    return v0
.end method

.method public isSetSuccess()Z
    .locals 2

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->__isset_vector:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 1255
    iget-boolean v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->success:Z

    return v0
.end method

.method public read(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 3
    .parameter "iprot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1365
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 1368
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v0

    .line 1369
    .local v0, field:Lorg/apache/thrift/protocol/TField;
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 1386
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 1387
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->validate()V

    .line 1388
    return-void

    .line 1372
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 1382
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 1384
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 1374
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1375
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->success:Z

    .line 1376
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->setSuccessIsSet(Z)V

    goto :goto_1

    .line 1378
    :cond_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 1372
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setFieldValue(Lcom/evernote/edam/userstore/UserStore$checkVersion_result$_Fields;Ljava/lang/Object;)V
    .locals 2
    .parameter "field"
    .parameter "value"

    .prologue
    .line 1277
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$1;->$SwitchMap$com$evernote$edam$userstore$UserStore$checkVersion_result$_Fields:[I

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result$_Fields;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1287
    .end local p2
    :goto_0
    return-void

    .line 1279
    .restart local p2
    :pswitch_0
    if-nez p2, :cond_0

    .line 1280
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->unsetSuccess()V

    goto :goto_0

    .line 1282
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->setSuccess(Z)V

    goto :goto_0

    .line 1277
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setFieldValue(Lorg/apache/thrift/TFieldIdEnum;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1148
    check-cast p1, Lcom/evernote/edam/userstore/UserStore$checkVersion_result$_Fields;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->setFieldValue(Lcom/evernote/edam/userstore/UserStore$checkVersion_result$_Fields;Ljava/lang/Object;)V

    return-void
.end method

.method public setSuccess(Z)V
    .locals 1
    .parameter "success"

    .prologue
    .line 1259
    iput-boolean p1, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->success:Z

    .line 1260
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->setSuccessIsSet(Z)V

    .line 1261
    return-void
.end method

.method public setSuccessIsSet(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 1274
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1403
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkVersion_result("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1404
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 1406
    .local v0, first:Z
    const-string v2, "success:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1407
    iget-boolean v2, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->success:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1408
    const/4 v0, 0x0

    .line 1409
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1410
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public unsetSuccess()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1264
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->__isset_vector:[Z

    aput-boolean v1, v0, v1

    .line 1265
    return-void
.end method

.method public validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1415
    return-void
.end method

.method public write(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 1
    .parameter "oprot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1391
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 1393
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1394
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->SUCCESS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1395
    iget-boolean v0, p0, Lcom/evernote/edam/userstore/UserStore$checkVersion_result;->success:Z

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 1396
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1398
    :cond_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 1399
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 1400
    return-void
.end method
