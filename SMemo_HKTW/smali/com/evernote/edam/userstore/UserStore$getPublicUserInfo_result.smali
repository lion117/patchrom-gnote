.class public Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;
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
    name = "getPublicUserInfo_result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result$_Fields;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/thrift/TBase",
        "<",
        "Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;",
        "Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result$_Fields;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final NOT_FOUND_EXCEPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

.field private static final SUCCESS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final SYSTEM_EXCEPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final USER_EXCEPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field public static final metaDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result$_Fields;",
            "Lorg/apache/thrift/meta_data/FieldMetaData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

.field private success:Lcom/evernote/edam/userstore/PublicUserInfo;

.field private systemException:Lcom/evernote/edam/error/EDAMSystemException;

.field private userException:Lcom/evernote/edam/error/EDAMUserException;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/16 v6, 0xc

    .line 4114
    new-instance v1, Lorg/apache/thrift/protocol/TStruct;

    const-string v2, "getPublicUserInfo_result"

    invoke-direct {v1, v2}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 4116
    new-instance v1, Lorg/apache/thrift/protocol/TField;

    const-string v2, "success"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v6, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->SUCCESS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 4117
    new-instance v1, Lorg/apache/thrift/protocol/TField;

    const-string v2, "notFoundException"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v6, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 4118
    new-instance v1, Lorg/apache/thrift/protocol/TField;

    const-string v2, "systemException"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v6, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 4119
    new-instance v1, Lorg/apache/thrift/protocol/TField;

    const-string v2, "userException"

    invoke-direct {v1, v2, v6, v7}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->USER_EXCEPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 4197
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 4198
    .local v0, tmpMap:Ljava/util/Map;,"Ljava/util/Map<Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result$_Fields;Lorg/apache/thrift/meta_data/FieldMetaData;>;"
    sget-object v1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result$_Fields;->SUCCESS:Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "success"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/evernote/edam/userstore/PublicUserInfo;

    invoke-direct {v4, v6, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4200
    sget-object v1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result$_Fields;->NOT_FOUND_EXCEPTION:Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "notFoundException"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4202
    sget-object v1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result$_Fields;->SYSTEM_EXCEPTION:Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "systemException"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4204
    sget-object v1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result$_Fields;->USER_EXCEPTION:Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "userException"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4206
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->metaDataMap:Ljava/util/Map;

    .line 4207
    const-class v1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;

    sget-object v2, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->metaDataMap:Ljava/util/Map;

    invoke-static {v1, v2}, Lorg/apache/thrift/meta_data/FieldMetaData;->addStructMetaDataMap(Ljava/lang/Class;Ljava/util/Map;)V

    .line 4208
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4211
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/userstore/PublicUserInfo;Lcom/evernote/edam/error/EDAMNotFoundException;Lcom/evernote/edam/error/EDAMSystemException;Lcom/evernote/edam/error/EDAMUserException;)V
    .locals 0
    .parameter "success"
    .parameter "notFoundException"
    .parameter "systemException"
    .parameter "userException"

    .prologue
    .line 4219
    invoke-direct {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;-><init>()V

    .line 4220
    iput-object p1, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->success:Lcom/evernote/edam/userstore/PublicUserInfo;

    .line 4221
    iput-object p2, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 4222
    iput-object p3, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 4223
    iput-object p4, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 4224
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 4229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4230
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4231
    new-instance v0, Lcom/evernote/edam/userstore/PublicUserInfo;

    iget-object v1, p1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->success:Lcom/evernote/edam/userstore/PublicUserInfo;

    invoke-direct {v0, v1}, Lcom/evernote/edam/userstore/PublicUserInfo;-><init>(Lcom/evernote/edam/userstore/PublicUserInfo;)V

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->success:Lcom/evernote/edam/userstore/PublicUserInfo;

    .line 4233
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4234
    new-instance v0, Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v1, p1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>(Lcom/evernote/edam/error/EDAMNotFoundException;)V

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 4236
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4237
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 4239
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4240
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 4242
    :cond_3
    return-void
.end method

.method static synthetic access$1000(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;)Lcom/evernote/edam/userstore/PublicUserInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4113
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->success:Lcom/evernote/edam/userstore/PublicUserInfo;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;Lcom/evernote/edam/userstore/PublicUserInfo;)Lcom/evernote/edam/userstore/PublicUserInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4113
    iput-object p1, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->success:Lcom/evernote/edam/userstore/PublicUserInfo;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;)Lcom/evernote/edam/error/EDAMNotFoundException;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4113
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;Lcom/evernote/edam/error/EDAMNotFoundException;)Lcom/evernote/edam/error/EDAMNotFoundException;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4113
    iput-object p1, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4113
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;Lcom/evernote/edam/error/EDAMSystemException;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4113
    iput-object p1, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4113
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;Lcom/evernote/edam/error/EDAMUserException;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4113
    iput-object p1, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4249
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->success:Lcom/evernote/edam/userstore/PublicUserInfo;

    .line 4250
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 4251
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 4252
    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 4253
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;)I
    .locals 4
    .parameter "other"

    .prologue
    .line 4477
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4478
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

    .line 4520
    :goto_0
    return v2

    .line 4481
    :cond_0
    const/4 v0, 0x0

    .line 4482
    .local v0, lastComparison:I
    move-object v1, p1

    .line 4484
    .local v1, typedOther:Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 4485
    if-eqz v0, :cond_1

    move v2, v0

    .line 4486
    goto :goto_0

    .line 4488
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->success:Lcom/evernote/edam/userstore/PublicUserInfo;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->success:Lcom/evernote/edam/userstore/PublicUserInfo;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 4489
    if-eqz v0, :cond_2

    move v2, v0

    .line 4490
    goto :goto_0

    .line 4493
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetNotFoundException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetNotFoundException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 4494
    if-eqz v0, :cond_3

    move v2, v0

    .line 4495
    goto :goto_0

    .line 4497
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetNotFoundException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 4498
    if-eqz v0, :cond_4

    move v2, v0

    .line 4499
    goto :goto_0

    .line 4502
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 4503
    if-eqz v0, :cond_5

    move v2, v0

    .line 4504
    goto :goto_0

    .line 4506
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 4507
    if-eqz v0, :cond_6

    move v2, v0

    .line 4508
    goto :goto_0

    .line 4511
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 4512
    if-eqz v0, :cond_7

    move v2, v0

    .line 4513
    goto/16 :goto_0

    .line 4515
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 4516
    if-eqz v0, :cond_8

    move v2, v0

    .line 4517
    goto/16 :goto_0

    .line 4520
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 4113
    check-cast p1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->compareTo(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;
    .locals 1

    .prologue
    .line 4245
    new-instance v0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;-><init>(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/apache/thrift/TBase;
    .locals 1

    .prologue
    .line 4113
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->deepCopy()Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;)Z
    .locals 11
    .parameter "that"

    .prologue
    const/4 v10, 0x0

    .line 4430
    if-nez p1, :cond_0

    move v8, v10

    .line 4469
    :goto_0
    return v8

    .line 4433
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetSuccess()Z

    move-result v5

    .line 4434
    .local v5, this_present_success:Z
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetSuccess()Z

    move-result v1

    .line 4435
    .local v1, that_present_success:Z
    if-nez v5, :cond_1

    if-eqz v1, :cond_4

    .line 4436
    :cond_1
    if-eqz v5, :cond_2

    if-nez v1, :cond_3

    :cond_2
    move v8, v10

    .line 4437
    goto :goto_0

    .line 4438
    :cond_3
    iget-object v8, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->success:Lcom/evernote/edam/userstore/PublicUserInfo;

    iget-object v9, p1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->success:Lcom/evernote/edam/userstore/PublicUserInfo;

    invoke-virtual {v8, v9}, Lcom/evernote/edam/userstore/PublicUserInfo;->equals(Lcom/evernote/edam/userstore/PublicUserInfo;)Z

    move-result v8

    if-nez v8, :cond_4

    move v8, v10

    .line 4439
    goto :goto_0

    .line 4442
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetNotFoundException()Z

    move-result v4

    .line 4443
    .local v4, this_present_notFoundException:Z
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetNotFoundException()Z

    move-result v0

    .line 4444
    .local v0, that_present_notFoundException:Z
    if-nez v4, :cond_5

    if-eqz v0, :cond_8

    .line 4445
    :cond_5
    if-eqz v4, :cond_6

    if-nez v0, :cond_7

    :cond_6
    move v8, v10

    .line 4446
    goto :goto_0

    .line 4447
    :cond_7
    iget-object v8, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v9, p1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v8, v9}, Lcom/evernote/edam/error/EDAMNotFoundException;->equals(Lcom/evernote/edam/error/EDAMNotFoundException;)Z

    move-result v8

    if-nez v8, :cond_8

    move v8, v10

    .line 4448
    goto :goto_0

    .line 4451
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetSystemException()Z

    move-result v6

    .line 4452
    .local v6, this_present_systemException:Z
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetSystemException()Z

    move-result v2

    .line 4453
    .local v2, that_present_systemException:Z
    if-nez v6, :cond_9

    if-eqz v2, :cond_c

    .line 4454
    :cond_9
    if-eqz v6, :cond_a

    if-nez v2, :cond_b

    :cond_a
    move v8, v10

    .line 4455
    goto :goto_0

    .line 4456
    :cond_b
    iget-object v8, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v9, p1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v8, v9}, Lcom/evernote/edam/error/EDAMSystemException;->equals(Lcom/evernote/edam/error/EDAMSystemException;)Z

    move-result v8

    if-nez v8, :cond_c

    move v8, v10

    .line 4457
    goto :goto_0

    .line 4460
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetUserException()Z

    move-result v7

    .line 4461
    .local v7, this_present_userException:Z
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetUserException()Z

    move-result v3

    .line 4462
    .local v3, that_present_userException:Z
    if-nez v7, :cond_d

    if-eqz v3, :cond_10

    .line 4463
    :cond_d
    if-eqz v7, :cond_e

    if-nez v3, :cond_f

    :cond_e
    move v8, v10

    .line 4464
    goto :goto_0

    .line 4465
    :cond_f
    iget-object v8, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v9, p1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v8, v9}, Lcom/evernote/edam/error/EDAMUserException;->equals(Lcom/evernote/edam/error/EDAMUserException;)Z

    move-result v8

    if-nez v8, :cond_10

    move v8, v10

    .line 4466
    goto :goto_0

    .line 4469
    :cond_10
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "that"

    .prologue
    const/4 v1, 0x0

    .line 4422
    if-nez p1, :cond_0

    move v0, v1

    .line 4426
    .end local p1
    :goto_0
    return v0

    .line 4424
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;

    if-eqz v0, :cond_1

    .line 4425
    check-cast p1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->equals(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;)Z

    move-result v0

    goto :goto_0

    .restart local p1
    :cond_1
    move v0, v1

    .line 4426
    goto :goto_0
.end method

.method public fieldForId(I)Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result$_Fields;
    .locals 1
    .parameter "fieldId"

    .prologue
    .line 4524
    invoke-static {p1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result$_Fields;->findByThriftId(I)Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result$_Fields;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fieldForId(I)Lorg/apache/thrift/TFieldIdEnum;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4113
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->fieldForId(I)Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result$_Fields;

    move-result-object v0

    return-object v0
.end method

.method public getFieldValue(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result$_Fields;)Ljava/lang/Object;
    .locals 2
    .parameter "field"

    .prologue
    .line 4385
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$1;->$SwitchMap$com$evernote$edam$userstore$UserStore$getPublicUserInfo_result$_Fields:[I

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result$_Fields;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4399
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 4387
    :pswitch_0
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->getSuccess()Lcom/evernote/edam/userstore/PublicUserInfo;

    move-result-object v0

    .line 4396
    :goto_0
    return-object v0

    .line 4390
    :pswitch_1
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->getNotFoundException()Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v0

    goto :goto_0

    .line 4393
    :pswitch_2
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->getSystemException()Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v0

    goto :goto_0

    .line 4396
    :pswitch_3
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->getUserException()Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v0

    goto :goto_0

    .line 4385
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic getFieldValue(Lorg/apache/thrift/TFieldIdEnum;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4113
    check-cast p1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result$_Fields;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->getFieldValue(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result$_Fields;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNotFoundException()Lcom/evernote/edam/error/EDAMNotFoundException;
    .locals 1

    .prologue
    .line 4279
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    return-object v0
.end method

.method public getSuccess()Lcom/evernote/edam/userstore/PublicUserInfo;
    .locals 1

    .prologue
    .line 4256
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->success:Lcom/evernote/edam/userstore/PublicUserInfo;

    return-object v0
.end method

.method public getSystemException()Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1

    .prologue
    .line 4302
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method

.method public getUserException()Lcom/evernote/edam/error/EDAMUserException;
    .locals 1

    .prologue
    .line 4325
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 4473
    const/4 v0, 0x0

    return v0
.end method

.method public isSet(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result$_Fields;)Z
    .locals 2
    .parameter "field"

    .prologue
    .line 4404
    if-nez p1, :cond_0

    .line 4405
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 4408
    :cond_0
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$1;->$SwitchMap$com$evernote$edam$userstore$UserStore$getPublicUserInfo_result$_Fields:[I

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result$_Fields;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4418
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 4410
    :pswitch_0
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetSuccess()Z

    move-result v0

    .line 4416
    :goto_0
    return v0

    .line 4412
    :pswitch_1
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetNotFoundException()Z

    move-result v0

    goto :goto_0

    .line 4414
    :pswitch_2
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetSystemException()Z

    move-result v0

    goto :goto_0

    .line 4416
    :pswitch_3
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetUserException()Z

    move-result v0

    goto :goto_0

    .line 4408
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic isSet(Lorg/apache/thrift/TFieldIdEnum;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 4113
    check-cast p1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result$_Fields;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSet(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result$_Fields;)Z

    move-result v0

    return v0
.end method

.method public isSetNotFoundException()Z
    .locals 1

    .prologue
    .line 4292
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetSuccess()Z
    .locals 1

    .prologue
    .line 4269
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->success:Lcom/evernote/edam/userstore/PublicUserInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetSystemException()Z
    .locals 1

    .prologue
    .line 4315
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetUserException()Z
    .locals 1

    .prologue
    .line 4338
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    const/16 v2, 0xc

    .line 4529
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 4532
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v0

    .line 4533
    .local v0, field:Lorg/apache/thrift/protocol/TField;
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 4574
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 4575
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->validate()V

    .line 4576
    return-void

    .line 4536
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 4570
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 4572
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 4538
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 4539
    new-instance v1, Lcom/evernote/edam/userstore/PublicUserInfo;

    invoke-direct {v1}, Lcom/evernote/edam/userstore/PublicUserInfo;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->success:Lcom/evernote/edam/userstore/PublicUserInfo;

    .line 4540
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->success:Lcom/evernote/edam/userstore/PublicUserInfo;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/userstore/PublicUserInfo;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 4542
    :cond_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 4546
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 4547
    new-instance v1, Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 4548
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 4550
    :cond_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 4554
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_3

    .line 4555
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 4556
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 4558
    :cond_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 4562
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_4

    .line 4563
    new-instance v1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 4564
    iget-object v1, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 4566
    :cond_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 4536
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setFieldValue(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result$_Fields;Ljava/lang/Object;)V
    .locals 2
    .parameter "field"
    .parameter "value"

    .prologue
    .line 4348
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$1;->$SwitchMap$com$evernote$edam$userstore$UserStore$getPublicUserInfo_result$_Fields:[I

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result$_Fields;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4382
    .end local p2
    :goto_0
    return-void

    .line 4350
    .restart local p2
    :pswitch_0
    if-nez p2, :cond_0

    .line 4351
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->unsetSuccess()V

    goto :goto_0

    .line 4353
    :cond_0
    check-cast p2, Lcom/evernote/edam/userstore/PublicUserInfo;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->setSuccess(Lcom/evernote/edam/userstore/PublicUserInfo;)V

    goto :goto_0

    .line 4358
    .restart local p2
    :pswitch_1
    if-nez p2, :cond_1

    .line 4359
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->unsetNotFoundException()V

    goto :goto_0

    .line 4361
    :cond_1
    check-cast p2, Lcom/evernote/edam/error/EDAMNotFoundException;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->setNotFoundException(Lcom/evernote/edam/error/EDAMNotFoundException;)V

    goto :goto_0

    .line 4366
    .restart local p2
    :pswitch_2
    if-nez p2, :cond_2

    .line 4367
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->unsetSystemException()V

    goto :goto_0

    .line 4369
    :cond_2
    check-cast p2, Lcom/evernote/edam/error/EDAMSystemException;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->setSystemException(Lcom/evernote/edam/error/EDAMSystemException;)V

    goto :goto_0

    .line 4374
    .restart local p2
    :pswitch_3
    if-nez p2, :cond_3

    .line 4375
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->unsetUserException()V

    goto :goto_0

    .line 4377
    :cond_3
    check-cast p2, Lcom/evernote/edam/error/EDAMUserException;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->setUserException(Lcom/evernote/edam/error/EDAMUserException;)V

    goto :goto_0

    .line 4348
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic setFieldValue(Lorg/apache/thrift/TFieldIdEnum;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4113
    check-cast p1, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result$_Fields;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->setFieldValue(Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result$_Fields;Ljava/lang/Object;)V

    return-void
.end method

.method public setNotFoundException(Lcom/evernote/edam/error/EDAMNotFoundException;)V
    .locals 0
    .parameter "notFoundException"

    .prologue
    .line 4283
    iput-object p1, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 4284
    return-void
.end method

.method public setNotFoundExceptionIsSet(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 4296
    if-nez p1, :cond_0

    .line 4297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 4299
    :cond_0
    return-void
.end method

.method public setSuccess(Lcom/evernote/edam/userstore/PublicUserInfo;)V
    .locals 0
    .parameter "success"

    .prologue
    .line 4260
    iput-object p1, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->success:Lcom/evernote/edam/userstore/PublicUserInfo;

    .line 4261
    return-void
.end method

.method public setSuccessIsSet(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 4273
    if-nez p1, :cond_0

    .line 4274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->success:Lcom/evernote/edam/userstore/PublicUserInfo;

    .line 4276
    :cond_0
    return-void
.end method

.method public setSystemException(Lcom/evernote/edam/error/EDAMSystemException;)V
    .locals 0
    .parameter "systemException"

    .prologue
    .line 4306
    iput-object p1, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 4307
    return-void
.end method

.method public setSystemExceptionIsSet(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 4319
    if-nez p1, :cond_0

    .line 4320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 4322
    :cond_0
    return-void
.end method

.method public setUserException(Lcom/evernote/edam/error/EDAMUserException;)V
    .locals 0
    .parameter "userException"

    .prologue
    .line 4329
    iput-object p1, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 4330
    return-void
.end method

.method public setUserExceptionIsSet(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 4342
    if-nez p1, :cond_0

    .line 4343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 4345
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4603
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getPublicUserInfo_result("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4604
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 4606
    .local v0, first:Z
    const-string v2, "success:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4607
    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->success:Lcom/evernote/edam/userstore/PublicUserInfo;

    if-nez v2, :cond_3

    .line 4608
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4612
    :goto_0
    const/4 v0, 0x0

    .line 4613
    if-nez v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4614
    :cond_0
    const-string v2, "notFoundException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4615
    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    if-nez v2, :cond_4

    .line 4616
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4620
    :goto_1
    const/4 v0, 0x0

    .line 4621
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4622
    :cond_1
    const-string v2, "systemException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4623
    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    if-nez v2, :cond_5

    .line 4624
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4628
    :goto_2
    const/4 v0, 0x0

    .line 4629
    if-nez v0, :cond_2

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4630
    :cond_2
    const-string v2, "userException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4631
    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    if-nez v2, :cond_6

    .line 4632
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4636
    :goto_3
    const/4 v0, 0x0

    .line 4637
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4638
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 4610
    :cond_3
    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->success:Lcom/evernote/edam/userstore/PublicUserInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4618
    :cond_4
    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4626
    :cond_5
    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 4634
    :cond_6
    iget-object v2, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public unsetNotFoundException()V
    .locals 1

    .prologue
    .line 4287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 4288
    return-void
.end method

.method public unsetSuccess()V
    .locals 1

    .prologue
    .line 4264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->success:Lcom/evernote/edam/userstore/PublicUserInfo;

    .line 4265
    return-void
.end method

.method public unsetSystemException()V
    .locals 1

    .prologue
    .line 4310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 4311
    return-void
.end method

.method public unsetUserException()V
    .locals 1

    .prologue
    .line 4333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 4334
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
    .line 4643
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
    .line 4579
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 4581
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4582
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->SUCCESS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 4583
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->success:Lcom/evernote/edam/userstore/PublicUserInfo;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/userstore/PublicUserInfo;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 4584
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 4598
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 4599
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 4600
    return-void

    .line 4585
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4586
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 4587
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 4588
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 4589
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4590
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 4591
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 4592
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 4593
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4594
    sget-object v0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->USER_EXCEPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 4595
    iget-object v0, p0, Lcom/evernote/edam/userstore/UserStore$getPublicUserInfo_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 4596
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
