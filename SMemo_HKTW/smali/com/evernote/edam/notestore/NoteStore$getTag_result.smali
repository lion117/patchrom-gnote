.class public Lcom/evernote/edam/notestore/NoteStore$getTag_result;
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
    name = "getTag_result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/edam/notestore/NoteStore$getTag_result$_Fields;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$getTag_result;",
        "Lcom/evernote/edam/notestore/NoteStore$getTag_result$_Fields;",
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
            "Lcom/evernote/edam/notestore/NoteStore$getTag_result$_Fields;",
            "Lorg/apache/thrift/meta_data/FieldMetaData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

.field private success:Lcom/evernote/edam/type/Tag;

.field private systemException:Lcom/evernote/edam/error/EDAMSystemException;

.field private userException:Lcom/evernote/edam/error/EDAMUserException;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/16 v6, 0xc

    .line 18824
    new-instance v1, Lorg/apache/thrift/protocol/TStruct;

    const-string v2, "getTag_result"

    invoke-direct {v1, v2}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 18826
    new-instance v1, Lorg/apache/thrift/protocol/TField;

    const-string v2, "success"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v6, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->SUCCESS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 18827
    new-instance v1, Lorg/apache/thrift/protocol/TField;

    const-string v2, "userException"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v6, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->USER_EXCEPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 18828
    new-instance v1, Lorg/apache/thrift/protocol/TField;

    const-string v2, "systemException"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v6, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 18829
    new-instance v1, Lorg/apache/thrift/protocol/TField;

    const-string v2, "notFoundException"

    invoke-direct {v1, v2, v6, v7}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 18907
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/evernote/edam/notestore/NoteStore$getTag_result$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 18908
    .local v0, tmpMap:Ljava/util/Map;,"Ljava/util/Map<Lcom/evernote/edam/notestore/NoteStore$getTag_result$_Fields;Lorg/apache/thrift/meta_data/FieldMetaData;>;"
    sget-object v1, Lcom/evernote/edam/notestore/NoteStore$getTag_result$_Fields;->SUCCESS:Lcom/evernote/edam/notestore/NoteStore$getTag_result$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "success"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/evernote/edam/type/Tag;

    invoke-direct {v4, v6, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18910
    sget-object v1, Lcom/evernote/edam/notestore/NoteStore$getTag_result$_Fields;->USER_EXCEPTION:Lcom/evernote/edam/notestore/NoteStore$getTag_result$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "userException"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18912
    sget-object v1, Lcom/evernote/edam/notestore/NoteStore$getTag_result$_Fields;->SYSTEM_EXCEPTION:Lcom/evernote/edam/notestore/NoteStore$getTag_result$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "systemException"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18914
    sget-object v1, Lcom/evernote/edam/notestore/NoteStore$getTag_result$_Fields;->NOT_FOUND_EXCEPTION:Lcom/evernote/edam/notestore/NoteStore$getTag_result$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "notFoundException"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18916
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->metaDataMap:Ljava/util/Map;

    .line 18917
    const-class v1, Lcom/evernote/edam/notestore/NoteStore$getTag_result;

    sget-object v2, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->metaDataMap:Ljava/util/Map;

    invoke-static {v1, v2}, Lorg/apache/thrift/meta_data/FieldMetaData;->addStructMetaDataMap(Ljava/lang/Class;Ljava/util/Map;)V

    .line 18918
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18920
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18921
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$getTag_result;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 18939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18940
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18941
    new-instance v0, Lcom/evernote/edam/type/Tag;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->success:Lcom/evernote/edam/type/Tag;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/Tag;-><init>(Lcom/evernote/edam/type/Tag;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->success:Lcom/evernote/edam/type/Tag;

    .line 18943
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18944
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 18946
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18947
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 18949
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18950
    new-instance v0, Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>(Lcom/evernote/edam/error/EDAMNotFoundException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 18952
    :cond_3
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/type/Tag;Lcom/evernote/edam/error/EDAMUserException;Lcom/evernote/edam/error/EDAMSystemException;Lcom/evernote/edam/error/EDAMNotFoundException;)V
    .locals 0
    .parameter "success"
    .parameter "userException"
    .parameter "systemException"
    .parameter "notFoundException"

    .prologue
    .line 18929
    invoke-direct {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;-><init>()V

    .line 18930
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->success:Lcom/evernote/edam/type/Tag;

    .line 18931
    iput-object p2, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 18932
    iput-object p3, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 18933
    iput-object p4, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 18934
    return-void
.end method

.method static synthetic access$4200(Lcom/evernote/edam/notestore/NoteStore$getTag_result;)Lcom/evernote/edam/type/Tag;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18823
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->success:Lcom/evernote/edam/type/Tag;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/evernote/edam/notestore/NoteStore$getTag_result;Lcom/evernote/edam/type/Tag;)Lcom/evernote/edam/type/Tag;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18823
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->success:Lcom/evernote/edam/type/Tag;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/evernote/edam/notestore/NoteStore$getTag_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18823
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/evernote/edam/notestore/NoteStore$getTag_result;Lcom/evernote/edam/error/EDAMUserException;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18823
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/evernote/edam/notestore/NoteStore$getTag_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18823
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/evernote/edam/notestore/NoteStore$getTag_result;Lcom/evernote/edam/error/EDAMSystemException;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18823
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/evernote/edam/notestore/NoteStore$getTag_result;)Lcom/evernote/edam/error/EDAMNotFoundException;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18823
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/evernote/edam/notestore/NoteStore$getTag_result;Lcom/evernote/edam/error/EDAMNotFoundException;)Lcom/evernote/edam/error/EDAMNotFoundException;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18823
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18959
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->success:Lcom/evernote/edam/type/Tag;

    .line 18960
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 18961
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 18962
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 18963
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$getTag_result;)I
    .locals 4
    .parameter "other"

    .prologue
    .line 19187
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 19188
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

    .line 19230
    :goto_0
    return v2

    .line 19191
    :cond_0
    const/4 v0, 0x0

    .line 19192
    .local v0, lastComparison:I
    move-object v1, p1

    .line 19194
    .local v1, typedOther:Lcom/evernote/edam/notestore/NoteStore$getTag_result;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 19195
    if-eqz v0, :cond_1

    move v2, v0

    .line 19196
    goto :goto_0

    .line 19198
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->success:Lcom/evernote/edam/type/Tag;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->success:Lcom/evernote/edam/type/Tag;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 19199
    if-eqz v0, :cond_2

    move v2, v0

    .line 19200
    goto :goto_0

    .line 19203
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 19204
    if-eqz v0, :cond_3

    move v2, v0

    .line 19205
    goto :goto_0

    .line 19207
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 19208
    if-eqz v0, :cond_4

    move v2, v0

    .line 19209
    goto :goto_0

    .line 19212
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 19213
    if-eqz v0, :cond_5

    move v2, v0

    .line 19214
    goto :goto_0

    .line 19216
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 19217
    if-eqz v0, :cond_6

    move v2, v0

    .line 19218
    goto :goto_0

    .line 19221
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetNotFoundException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetNotFoundException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 19222
    if-eqz v0, :cond_7

    move v2, v0

    .line 19223
    goto/16 :goto_0

    .line 19225
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetNotFoundException()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 19226
    if-eqz v0, :cond_8

    move v2, v0

    .line 19227
    goto/16 :goto_0

    .line 19230
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18823
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getTag_result;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->compareTo(Lcom/evernote/edam/notestore/NoteStore$getTag_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$getTag_result;
    .locals 1

    .prologue
    .line 18955
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;-><init>(Lcom/evernote/edam/notestore/NoteStore$getTag_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/apache/thrift/TBase;
    .locals 1

    .prologue
    .line 18823
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$getTag_result;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/evernote/edam/notestore/NoteStore$getTag_result;)Z
    .locals 11
    .parameter "that"

    .prologue
    const/4 v10, 0x0

    .line 19140
    if-nez p1, :cond_0

    move v8, v10

    .line 19179
    :goto_0
    return v8

    .line 19143
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetSuccess()Z

    move-result v5

    .line 19144
    .local v5, this_present_success:Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetSuccess()Z

    move-result v1

    .line 19145
    .local v1, that_present_success:Z
    if-nez v5, :cond_1

    if-eqz v1, :cond_4

    .line 19146
    :cond_1
    if-eqz v5, :cond_2

    if-nez v1, :cond_3

    :cond_2
    move v8, v10

    .line 19147
    goto :goto_0

    .line 19148
    :cond_3
    iget-object v8, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->success:Lcom/evernote/edam/type/Tag;

    iget-object v9, p1, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->success:Lcom/evernote/edam/type/Tag;

    invoke-virtual {v8, v9}, Lcom/evernote/edam/type/Tag;->equals(Lcom/evernote/edam/type/Tag;)Z

    move-result v8

    if-nez v8, :cond_4

    move v8, v10

    .line 19149
    goto :goto_0

    .line 19152
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetUserException()Z

    move-result v7

    .line 19153
    .local v7, this_present_userException:Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetUserException()Z

    move-result v3

    .line 19154
    .local v3, that_present_userException:Z
    if-nez v7, :cond_5

    if-eqz v3, :cond_8

    .line 19155
    :cond_5
    if-eqz v7, :cond_6

    if-nez v3, :cond_7

    :cond_6
    move v8, v10

    .line 19156
    goto :goto_0

    .line 19157
    :cond_7
    iget-object v8, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v9, p1, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v8, v9}, Lcom/evernote/edam/error/EDAMUserException;->equals(Lcom/evernote/edam/error/EDAMUserException;)Z

    move-result v8

    if-nez v8, :cond_8

    move v8, v10

    .line 19158
    goto :goto_0

    .line 19161
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetSystemException()Z

    move-result v6

    .line 19162
    .local v6, this_present_systemException:Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetSystemException()Z

    move-result v2

    .line 19163
    .local v2, that_present_systemException:Z
    if-nez v6, :cond_9

    if-eqz v2, :cond_c

    .line 19164
    :cond_9
    if-eqz v6, :cond_a

    if-nez v2, :cond_b

    :cond_a
    move v8, v10

    .line 19165
    goto :goto_0

    .line 19166
    :cond_b
    iget-object v8, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v9, p1, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v8, v9}, Lcom/evernote/edam/error/EDAMSystemException;->equals(Lcom/evernote/edam/error/EDAMSystemException;)Z

    move-result v8

    if-nez v8, :cond_c

    move v8, v10

    .line 19167
    goto :goto_0

    .line 19170
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetNotFoundException()Z

    move-result v4

    .line 19171
    .local v4, this_present_notFoundException:Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetNotFoundException()Z

    move-result v0

    .line 19172
    .local v0, that_present_notFoundException:Z
    if-nez v4, :cond_d

    if-eqz v0, :cond_10

    .line 19173
    :cond_d
    if-eqz v4, :cond_e

    if-nez v0, :cond_f

    :cond_e
    move v8, v10

    .line 19174
    goto :goto_0

    .line 19175
    :cond_f
    iget-object v8, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    iget-object v9, p1, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v8, v9}, Lcom/evernote/edam/error/EDAMNotFoundException;->equals(Lcom/evernote/edam/error/EDAMNotFoundException;)Z

    move-result v8

    if-nez v8, :cond_10

    move v8, v10

    .line 19176
    goto :goto_0

    .line 19179
    :cond_10
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "that"

    .prologue
    const/4 v1, 0x0

    .line 19132
    if-nez p1, :cond_0

    move v0, v1

    .line 19136
    .end local p1
    :goto_0
    return v0

    .line 19134
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/evernote/edam/notestore/NoteStore$getTag_result;

    if-eqz v0, :cond_1

    .line 19135
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getTag_result;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->equals(Lcom/evernote/edam/notestore/NoteStore$getTag_result;)Z

    move-result v0

    goto :goto_0

    .restart local p1
    :cond_1
    move v0, v1

    .line 19136
    goto :goto_0
.end method

.method public fieldForId(I)Lcom/evernote/edam/notestore/NoteStore$getTag_result$_Fields;
    .locals 1
    .parameter "fieldId"

    .prologue
    .line 19234
    invoke-static {p1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result$_Fields;->findByThriftId(I)Lcom/evernote/edam/notestore/NoteStore$getTag_result$_Fields;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fieldForId(I)Lorg/apache/thrift/TFieldIdEnum;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18823
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->fieldForId(I)Lcom/evernote/edam/notestore/NoteStore$getTag_result$_Fields;

    move-result-object v0

    return-object v0
.end method

.method public getFieldValue(Lcom/evernote/edam/notestore/NoteStore$getTag_result$_Fields;)Ljava/lang/Object;
    .locals 2
    .parameter "field"

    .prologue
    .line 19095
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$1;->$SwitchMap$com$evernote$edam$notestore$NoteStore$getTag_result$_Fields:[I

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result$_Fields;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 19109
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 19097
    :pswitch_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->getSuccess()Lcom/evernote/edam/type/Tag;

    move-result-object v0

    .line 19106
    :goto_0
    return-object v0

    .line 19100
    :pswitch_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->getUserException()Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v0

    goto :goto_0

    .line 19103
    :pswitch_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->getSystemException()Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v0

    goto :goto_0

    .line 19106
    :pswitch_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->getNotFoundException()Lcom/evernote/edam/error/EDAMNotFoundException;

    move-result-object v0

    goto :goto_0

    .line 19095
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
    .line 18823
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getTag_result$_Fields;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->getFieldValue(Lcom/evernote/edam/notestore/NoteStore$getTag_result$_Fields;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNotFoundException()Lcom/evernote/edam/error/EDAMNotFoundException;
    .locals 1

    .prologue
    .line 19035
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    return-object v0
.end method

.method public getSuccess()Lcom/evernote/edam/type/Tag;
    .locals 1

    .prologue
    .line 18966
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->success:Lcom/evernote/edam/type/Tag;

    return-object v0
.end method

.method public getSystemException()Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1

    .prologue
    .line 19012
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method

.method public getUserException()Lcom/evernote/edam/error/EDAMUserException;
    .locals 1

    .prologue
    .line 18989
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 19183
    const/4 v0, 0x0

    return v0
.end method

.method public isSet(Lcom/evernote/edam/notestore/NoteStore$getTag_result$_Fields;)Z
    .locals 2
    .parameter "field"

    .prologue
    .line 19114
    if-nez p1, :cond_0

    .line 19115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 19118
    :cond_0
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$1;->$SwitchMap$com$evernote$edam$notestore$NoteStore$getTag_result$_Fields:[I

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result$_Fields;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 19128
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 19120
    :pswitch_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetSuccess()Z

    move-result v0

    .line 19126
    :goto_0
    return v0

    .line 19122
    :pswitch_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetUserException()Z

    move-result v0

    goto :goto_0

    .line 19124
    :pswitch_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetSystemException()Z

    move-result v0

    goto :goto_0

    .line 19126
    :pswitch_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetNotFoundException()Z

    move-result v0

    goto :goto_0

    .line 19118
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
    .line 18823
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getTag_result$_Fields;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSet(Lcom/evernote/edam/notestore/NoteStore$getTag_result$_Fields;)Z

    move-result v0

    return v0
.end method

.method public isSetNotFoundException()Z
    .locals 1

    .prologue
    .line 19048
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

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
    .line 18979
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->success:Lcom/evernote/edam/type/Tag;

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
    .line 19025
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

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
    .line 19002
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

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

    .line 19239
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 19242
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v0

    .line 19243
    .local v0, field:Lorg/apache/thrift/protocol/TField;
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 19284
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 19285
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->validate()V

    .line 19286
    return-void

    .line 19246
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 19280
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 19282
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 19248
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 19249
    new-instance v1, Lcom/evernote/edam/type/Tag;

    invoke-direct {v1}, Lcom/evernote/edam/type/Tag;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->success:Lcom/evernote/edam/type/Tag;

    .line 19250
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->success:Lcom/evernote/edam/type/Tag;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/Tag;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 19252
    :cond_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 19256
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 19257
    new-instance v1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 19258
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 19260
    :cond_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 19264
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_3

    .line 19265
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 19266
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 19268
    :cond_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 19272
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_4

    .line 19273
    new-instance v1, Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMNotFoundException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 19274
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 19276
    :cond_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 19246
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setFieldValue(Lcom/evernote/edam/notestore/NoteStore$getTag_result$_Fields;Ljava/lang/Object;)V
    .locals 2
    .parameter "field"
    .parameter "value"

    .prologue
    .line 19058
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$1;->$SwitchMap$com$evernote$edam$notestore$NoteStore$getTag_result$_Fields:[I

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getTag_result$_Fields;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 19092
    .end local p2
    :goto_0
    return-void

    .line 19060
    .restart local p2
    :pswitch_0
    if-nez p2, :cond_0

    .line 19061
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->unsetSuccess()V

    goto :goto_0

    .line 19063
    :cond_0
    check-cast p2, Lcom/evernote/edam/type/Tag;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->setSuccess(Lcom/evernote/edam/type/Tag;)V

    goto :goto_0

    .line 19068
    .restart local p2
    :pswitch_1
    if-nez p2, :cond_1

    .line 19069
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->unsetUserException()V

    goto :goto_0

    .line 19071
    :cond_1
    check-cast p2, Lcom/evernote/edam/error/EDAMUserException;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->setUserException(Lcom/evernote/edam/error/EDAMUserException;)V

    goto :goto_0

    .line 19076
    .restart local p2
    :pswitch_2
    if-nez p2, :cond_2

    .line 19077
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->unsetSystemException()V

    goto :goto_0

    .line 19079
    :cond_2
    check-cast p2, Lcom/evernote/edam/error/EDAMSystemException;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->setSystemException(Lcom/evernote/edam/error/EDAMSystemException;)V

    goto :goto_0

    .line 19084
    .restart local p2
    :pswitch_3
    if-nez p2, :cond_3

    .line 19085
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->unsetNotFoundException()V

    goto :goto_0

    .line 19087
    :cond_3
    check-cast p2, Lcom/evernote/edam/error/EDAMNotFoundException;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->setNotFoundException(Lcom/evernote/edam/error/EDAMNotFoundException;)V

    goto :goto_0

    .line 19058
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
    .line 18823
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getTag_result$_Fields;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->setFieldValue(Lcom/evernote/edam/notestore/NoteStore$getTag_result$_Fields;Ljava/lang/Object;)V

    return-void
.end method

.method public setNotFoundException(Lcom/evernote/edam/error/EDAMNotFoundException;)V
    .locals 0
    .parameter "notFoundException"

    .prologue
    .line 19039
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 19040
    return-void
.end method

.method public setNotFoundExceptionIsSet(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 19052
    if-nez p1, :cond_0

    .line 19053
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 19055
    :cond_0
    return-void
.end method

.method public setSuccess(Lcom/evernote/edam/type/Tag;)V
    .locals 0
    .parameter "success"

    .prologue
    .line 18970
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->success:Lcom/evernote/edam/type/Tag;

    .line 18971
    return-void
.end method

.method public setSuccessIsSet(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 18983
    if-nez p1, :cond_0

    .line 18984
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->success:Lcom/evernote/edam/type/Tag;

    .line 18986
    :cond_0
    return-void
.end method

.method public setSystemException(Lcom/evernote/edam/error/EDAMSystemException;)V
    .locals 0
    .parameter "systemException"

    .prologue
    .line 19016
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 19017
    return-void
.end method

.method public setSystemExceptionIsSet(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 19029
    if-nez p1, :cond_0

    .line 19030
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 19032
    :cond_0
    return-void
.end method

.method public setUserException(Lcom/evernote/edam/error/EDAMUserException;)V
    .locals 0
    .parameter "userException"

    .prologue
    .line 18993
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 18994
    return-void
.end method

.method public setUserExceptionIsSet(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 19006
    if-nez p1, :cond_0

    .line 19007
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 19009
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 19313
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getTag_result("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19314
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 19316
    .local v0, first:Z
    const-string v2, "success:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19317
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->success:Lcom/evernote/edam/type/Tag;

    if-nez v2, :cond_3

    .line 19318
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19322
    :goto_0
    const/4 v0, 0x0

    .line 19323
    if-nez v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19324
    :cond_0
    const-string v2, "userException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19325
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    if-nez v2, :cond_4

    .line 19326
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19330
    :goto_1
    const/4 v0, 0x0

    .line 19331
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19332
    :cond_1
    const-string v2, "systemException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19333
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    if-nez v2, :cond_5

    .line 19334
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19338
    :goto_2
    const/4 v0, 0x0

    .line 19339
    if-nez v0, :cond_2

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19340
    :cond_2
    const-string v2, "notFoundException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19341
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    if-nez v2, :cond_6

    .line 19342
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19346
    :goto_3
    const/4 v0, 0x0

    .line 19347
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19348
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 19320
    :cond_3
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->success:Lcom/evernote/edam/type/Tag;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 19328
    :cond_4
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 19336
    :cond_5
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 19344
    :cond_6
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public unsetNotFoundException()V
    .locals 1

    .prologue
    .line 19043
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    .line 19044
    return-void
.end method

.method public unsetSuccess()V
    .locals 1

    .prologue
    .line 18974
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->success:Lcom/evernote/edam/type/Tag;

    .line 18975
    return-void
.end method

.method public unsetSystemException()V
    .locals 1

    .prologue
    .line 19020
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 19021
    return-void
.end method

.method public unsetUserException()V
    .locals 1

    .prologue
    .line 18997
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 18998
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
    .line 19353
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
    .line 19289
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 19291
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19292
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->SUCCESS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 19293
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->success:Lcom/evernote/edam/type/Tag;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/Tag;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 19294
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 19308
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 19309
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 19310
    return-void

    .line 19295
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19296
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->USER_EXCEPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 19297
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 19298
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 19299
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19300
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 19301
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 19302
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 19303
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->isSetNotFoundException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19304
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->NOT_FOUND_EXCEPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 19305
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getTag_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMNotFoundException;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 19306
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
