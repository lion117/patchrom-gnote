.class public Lcom/evernote/edam/notestore/NoteStore$updateResource_args;
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
    name = "updateResource_args"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/edam/notestore/NoteStore$updateResource_args$_Fields;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$updateResource_args;",
        "Lcom/evernote/edam/notestore/NoteStore$updateResource_args$_Fields;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_TOKEN_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final RESOURCE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

.field public static final metaDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/evernote/edam/notestore/NoteStore$updateResource_args$_Fields;",
            "Lorg/apache/thrift/meta_data/FieldMetaData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private authenticationToken:Ljava/lang/String;

.field private resource:Lcom/evernote/edam/type/Resource;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xc

    const/16 v5, 0xb

    const/4 v6, 0x3

    .line 45838
    new-instance v1, Lorg/apache/thrift/protocol/TStruct;

    const-string v2, "updateResource_args"

    invoke-direct {v1, v2}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 45840
    new-instance v1, Lorg/apache/thrift/protocol/TField;

    const-string v2, "authenticationToken"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v5, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 45841
    new-instance v1, Lorg/apache/thrift/protocol/TField;

    const-string v2, "resource"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v7, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->RESOURCE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 45911
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/evernote/edam/notestore/NoteStore$updateResource_args$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 45912
    .local v0, tmpMap:Ljava/util/Map;,"Ljava/util/Map<Lcom/evernote/edam/notestore/NoteStore$updateResource_args$_Fields;Lorg/apache/thrift/meta_data/FieldMetaData;>;"
    sget-object v1, Lcom/evernote/edam/notestore/NoteStore$updateResource_args$_Fields;->AUTHENTICATION_TOKEN:Lcom/evernote/edam/notestore/NoteStore$updateResource_args$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "authenticationToken"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45914
    sget-object v1, Lcom/evernote/edam/notestore/NoteStore$updateResource_args$_Fields;->RESOURCE:Lcom/evernote/edam/notestore/NoteStore$updateResource_args$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "resource"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/evernote/edam/type/Resource;

    invoke-direct {v4, v7, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45916
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->metaDataMap:Ljava/util/Map;

    .line 45917
    const-class v1, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;

    sget-object v2, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->metaDataMap:Ljava/util/Map;

    invoke-static {v1, v2}, Lorg/apache/thrift/meta_data/FieldMetaData;->addStructMetaDataMap(Ljava/lang/Class;Ljava/util/Map;)V

    .line 45918
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45920
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45921
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$updateResource_args;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 45935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45936
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->isSetAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45937
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->authenticationToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->authenticationToken:Ljava/lang/String;

    .line 45939
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->isSetResource()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45940
    new-instance v0, Lcom/evernote/edam/type/Resource;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->resource:Lcom/evernote/edam/type/Resource;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/Resource;-><init>(Lcom/evernote/edam/type/Resource;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->resource:Lcom/evernote/edam/type/Resource;

    .line 45942
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/evernote/edam/type/Resource;)V
    .locals 0
    .parameter "authenticationToken"
    .parameter "resource"

    .prologue
    .line 45927
    invoke-direct {p0}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;-><init>()V

    .line 45928
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->authenticationToken:Ljava/lang/String;

    .line 45929
    iput-object p2, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->resource:Lcom/evernote/edam/type/Resource;

    .line 45930
    return-void
.end method

.method static synthetic access$40800(Lcom/evernote/edam/notestore/NoteStore$updateResource_args;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45837
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->authenticationToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$40900(Lcom/evernote/edam/notestore/NoteStore$updateResource_args;)Lcom/evernote/edam/type/Resource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45837
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->resource:Lcom/evernote/edam/type/Resource;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45949
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->authenticationToken:Ljava/lang/String;

    .line 45950
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->resource:Lcom/evernote/edam/type/Resource;

    .line 45951
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$updateResource_args;)I
    .locals 4
    .parameter "other"

    .prologue
    .line 46085
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 46086
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

    .line 46110
    :goto_0
    return v2

    .line 46089
    :cond_0
    const/4 v0, 0x0

    .line 46090
    .local v0, lastComparison:I
    move-object v1, p1

    .line 46092
    .local v1, typedOther:Lcom/evernote/edam/notestore/NoteStore$updateResource_args;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 46093
    if-eqz v0, :cond_1

    move v2, v0

    .line 46094
    goto :goto_0

    .line 46096
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 46097
    if-eqz v0, :cond_2

    move v2, v0

    .line 46098
    goto :goto_0

    .line 46101
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->isSetResource()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->isSetResource()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 46102
    if-eqz v0, :cond_3

    move v2, v0

    .line 46103
    goto :goto_0

    .line 46105
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->isSetResource()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->resource:Lcom/evernote/edam/type/Resource;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->resource:Lcom/evernote/edam/type/Resource;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 46106
    if-eqz v0, :cond_4

    move v2, v0

    .line 46107
    goto :goto_0

    .line 46110
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45837
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->compareTo(Lcom/evernote/edam/notestore/NoteStore$updateResource_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$updateResource_args;
    .locals 1

    .prologue
    .line 45945
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;-><init>(Lcom/evernote/edam/notestore/NoteStore$updateResource_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/apache/thrift/TBase;
    .locals 1

    .prologue
    .line 45837
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$updateResource_args;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/evernote/edam/notestore/NoteStore$updateResource_args;)Z
    .locals 7
    .parameter "that"

    .prologue
    const/4 v6, 0x0

    .line 46056
    if-nez p1, :cond_0

    move v4, v6

    .line 46077
    :goto_0
    return v4

    .line 46059
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->isSetAuthenticationToken()Z

    move-result v2

    .line 46060
    .local v2, this_present_authenticationToken:Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->isSetAuthenticationToken()Z

    move-result v0

    .line 46061
    .local v0, that_present_authenticationToken:Z
    if-nez v2, :cond_1

    if-eqz v0, :cond_4

    .line 46062
    :cond_1
    if-eqz v2, :cond_2

    if-nez v0, :cond_3

    :cond_2
    move v4, v6

    .line 46063
    goto :goto_0

    .line 46064
    :cond_3
    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->authenticationToken:Ljava/lang/String;

    iget-object v5, p1, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v6

    .line 46065
    goto :goto_0

    .line 46068
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->isSetResource()Z

    move-result v3

    .line 46069
    .local v3, this_present_resource:Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->isSetResource()Z

    move-result v1

    .line 46070
    .local v1, that_present_resource:Z
    if-nez v3, :cond_5

    if-eqz v1, :cond_8

    .line 46071
    :cond_5
    if-eqz v3, :cond_6

    if-nez v1, :cond_7

    :cond_6
    move v4, v6

    .line 46072
    goto :goto_0

    .line 46073
    :cond_7
    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->resource:Lcom/evernote/edam/type/Resource;

    iget-object v5, p1, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->resource:Lcom/evernote/edam/type/Resource;

    invoke-virtual {v4, v5}, Lcom/evernote/edam/type/Resource;->equals(Lcom/evernote/edam/type/Resource;)Z

    move-result v4

    if-nez v4, :cond_8

    move v4, v6

    .line 46074
    goto :goto_0

    .line 46077
    :cond_8
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "that"

    .prologue
    const/4 v1, 0x0

    .line 46048
    if-nez p1, :cond_0

    move v0, v1

    .line 46052
    .end local p1
    :goto_0
    return v0

    .line 46050
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;

    if-eqz v0, :cond_1

    .line 46051
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->equals(Lcom/evernote/edam/notestore/NoteStore$updateResource_args;)Z

    move-result v0

    goto :goto_0

    .restart local p1
    :cond_1
    move v0, v1

    .line 46052
    goto :goto_0
.end method

.method public fieldForId(I)Lcom/evernote/edam/notestore/NoteStore$updateResource_args$_Fields;
    .locals 1
    .parameter "fieldId"

    .prologue
    .line 46114
    invoke-static {p1}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args$_Fields;->findByThriftId(I)Lcom/evernote/edam/notestore/NoteStore$updateResource_args$_Fields;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fieldForId(I)Lorg/apache/thrift/TFieldIdEnum;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45837
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->fieldForId(I)Lcom/evernote/edam/notestore/NoteStore$updateResource_args$_Fields;

    move-result-object v0

    return-object v0
.end method

.method public getAuthenticationToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45954
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->authenticationToken:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldValue(Lcom/evernote/edam/notestore/NoteStore$updateResource_args$_Fields;)Ljava/lang/Object;
    .locals 2
    .parameter "field"

    .prologue
    .line 46021
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$1;->$SwitchMap$com$evernote$edam$notestore$NoteStore$updateResource_args$_Fields:[I

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args$_Fields;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 46029
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 46023
    :pswitch_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v0

    .line 46026
    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->getResource()Lcom/evernote/edam/type/Resource;

    move-result-object v0

    goto :goto_0

    .line 46021
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic getFieldValue(Lorg/apache/thrift/TFieldIdEnum;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45837
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$updateResource_args$_Fields;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->getFieldValue(Lcom/evernote/edam/notestore/NoteStore$updateResource_args$_Fields;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getResource()Lcom/evernote/edam/type/Resource;
    .locals 1

    .prologue
    .line 45977
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->resource:Lcom/evernote/edam/type/Resource;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 46081
    const/4 v0, 0x0

    return v0
.end method

.method public isSet(Lcom/evernote/edam/notestore/NoteStore$updateResource_args$_Fields;)Z
    .locals 2
    .parameter "field"

    .prologue
    .line 46034
    if-nez p1, :cond_0

    .line 46035
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 46038
    :cond_0
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$1;->$SwitchMap$com$evernote$edam$notestore$NoteStore$updateResource_args$_Fields:[I

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args$_Fields;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 46044
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 46040
    :pswitch_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->isSetAuthenticationToken()Z

    move-result v0

    .line 46042
    :goto_0
    return v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->isSetResource()Z

    move-result v0

    goto :goto_0

    .line 46038
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic isSet(Lorg/apache/thrift/TFieldIdEnum;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45837
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$updateResource_args$_Fields;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->isSet(Lcom/evernote/edam/notestore/NoteStore$updateResource_args$_Fields;)Z

    move-result v0

    return v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 45967
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetResource()Z
    .locals 1

    .prologue
    .line 45990
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->resource:Lcom/evernote/edam/type/Resource;

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
    .line 46119
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 46122
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v0

    .line 46123
    .local v0, field:Lorg/apache/thrift/protocol/TField;
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 46147
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 46148
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->validate()V

    .line 46149
    return-void

    .line 46126
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 46143
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 46145
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 46128
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 46129
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 46131
    :cond_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 46135
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 46136
    new-instance v1, Lcom/evernote/edam/type/Resource;

    invoke-direct {v1}, Lcom/evernote/edam/type/Resource;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->resource:Lcom/evernote/edam/type/Resource;

    .line 46137
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->resource:Lcom/evernote/edam/type/Resource;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/Resource;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 46139
    :cond_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 46126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAuthenticationToken(Ljava/lang/String;)V
    .locals 0
    .parameter "authenticationToken"

    .prologue
    .line 45958
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->authenticationToken:Ljava/lang/String;

    .line 45959
    return-void
.end method

.method public setAuthenticationTokenIsSet(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 45971
    if-nez p1, :cond_0

    .line 45972
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->authenticationToken:Ljava/lang/String;

    .line 45974
    :cond_0
    return-void
.end method

.method public setFieldValue(Lcom/evernote/edam/notestore/NoteStore$updateResource_args$_Fields;Ljava/lang/Object;)V
    .locals 2
    .parameter "field"
    .parameter "value"

    .prologue
    .line 46000
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$1;->$SwitchMap$com$evernote$edam$notestore$NoteStore$updateResource_args$_Fields:[I

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args$_Fields;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 46018
    .end local p2
    :goto_0
    return-void

    .line 46002
    .restart local p2
    :pswitch_0
    if-nez p2, :cond_0

    .line 46003
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->unsetAuthenticationToken()V

    goto :goto_0

    .line 46005
    :cond_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->setAuthenticationToken(Ljava/lang/String;)V

    goto :goto_0

    .line 46010
    .restart local p2
    :pswitch_1
    if-nez p2, :cond_1

    .line 46011
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->unsetResource()V

    goto :goto_0

    .line 46013
    :cond_1
    check-cast p2, Lcom/evernote/edam/type/Resource;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->setResource(Lcom/evernote/edam/type/Resource;)V

    goto :goto_0

    .line 46000
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic setFieldValue(Lorg/apache/thrift/TFieldIdEnum;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45837
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$updateResource_args$_Fields;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->setFieldValue(Lcom/evernote/edam/notestore/NoteStore$updateResource_args$_Fields;Ljava/lang/Object;)V

    return-void
.end method

.method public setResource(Lcom/evernote/edam/type/Resource;)V
    .locals 0
    .parameter "resource"

    .prologue
    .line 45981
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->resource:Lcom/evernote/edam/type/Resource;

    .line 45982
    return-void
.end method

.method public setResourceIsSet(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 45994
    if-nez p1, :cond_0

    .line 45995
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->resource:Lcom/evernote/edam/type/Resource;

    .line 45997
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 46170
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateResource_args("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46171
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 46173
    .local v0, first:Z
    const-string v2, "authenticationToken:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46174
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->authenticationToken:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 46175
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46179
    :goto_0
    const/4 v0, 0x0

    .line 46180
    if-nez v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46181
    :cond_0
    const-string v2, "resource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46182
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->resource:Lcom/evernote/edam/type/Resource;

    if-nez v2, :cond_2

    .line 46183
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46187
    :goto_1
    const/4 v0, 0x0

    .line 46188
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46189
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 46177
    :cond_1
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 46185
    :cond_2
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->resource:Lcom/evernote/edam/type/Resource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public unsetAuthenticationToken()V
    .locals 1

    .prologue
    .line 45962
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->authenticationToken:Ljava/lang/String;

    .line 45963
    return-void
.end method

.method public unsetResource()V
    .locals 1

    .prologue
    .line 45985
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->resource:Lcom/evernote/edam/type/Resource;

    .line 45986
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
    .line 46194
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
    .line 46152
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->validate()V

    .line 46154
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 46155
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 46156
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 46157
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 46158
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 46160
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->resource:Lcom/evernote/edam/type/Resource;

    if-eqz v0, :cond_1

    .line 46161
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->RESOURCE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 46162
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$updateResource_args;->resource:Lcom/evernote/edam/type/Resource;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/Resource;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 46163
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 46165
    :cond_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 46166
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 46167
    return-void
.end method
