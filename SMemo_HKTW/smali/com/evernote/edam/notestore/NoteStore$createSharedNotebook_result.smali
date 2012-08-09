.class public Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;
.super Ljava/lang/Object;
.source "NoteStore.java"

# interfaces
.implements Lorg/apache/thrift/TBase;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/edam/notestore/NoteStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "createSharedNotebook_result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result$_Fields;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;",
        "Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result$_Fields;",
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
            "Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result$_Fields;",
            "Lorg/apache/thrift/meta_data/FieldMetaData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

.field private success:Lcom/evernote/edam/type/SharedNotebook;

.field private systemException:Lcom/evernote/edam/error/EDAMSystemException;

.field private userException:Lcom/evernote/edam/error/EDAMUserException;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/16 v6, 0xc

    .line 55073
    new-instance v1, Lorg/apache/thrift/protocol/TStruct;

    const-string v2, "createSharedNotebook_result"

    invoke-direct {v1, v2}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 55075
    new-instance v1, Lorg/apache/thrift/protocol/TField;

    const-string v2, "success"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v6, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->SUCCESS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 55076
    new-instance v1, Lorg/apache/thrift/protocol/TField;

    const-string v2, "userException"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v6, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->USER_EXCEPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 55077
    new-instance v1, Lorg/apache/thrift/protocol/TField;

    const-string v2, "notFoundException"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v6, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 55078
    new-instance v1, Lorg/apache/thrift/protocol/TField;

    const-string v2, "systemException"

    invoke-direct {v1, v2, v6, v7}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 55156
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 55157
    .local v0, tmpMap:Ljava/util/Map;,"Ljava/util/Map<Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result$_Fields;Lorg/apache/thrift/meta_data/FieldMetaData;>;"
    sget-object v1, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result$_Fields;->SUCCESS:Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "success"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/evernote/edam/type/SharedNotebook;

    invoke-direct {v4, v6, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55159
    sget-object v1, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result$_Fields;->USER_EXCEPTION:Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "userException"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55161
    sget-object v1, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result$_Fields;->NOT_FOUND_EXCEPTION:Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "notFoundException"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55163
    sget-object v1, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result$_Fields;->SYSTEM_EXCEPTION:Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "systemException"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55165
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->metaDataMap:Ljava/util/Map;

    .line 55166
    const-class v1, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;

    sget-object v2, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->metaDataMap:Ljava/util/Map;

    invoke-static {v1, v2}, Lorg/apache/thrift/meta_data/FieldMetaData;->addStructMetaDataMap(Ljava/lang/Class;Ljava/util/Map;)V

    .line 55167
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55170
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 55188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55189
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55190
    new-instance v0, Lcom/evernote/edam/type/SharedNotebook;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->success:Lcom/evernote/edam/type/SharedNotebook;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/SharedNotebook;-><init>(Lcom/evernote/edam/type/SharedNotebook;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->success:Lcom/evernote/edam/type/SharedNotebook;

    .line 55192
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55193
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 55195
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55196
    new-instance v0, Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>(Lcom/evernote/edam/error/EDAMNotFoundException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 55198
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55199
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 55201
    :cond_3
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/type/SharedNotebook;Lcom/evernote/edam/error/EDAMUserException;Lcom/evernote/edam/error/EDAMNotFoundException;Lcom/evernote/edam/error/EDAMSystemException;)V
    .locals 0
    .parameter "success"
    .parameter "userException"
    .parameter "notFoundException"
    .parameter "systemException"

    .prologue
    .line 55178
    invoke-direct {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;-><init>()V

    .line 55179
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->success:Lcom/evernote/edam/type/SharedNotebook;

    .line 55180
    iput-object p2, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 55181
    iput-object p3, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 55182
    iput-object p4, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 55183
    return-void
.end method

.method static synthetic access$19000(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;)Lcom/evernote/edam/type/SharedNotebook;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55072
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->success:Lcom/evernote/edam/type/SharedNotebook;

    return-object v0
.end method

.method static synthetic access$19002(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;Lcom/evernote/edam/type/SharedNotebook;)Lcom/evernote/edam/type/SharedNotebook;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55072
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->success:Lcom/evernote/edam/type/SharedNotebook;

    return-object p1
.end method

.method static synthetic access$19100(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55072
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$19102(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;Lcom/evernote/edam/error/EDAMUserException;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55072
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object p1
.end method

.method static synthetic access$19200(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;)Lcom/evernote/edam/error/EDAMNotFoundException;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55072
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    return-object v0
.end method

.method static synthetic access$19202(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;Lcom/evernote/edam/error/EDAMNotFoundException;)Lcom/evernote/edam/error/EDAMNotFoundException;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55072
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    return-object p1
.end method

.method static synthetic access$19300(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55072
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method

.method static synthetic access$19302(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;Lcom/evernote/edam/error/EDAMSystemException;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55072
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55208
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->success:Lcom/evernote/edam/type/SharedNotebook;

    .line 55209
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 55210
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 55211
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 55212
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;)I
    .locals 4
    .parameter "other"

    .prologue
    .line 55436
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 55437
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

    .line 55479
    :goto_0
    return v2

    .line 55440
    :cond_0
    const/4 v0, 0x0

    .line 55441
    .local v0, lastComparison:I
    move-object v1, p1

    .line 55443
    .local v1, typedOther:Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 55444
    if-eqz v0, :cond_1

    move v2, v0

    .line 55445
    goto :goto_0

    .line 55447
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->success:Lcom/evernote/edam/type/SharedNotebook;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->success:Lcom/evernote/edam/type/SharedNotebook;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 55448
    if-eqz v0, :cond_2

    move v2, v0

    .line 55449
    goto :goto_0

    .line 55452
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 55453
    if-eqz v0, :cond_3

    move v2, v0

    .line 55454
    goto :goto_0

    .line 55456
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 55457
    if-eqz v0, :cond_4

    move v2, v0

    .line 55458
    goto :goto_0

    .line 55461
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->isSetNotFoundException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->isSetNotFoundException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 55462
    if-eqz v0, :cond_5

    move v2, v0

    .line 55463
    goto :goto_0

    .line 55465
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->isSetNotFoundException()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 55466
    if-eqz v0, :cond_6

    move v2, v0

    .line 55467
    goto :goto_0

    .line 55470
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 55471
    if-eqz v0, :cond_7

    move v2, v0

    .line 55472
    goto/16 :goto_0

    .line 55474
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 55475
    if-eqz v0, :cond_8

    move v2, v0

    .line 55476
    goto/16 :goto_0

    .line 55479
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55072
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->compareTo(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;
    .locals 1

    .prologue
    .line 55204
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;-><init>(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/apache/thrift/TBase;
    .locals 1

    .prologue
    .line 55072
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;)Z
    .locals 11
    .parameter "that"

    .prologue
    const/4 v10, 0x0

    .line 55389
    if-nez p1, :cond_0

    move v8, v10

    .line 55428
    :goto_0
    return v8

    .line 55392
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->isSetSuccess()Z

    move-result v5

    .line 55393
    .local v5, this_present_success:Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->isSetSuccess()Z

    move-result v1

    .line 55394
    .local v1, that_present_success:Z
    if-nez v5, :cond_1

    if-eqz v1, :cond_4

    .line 55395
    :cond_1
    if-eqz v5, :cond_2

    if-nez v1, :cond_3

    :cond_2
    move v8, v10

    .line 55396
    goto :goto_0

    .line 55397
    :cond_3
    iget-object v8, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->success:Lcom/evernote/edam/type/SharedNotebook;

    iget-object v9, p1, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->success:Lcom/evernote/edam/type/SharedNotebook;

    invoke-virtual {v8, v9}, Lcom/evernote/edam/type/SharedNotebook;->equals(Lcom/evernote/edam/type/SharedNotebook;)Z

    move-result v8

    if-nez v8, :cond_4

    move v8, v10

    .line 55398
    goto :goto_0

    .line 55401
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->isSetUserException()Z

    move-result v7

    .line 55402
    .local v7, this_present_userException:Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->isSetUserException()Z

    move-result v3

    .line 55403
    .local v3, that_present_userException:Z
    if-nez v7, :cond_5

    if-eqz v3, :cond_8

    .line 55404
    :cond_5
    if-eqz v7, :cond_6

    if-nez v3, :cond_7

    :cond_6
    move v8, v10

    .line 55405
    goto :goto_0

    .line 55406
    :cond_7
    iget-object v8, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v9, p1, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v8, v9}, Lcom/evernote/edam/error/EDAMUserException;->equals(Lcom/evernote/edam/error/EDAMUserException;)Z

    move-result v8

    if-nez v8, :cond_8

    move v8, v10

    .line 55407
    goto :goto_0

    .line 55410
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->isSetNotFoundException()Z

    move-result v4

    .line 55411
    .local v4, this_present_notFoundException:Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->isSetNotFoundException()Z

    move-result v0

    .line 55412
    .local v0, that_present_notFoundException:Z
    if-nez v4, :cond_9

    if-eqz v0, :cond_c

    .line 55413
    :cond_9
    if-eqz v4, :cond_a

    if-nez v0, :cond_b

    :cond_a
    move v8, v10

    .line 55414
    goto :goto_0

    .line 55415
    :cond_b
    iget-object v8, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v9, p1, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v8, v9}, Lcom/evernote/edam/error/EDAMNotFoundException;->equals(Lcom/evernote/edam/error/EDAMNotFoundException;)Z

    move-result v8

    if-nez v8, :cond_c

    move v8, v10

    .line 55416
    goto :goto_0

    .line 55419
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->isSetSystemException()Z

    move-result v6

    .line 55420
    .local v6, this_present_systemException:Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->isSetSystemException()Z

    move-result v2

    .line 55421
    .local v2, that_present_systemException:Z
    if-nez v6, :cond_d

    if-eqz v2, :cond_10

    .line 55422
    :cond_d
    if-eqz v6, :cond_e

    if-nez v2, :cond_f

    :cond_e
    move v8, v10

    .line 55423
    goto :goto_0

    .line 55424
    :cond_f
    iget-object v8, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v9, p1, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v8, v9}, Lcom/evernote/edam/error/EDAMSystemException;->equals(Lcom/evernote/edam/error/EDAMSystemException;)Z

    move-result v8

    if-nez v8, :cond_10

    move v8, v10

    .line 55425
    goto :goto_0

    .line 55428
    :cond_10
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "that"

    .prologue
    const/4 v1, 0x0

    .line 55381
    if-nez p1, :cond_0

    move v0, v1

    .line 55385
    .end local p1
    :goto_0
    return v0

    .line 55383
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;

    if-eqz v0, :cond_1

    .line 55384
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->equals(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;)Z

    move-result v0

    goto :goto_0

    .restart local p1
    :cond_1
    move v0, v1

    .line 55385
    goto :goto_0
.end method

.method public fieldForId(I)Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result$_Fields;
    .locals 1
    .parameter "fieldId"

    .prologue
    .line 55483
    invoke-static {p1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result$_Fields;->findByThriftId(I)Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result$_Fields;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fieldForId(I)Lorg/apache/thrift/TFieldIdEnum;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55072
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->fieldForId(I)Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result$_Fields;

    move-result-object v0

    return-object v0
.end method

.method public getFieldValue(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result$_Fields;)Ljava/lang/Object;
    .locals 2
    .parameter "field"

    .prologue
    .line 55344
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$1;->$SwitchMap$com$evernote$edam$notestore$NoteStore$createSharedNotebook_result$_Fields:[I

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result$_Fields;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 55358
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 55346
    :pswitch_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->getSuccess()Lcom/evernote/edam/type/SharedNotebook;

    move-result-object v0

    .line 55355
    :goto_0
    return-object v0

    .line 55349
    :pswitch_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->getUserException()Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v0

    goto :goto_0

    .line 55352
    :pswitch_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->getNotFoundException()Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v0

    goto :goto_0

    .line 55355
    :pswitch_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->getSystemException()Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v0

    goto :goto_0

    .line 55344
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
    .line 55072
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result$_Fields;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->getFieldValue(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result$_Fields;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNotFoundException()Lcom/evernote/edam/error/EDAMNotFoundException;
    .locals 1

    .prologue
    .line 55261
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    return-object v0
.end method

.method public getSuccess()Lcom/evernote/edam/type/SharedNotebook;
    .locals 1

    .prologue
    .line 55215
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->success:Lcom/evernote/edam/type/SharedNotebook;

    return-object v0
.end method

.method public getSystemException()Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1

    .prologue
    .line 55284
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method

.method public getUserException()Lcom/evernote/edam/error/EDAMUserException;
    .locals 1

    .prologue
    .line 55238
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 55432
    const/4 v0, 0x0

    return v0
.end method

.method public isSet(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result$_Fields;)Z
    .locals 2
    .parameter "field"

    .prologue
    .line 55363
    if-nez p1, :cond_0

    .line 55364
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 55367
    :cond_0
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$1;->$SwitchMap$com$evernote$edam$notestore$NoteStore$createSharedNotebook_result$_Fields:[I

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result$_Fields;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 55377
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 55369
    :pswitch_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->isSetSuccess()Z

    move-result v0

    .line 55375
    :goto_0
    return v0

    .line 55371
    :pswitch_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->isSetUserException()Z

    move-result v0

    goto :goto_0

    .line 55373
    :pswitch_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->isSetNotFoundException()Z

    move-result v0

    goto :goto_0

    .line 55375
    :pswitch_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->isSetSystemException()Z

    move-result v0

    goto :goto_0

    .line 55367
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
    .line 55072
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result$_Fields;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->isSet(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result$_Fields;)Z

    move-result v0

    return v0
.end method

.method public isSetNotFoundException()Z
    .locals 1

    .prologue
    .line 55274
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

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
    .line 55228
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->success:Lcom/evernote/edam/type/SharedNotebook;

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
    .line 55297
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

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
    .line 55251
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

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

    .line 55488
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 55491
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v0

    .line 55492
    .local v0, field:Lorg/apache/thrift/protocol/TField;
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 55533
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 55534
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->validate()V

    .line 55535
    return-void

    .line 55495
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 55529
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 55531
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 55497
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 55498
    new-instance v1, Lcom/evernote/edam/type/SharedNotebook;

    invoke-direct {v1}, Lcom/evernote/edam/type/SharedNotebook;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->success:Lcom/evernote/edam/type/SharedNotebook;

    .line 55499
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->success:Lcom/evernote/edam/type/SharedNotebook;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/SharedNotebook;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 55501
    :cond_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 55505
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 55506
    new-instance v1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 55507
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 55509
    :cond_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 55513
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_3

    .line 55514
    new-instance v1, Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 55515
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 55517
    :cond_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 55521
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_4

    .line 55522
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 55523
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 55525
    :cond_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 55495
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setFieldValue(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result$_Fields;Ljava/lang/Object;)V
    .locals 2
    .parameter "field"
    .parameter "value"

    .prologue
    .line 55307
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$1;->$SwitchMap$com$evernote$edam$notestore$NoteStore$createSharedNotebook_result$_Fields:[I

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result$_Fields;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 55341
    .end local p2
    :goto_0
    return-void

    .line 55309
    .restart local p2
    :pswitch_0
    if-nez p2, :cond_0

    .line 55310
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->unsetSuccess()V

    goto :goto_0

    .line 55312
    :cond_0
    check-cast p2, Lcom/evernote/edam/type/SharedNotebook;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->setSuccess(Lcom/evernote/edam/type/SharedNotebook;)V

    goto :goto_0

    .line 55317
    .restart local p2
    :pswitch_1
    if-nez p2, :cond_1

    .line 55318
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->unsetUserException()V

    goto :goto_0

    .line 55320
    :cond_1
    check-cast p2, Lcom/evernote/edam/error/EDAMUserException;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->setUserException(Lcom/evernote/edam/error/EDAMUserException;)V

    goto :goto_0

    .line 55325
    .restart local p2
    :pswitch_2
    if-nez p2, :cond_2

    .line 55326
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->unsetNotFoundException()V

    goto :goto_0

    .line 55328
    :cond_2
    check-cast p2, Lcom/evernote/edam/error/EDAMNotFoundException;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->setNotFoundException(Lcom/evernote/edam/error/EDAMNotFoundException;)V

    goto :goto_0

    .line 55333
    .restart local p2
    :pswitch_3
    if-nez p2, :cond_3

    .line 55334
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->unsetSystemException()V

    goto :goto_0

    .line 55336
    :cond_3
    check-cast p2, Lcom/evernote/edam/error/EDAMSystemException;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->setSystemException(Lcom/evernote/edam/error/EDAMSystemException;)V

    goto :goto_0

    .line 55307
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
    .line 55072
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result$_Fields;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->setFieldValue(Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result$_Fields;Ljava/lang/Object;)V

    return-void
.end method

.method public setNotFoundException(Lcom/evernote/edam/error/EDAMNotFoundException;)V
    .locals 0
    .parameter "notFoundException"

    .prologue
    .line 55265
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 55266
    return-void
.end method

.method public setNotFoundExceptionIsSet(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 55278
    if-nez p1, :cond_0

    .line 55279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 55281
    :cond_0
    return-void
.end method

.method public setSuccess(Lcom/evernote/edam/type/SharedNotebook;)V
    .locals 0
    .parameter "success"

    .prologue
    .line 55219
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->success:Lcom/evernote/edam/type/SharedNotebook;

    .line 55220
    return-void
.end method

.method public setSuccessIsSet(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 55232
    if-nez p1, :cond_0

    .line 55233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->success:Lcom/evernote/edam/type/SharedNotebook;

    .line 55235
    :cond_0
    return-void
.end method

.method public setSystemException(Lcom/evernote/edam/error/EDAMSystemException;)V
    .locals 0
    .parameter "systemException"

    .prologue
    .line 55288
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 55289
    return-void
.end method

.method public setSystemExceptionIsSet(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 55301
    if-nez p1, :cond_0

    .line 55302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 55304
    :cond_0
    return-void
.end method

.method public setUserException(Lcom/evernote/edam/error/EDAMUserException;)V
    .locals 0
    .parameter "userException"

    .prologue
    .line 55242
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 55243
    return-void
.end method

.method public setUserExceptionIsSet(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 55255
    if-nez p1, :cond_0

    .line 55256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 55258
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 55562
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createSharedNotebook_result("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55563
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 55565
    .local v0, first:Z
    const-string v2, "success:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55566
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->success:Lcom/evernote/edam/type/SharedNotebook;

    if-nez v2, :cond_3

    .line 55567
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55571
    :goto_0
    const/4 v0, 0x0

    .line 55572
    if-nez v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55573
    :cond_0
    const-string v2, "userException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55574
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    if-nez v2, :cond_4

    .line 55575
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55579
    :goto_1
    const/4 v0, 0x0

    .line 55580
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55581
    :cond_1
    const-string v2, "notFoundException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55582
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    if-nez v2, :cond_5

    .line 55583
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55587
    :goto_2
    const/4 v0, 0x0

    .line 55588
    if-nez v0, :cond_2

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55589
    :cond_2
    const-string v2, "systemException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55590
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    if-nez v2, :cond_6

    .line 55591
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55595
    :goto_3
    const/4 v0, 0x0

    .line 55596
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55597
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 55569
    :cond_3
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->success:Lcom/evernote/edam/type/SharedNotebook;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 55577
    :cond_4
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 55585
    :cond_5
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 55593
    :cond_6
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public unsetNotFoundException()V
    .locals 1

    .prologue
    .line 55269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 55270
    return-void
.end method

.method public unsetSuccess()V
    .locals 1

    .prologue
    .line 55223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->success:Lcom/evernote/edam/type/SharedNotebook;

    .line 55224
    return-void
.end method

.method public unsetSystemException()V
    .locals 1

    .prologue
    .line 55292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 55293
    return-void
.end method

.method public unsetUserException()V
    .locals 1

    .prologue
    .line 55246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 55247
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
    .line 55602
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
    .line 55538
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 55540
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55541
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->SUCCESS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 55542
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->success:Lcom/evernote/edam/type/SharedNotebook;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/SharedNotebook;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 55543
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 55557
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 55558
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 55559
    return-void

    .line 55544
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55545
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->USER_EXCEPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 55546
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 55547
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 55548
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55549
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 55550
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 55551
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 55552
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55553
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 55554
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createSharedNotebook_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 55555
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
