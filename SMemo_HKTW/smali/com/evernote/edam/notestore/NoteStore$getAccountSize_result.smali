.class public Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;
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
    name = "getAccountSize_result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result$_Fields;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;",
        "Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result$_Fields;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

.field private static final SUCCESS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final SYSTEM_EXCEPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final USER_EXCEPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final __SUCCESS_ISSET_ID:I

.field public static final metaDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result$_Fields;",
            "Lorg/apache/thrift/meta_data/FieldMetaData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private __isset_vector:[Z

.field private success:J

.field private systemException:Lcom/evernote/edam/error/EDAMSystemException;

.field private userException:Lcom/evernote/edam/error/EDAMUserException;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x3

    const/16 v5, 0xc

    .line 51810
    new-instance v1, Lorg/apache/thrift/protocol/TStruct;

    const-string v2, "getAccountSize_result"

    invoke-direct {v1, v2}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 51812
    new-instance v1, Lorg/apache/thrift/protocol/TField;

    const-string v2, "success"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v7, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->SUCCESS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 51813
    new-instance v1, Lorg/apache/thrift/protocol/TField;

    const-string v2, "userException"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v5, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->USER_EXCEPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 51814
    new-instance v1, Lorg/apache/thrift/protocol/TField;

    const-string v2, "systemException"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v5, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 51890
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 51891
    .local v0, tmpMap:Ljava/util/Map;,"Ljava/util/Map<Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result$_Fields;Lorg/apache/thrift/meta_data/FieldMetaData;>;"
    sget-object v1, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result$_Fields;->SUCCESS:Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "success"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51893
    sget-object v1, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result$_Fields;->USER_EXCEPTION:Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "userException"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51895
    sget-object v1, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result$_Fields;->SYSTEM_EXCEPTION:Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "systemException"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51897
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->metaDataMap:Ljava/util/Map;

    .line 51898
    const-class v1, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;

    sget-object v2, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->metaDataMap:Ljava/util/Map;

    invoke-static {v1, v2}, Lorg/apache/thrift/meta_data/FieldMetaData;->addStructMetaDataMap(Ljava/lang/Class;Ljava/util/Map;)V

    .line 51899
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51886
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->__isset_vector:[Z

    .line 51902
    return-void
.end method

.method public constructor <init>(JLcom/evernote/edam/error/EDAMUserException;Lcom/evernote/edam/error/EDAMSystemException;)V
    .locals 1
    .parameter "success"
    .parameter "userException"
    .parameter "systemException"

    .prologue
    .line 51909
    invoke-direct {p0}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;-><init>()V

    .line 51910
    iput-wide p1, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->success:J

    .line 51911
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->setSuccessIsSet(Z)V

    .line 51912
    iput-object p3, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 51913
    iput-object p4, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 51914
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;)V
    .locals 4
    .parameter "other"

    .prologue
    const/4 v3, 0x0

    .line 51919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51886
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->__isset_vector:[Z

    .line 51920
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->__isset_vector:[Z

    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->__isset_vector:[Z

    iget-object v2, p1, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->__isset_vector:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51921
    iget-wide v0, p1, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->success:J

    iput-wide v0, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->success:J

    .line 51922
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51923
    new-instance v0, Lcom/evernote/edam/error/EDAMUserException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>(Lcom/evernote/edam/error/EDAMUserException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 51925
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51926
    new-instance v0, Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v0, v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>(Lcom/evernote/edam/error/EDAMSystemException;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 51928
    :cond_1
    return-void
.end method

.method static synthetic access$17800(Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 51809
    iget-wide v0, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->success:J

    return-wide v0
.end method

.method static synthetic access$17802(Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51809
    iput-wide p1, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->success:J

    return-wide p1
.end method

.method static synthetic access$17900(Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51809
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method static synthetic access$17902(Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;Lcom/evernote/edam/error/EDAMUserException;)Lcom/evernote/edam/error/EDAMUserException;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51809
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object p1
.end method

.method static synthetic access$18000(Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51809
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method

.method static synthetic access$18002(Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;Lcom/evernote/edam/error/EDAMSystemException;)Lcom/evernote/edam/error/EDAMSystemException;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51809
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51935
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->setSuccessIsSet(Z)V

    .line 51936
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->success:J

    .line 51937
    iput-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 51938
    iput-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 51939
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;)I
    .locals 6
    .parameter "other"

    .prologue
    .line 52117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 52118
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

    .line 52151
    :goto_0
    return v2

    .line 52121
    :cond_0
    const/4 v0, 0x0

    .line 52122
    .local v0, lastComparison:I
    move-object v1, p1

    .line 52124
    .local v1, typedOther:Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->isSetSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->isSetSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 52125
    if-eqz v0, :cond_1

    move v2, v0

    .line 52126
    goto :goto_0

    .line 52128
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->isSetSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->success:J

    iget-wide v4, v1, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->success:J

    invoke-static {v2, v3, v4, v5}, Lorg/apache/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 52129
    if-eqz v0, :cond_2

    move v2, v0

    .line 52130
    goto :goto_0

    .line 52133
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->isSetUserException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->isSetUserException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 52134
    if-eqz v0, :cond_3

    move v2, v0

    .line 52135
    goto :goto_0

    .line 52137
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->isSetUserException()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 52138
    if-eqz v0, :cond_4

    move v2, v0

    .line 52139
    goto :goto_0

    .line 52142
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->isSetSystemException()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->isSetSystemException()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 52143
    if-eqz v0, :cond_5

    move v2, v0

    .line 52144
    goto :goto_0

    .line 52146
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->isSetSystemException()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 52147
    if-eqz v0, :cond_6

    move v2, v0

    .line 52148
    goto :goto_0

    .line 52151
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51809
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->compareTo(Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;
    .locals 1

    .prologue
    .line 51931
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;-><init>(Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/apache/thrift/TBase;
    .locals 1

    .prologue
    .line 51809
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;)Z
    .locals 11
    .parameter "that"

    .prologue
    const/4 v10, 0x0

    .line 52079
    if-nez p1, :cond_0

    move v6, v10

    .line 52109
    :goto_0
    return v6

    .line 52082
    :cond_0
    const/4 v3, 0x1

    .line 52083
    .local v3, this_present_success:Z
    const/4 v0, 0x1

    .line 52084
    .local v0, that_present_success:Z
    if-nez v3, :cond_1

    if-eqz v0, :cond_4

    .line 52085
    :cond_1
    if-eqz v3, :cond_2

    if-nez v0, :cond_3

    :cond_2
    move v6, v10

    .line 52086
    goto :goto_0

    .line 52087
    :cond_3
    iget-wide v6, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->success:J

    iget-wide v8, p1, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->success:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    move v6, v10

    .line 52088
    goto :goto_0

    .line 52091
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->isSetUserException()Z

    move-result v5

    .line 52092
    .local v5, this_present_userException:Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->isSetUserException()Z

    move-result v2

    .line 52093
    .local v2, that_present_userException:Z
    if-nez v5, :cond_5

    if-eqz v2, :cond_8

    .line 52094
    :cond_5
    if-eqz v5, :cond_6

    if-nez v2, :cond_7

    :cond_6
    move v6, v10

    .line 52095
    goto :goto_0

    .line 52096
    :cond_7
    iget-object v6, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    iget-object v7, p1, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v6, v7}, Lcom/evernote/edam/error/EDAMUserException;->equals(Lcom/evernote/edam/error/EDAMUserException;)Z

    move-result v6

    if-nez v6, :cond_8

    move v6, v10

    .line 52097
    goto :goto_0

    .line 52100
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->isSetSystemException()Z

    move-result v4

    .line 52101
    .local v4, this_present_systemException:Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->isSetSystemException()Z

    move-result v1

    .line 52102
    .local v1, that_present_systemException:Z
    if-nez v4, :cond_9

    if-eqz v1, :cond_c

    .line 52103
    :cond_9
    if-eqz v4, :cond_a

    if-nez v1, :cond_b

    :cond_a
    move v6, v10

    .line 52104
    goto :goto_0

    .line 52105
    :cond_b
    iget-object v6, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    iget-object v7, p1, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v6, v7}, Lcom/evernote/edam/error/EDAMSystemException;->equals(Lcom/evernote/edam/error/EDAMSystemException;)Z

    move-result v6

    if-nez v6, :cond_c

    move v6, v10

    .line 52106
    goto :goto_0

    .line 52109
    :cond_c
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "that"

    .prologue
    const/4 v1, 0x0

    .line 52071
    if-nez p1, :cond_0

    move v0, v1

    .line 52075
    .end local p1
    :goto_0
    return v0

    .line 52073
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;

    if-eqz v0, :cond_1

    .line 52074
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->equals(Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;)Z

    move-result v0

    goto :goto_0

    .restart local p1
    :cond_1
    move v0, v1

    .line 52075
    goto :goto_0
.end method

.method public fieldForId(I)Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result$_Fields;
    .locals 1
    .parameter "fieldId"

    .prologue
    .line 52155
    invoke-static {p1}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result$_Fields;->findByThriftId(I)Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result$_Fields;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fieldForId(I)Lorg/apache/thrift/TFieldIdEnum;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51809
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->fieldForId(I)Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result$_Fields;

    move-result-object v0

    return-object v0
.end method

.method public getFieldValue(Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result$_Fields;)Ljava/lang/Object;
    .locals 3
    .parameter "field"

    .prologue
    .line 52039
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$1;->$SwitchMap$com$evernote$edam$notestore$NoteStore$getAccountSize_result$_Fields:[I

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result$_Fields;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 52050
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 52041
    :pswitch_0
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->getSuccess()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 52047
    :goto_0
    return-object v0

    .line 52044
    :pswitch_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->getUserException()Lcom/evernote/edam/error/EDAMUserException;

    move-result-object v0

    goto :goto_0

    .line 52047
    :pswitch_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->getSystemException()Lcom/evernote/edam/error/EDAMSystemException;

    move-result-object v0

    goto :goto_0

    .line 52039
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic getFieldValue(Lorg/apache/thrift/TFieldIdEnum;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51809
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result$_Fields;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->getFieldValue(Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result$_Fields;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSuccess()J
    .locals 2

    .prologue
    .line 51942
    iget-wide v0, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->success:J

    return-wide v0
.end method

.method public getSystemException()Lcom/evernote/edam/error/EDAMSystemException;
    .locals 1

    .prologue
    .line 51987
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    return-object v0
.end method

.method public getUserException()Lcom/evernote/edam/error/EDAMUserException;
    .locals 1

    .prologue
    .line 51964
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 52113
    const/4 v0, 0x0

    return v0
.end method

.method public isSet(Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result$_Fields;)Z
    .locals 2
    .parameter "field"

    .prologue
    .line 52055
    if-nez p1, :cond_0

    .line 52056
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 52059
    :cond_0
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$1;->$SwitchMap$com$evernote$edam$notestore$NoteStore$getAccountSize_result$_Fields:[I

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result$_Fields;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 52067
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 52061
    :pswitch_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->isSetSuccess()Z

    move-result v0

    .line 52065
    :goto_0
    return v0

    .line 52063
    :pswitch_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->isSetUserException()Z

    move-result v0

    goto :goto_0

    .line 52065
    :pswitch_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->isSetSystemException()Z

    move-result v0

    goto :goto_0

    .line 52059
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic isSet(Lorg/apache/thrift/TFieldIdEnum;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51809
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result$_Fields;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->isSet(Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result$_Fields;)Z

    move-result v0

    return v0
.end method

.method public isSetSuccess()Z
    .locals 2

    .prologue
    .line 51956
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->__isset_vector:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetSystemException()Z
    .locals 1

    .prologue
    .line 52000
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

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
    .line 51977
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 4
    .parameter "iprot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xc

    .line 52160
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 52163
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v0

    .line 52164
    .local v0, field:Lorg/apache/thrift/protocol/TField;
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 52197
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 52198
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->validate()V

    .line 52199
    return-void

    .line 52167
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 52193
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 52195
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 52169
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 52170
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->success:J

    .line 52171
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->setSuccessIsSet(Z)V

    goto :goto_1

    .line 52173
    :cond_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 52177
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_2

    .line 52178
    new-instance v1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMUserException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 52179
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMUserException;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 52181
    :cond_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 52185
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_3

    .line 52186
    new-instance v1, Lcom/evernote/edam/error/EDAMSystemException;

    invoke-direct {v1}, Lcom/evernote/edam/error/EDAMSystemException;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 52187
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/error/EDAMSystemException;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 52189
    :cond_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 52167
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setFieldValue(Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result$_Fields;Ljava/lang/Object;)V
    .locals 2
    .parameter "field"
    .parameter "value"

    .prologue
    .line 52010
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$1;->$SwitchMap$com$evernote$edam$notestore$NoteStore$getAccountSize_result$_Fields:[I

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result$_Fields;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 52036
    .end local p2
    :goto_0
    return-void

    .line 52012
    .restart local p2
    :pswitch_0
    if-nez p2, :cond_0

    .line 52013
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->unsetSuccess()V

    goto :goto_0

    .line 52015
    :cond_0
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->setSuccess(J)V

    goto :goto_0

    .line 52020
    .restart local p2
    :pswitch_1
    if-nez p2, :cond_1

    .line 52021
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->unsetUserException()V

    goto :goto_0

    .line 52023
    :cond_1
    check-cast p2, Lcom/evernote/edam/error/EDAMUserException;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->setUserException(Lcom/evernote/edam/error/EDAMUserException;)V

    goto :goto_0

    .line 52028
    .restart local p2
    :pswitch_2
    if-nez p2, :cond_2

    .line 52029
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->unsetSystemException()V

    goto :goto_0

    .line 52031
    :cond_2
    check-cast p2, Lcom/evernote/edam/error/EDAMSystemException;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->setSystemException(Lcom/evernote/edam/error/EDAMSystemException;)V

    goto :goto_0

    .line 52010
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic setFieldValue(Lorg/apache/thrift/TFieldIdEnum;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51809
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result$_Fields;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->setFieldValue(Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result$_Fields;Ljava/lang/Object;)V

    return-void
.end method

.method public setSuccess(J)V
    .locals 1
    .parameter "success"

    .prologue
    .line 51946
    iput-wide p1, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->success:J

    .line 51947
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->setSuccessIsSet(Z)V

    .line 51948
    return-void
.end method

.method public setSuccessIsSet(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 51960
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 51961
    return-void
.end method

.method public setSystemException(Lcom/evernote/edam/error/EDAMSystemException;)V
    .locals 0
    .parameter "systemException"

    .prologue
    .line 51991
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 51992
    return-void
.end method

.method public setSystemExceptionIsSet(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 52004
    if-nez p1, :cond_0

    .line 52005
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 52007
    :cond_0
    return-void
.end method

.method public setUserException(Lcom/evernote/edam/error/EDAMUserException;)V
    .locals 0
    .parameter "userException"

    .prologue
    .line 51968
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 51969
    return-void
.end method

.method public setUserExceptionIsSet(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 51981
    if-nez p1, :cond_0

    .line 51982
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 51984
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 52222
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAccountSize_result("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52223
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 52225
    .local v0, first:Z
    const-string v2, "success:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52226
    iget-wide v2, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->success:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52227
    const/4 v0, 0x0

    .line 52228
    if-nez v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52229
    :cond_0
    const-string v2, "userException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52230
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    if-nez v2, :cond_2

    .line 52231
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52235
    :goto_0
    const/4 v0, 0x0

    .line 52236
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52237
    :cond_1
    const-string v2, "systemException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52238
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    if-nez v2, :cond_3

    .line 52239
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52243
    :goto_1
    const/4 v0, 0x0

    .line 52244
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52245
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 52233
    :cond_2
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 52241
    :cond_3
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public unsetSuccess()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51951
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->__isset_vector:[Z

    aput-boolean v1, v0, v1

    .line 51952
    return-void
.end method

.method public unsetSystemException()V
    .locals 1

    .prologue
    .line 51995
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    .line 51996
    return-void
.end method

.method public unsetUserException()V
    .locals 1

    .prologue
    .line 51972
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    .line 51973
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
    .line 52250
    return-void
.end method

.method public write(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 2
    .parameter "oprot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 52202
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 52204
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->isSetSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52205
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->SUCCESS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 52206
    iget-wide v0, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->success:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeI64(J)V

    .line 52207
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 52217
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 52218
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 52219
    return-void

    .line 52208
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->isSetUserException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52209
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->USER_EXCEPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 52210
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->userException:Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMUserException;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 52211
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0

    .line 52212
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->isSetSystemException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52213
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->SYSTEM_EXCEPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 52214
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getAccountSize_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/error/EDAMSystemException;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 52215
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    goto :goto_0
.end method
