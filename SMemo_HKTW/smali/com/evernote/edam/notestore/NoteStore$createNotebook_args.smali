.class public Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;
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
    name = "createNotebook_args"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/edam/notestore/NoteStore$createNotebook_args$_Fields;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;",
        "Lcom/evernote/edam/notestore/NoteStore$createNotebook_args$_Fields;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_TOKEN_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final NOTEBOOK_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

.field public static final metaDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/evernote/edam/notestore/NoteStore$createNotebook_args$_Fields;",
            "Lorg/apache/thrift/meta_data/FieldMetaData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private authenticationToken:Ljava/lang/String;

.field private notebook:Lcom/evernote/edam/type/Notebook;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xc

    const/16 v5, 0xb

    const/4 v6, 0x3

    .line 14183
    new-instance v1, Lorg/apache/thrift/protocol/TStruct;

    const-string v2, "createNotebook_args"

    invoke-direct {v1, v2}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 14185
    new-instance v1, Lorg/apache/thrift/protocol/TField;

    const-string v2, "authenticationToken"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v5, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 14186
    new-instance v1, Lorg/apache/thrift/protocol/TField;

    const-string v2, "notebook"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v7, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->NOTEBOOK_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 14256
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 14257
    .local v0, tmpMap:Ljava/util/Map;,"Ljava/util/Map<Lcom/evernote/edam/notestore/NoteStore$createNotebook_args$_Fields;Lorg/apache/thrift/meta_data/FieldMetaData;>;"
    sget-object v1, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args$_Fields;->AUTHENTICATION_TOKEN:Lcom/evernote/edam/notestore/NoteStore$createNotebook_args$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "authenticationToken"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14259
    sget-object v1, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args$_Fields;->NOTEBOOK:Lcom/evernote/edam/notestore/NoteStore$createNotebook_args$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "notebook"

    new-instance v4, Lorg/apache/thrift/meta_data/StructMetaData;

    const-class v5, Lcom/evernote/edam/type/Notebook;

    invoke-direct {v4, v7, v5}, Lorg/apache/thrift/meta_data/StructMetaData;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14261
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->metaDataMap:Ljava/util/Map;

    .line 14262
    const-class v1, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;

    sget-object v2, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->metaDataMap:Ljava/util/Map;

    invoke-static {v1, v2}, Lorg/apache/thrift/meta_data/FieldMetaData;->addStructMetaDataMap(Ljava/lang/Class;Ljava/util/Map;)V

    .line 14263
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14266
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 14280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14281
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->isSetAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14282
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->authenticationToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->authenticationToken:Ljava/lang/String;

    .line 14284
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->isSetNotebook()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14285
    new-instance v0, Lcom/evernote/edam/type/Notebook;

    iget-object v1, p1, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->notebook:Lcom/evernote/edam/type/Notebook;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/Notebook;-><init>(Lcom/evernote/edam/type/Notebook;)V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->notebook:Lcom/evernote/edam/type/Notebook;

    .line 14287
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/evernote/edam/type/Notebook;)V
    .locals 0
    .parameter "authenticationToken"
    .parameter "notebook"

    .prologue
    .line 14272
    invoke-direct {p0}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;-><init>()V

    .line 14273
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->authenticationToken:Ljava/lang/String;

    .line 14274
    iput-object p2, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->notebook:Lcom/evernote/edam/type/Notebook;

    .line 14275
    return-void
.end method

.method static synthetic access$32100(Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14182
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->authenticationToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$32200(Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;)Lcom/evernote/edam/type/Notebook;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14182
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->notebook:Lcom/evernote/edam/type/Notebook;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14294
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->authenticationToken:Ljava/lang/String;

    .line 14295
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->notebook:Lcom/evernote/edam/type/Notebook;

    .line 14296
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;)I
    .locals 4
    .parameter "other"

    .prologue
    .line 14430
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 14431
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

    .line 14455
    :goto_0
    return v2

    .line 14434
    :cond_0
    const/4 v0, 0x0

    .line 14435
    .local v0, lastComparison:I
    move-object v1, p1

    .line 14437
    .local v1, typedOther:Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 14438
    if-eqz v0, :cond_1

    move v2, v0

    .line 14439
    goto :goto_0

    .line 14441
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 14442
    if-eqz v0, :cond_2

    move v2, v0

    .line 14443
    goto :goto_0

    .line 14446
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->isSetNotebook()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->isSetNotebook()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 14447
    if-eqz v0, :cond_3

    move v2, v0

    .line 14448
    goto :goto_0

    .line 14450
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->isSetNotebook()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->notebook:Lcom/evernote/edam/type/Notebook;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->notebook:Lcom/evernote/edam/type/Notebook;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 14451
    if-eqz v0, :cond_4

    move v2, v0

    .line 14452
    goto :goto_0

    .line 14455
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14182
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->compareTo(Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;
    .locals 1

    .prologue
    .line 14290
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;-><init>(Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/apache/thrift/TBase;
    .locals 1

    .prologue
    .line 14182
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;)Z
    .locals 7
    .parameter "that"

    .prologue
    const/4 v6, 0x0

    .line 14401
    if-nez p1, :cond_0

    move v4, v6

    .line 14422
    :goto_0
    return v4

    .line 14404
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->isSetAuthenticationToken()Z

    move-result v2

    .line 14405
    .local v2, this_present_authenticationToken:Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->isSetAuthenticationToken()Z

    move-result v0

    .line 14406
    .local v0, that_present_authenticationToken:Z
    if-nez v2, :cond_1

    if-eqz v0, :cond_4

    .line 14407
    :cond_1
    if-eqz v2, :cond_2

    if-nez v0, :cond_3

    :cond_2
    move v4, v6

    .line 14408
    goto :goto_0

    .line 14409
    :cond_3
    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->authenticationToken:Ljava/lang/String;

    iget-object v5, p1, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v6

    .line 14410
    goto :goto_0

    .line 14413
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->isSetNotebook()Z

    move-result v3

    .line 14414
    .local v3, this_present_notebook:Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->isSetNotebook()Z

    move-result v1

    .line 14415
    .local v1, that_present_notebook:Z
    if-nez v3, :cond_5

    if-eqz v1, :cond_8

    .line 14416
    :cond_5
    if-eqz v3, :cond_6

    if-nez v1, :cond_7

    :cond_6
    move v4, v6

    .line 14417
    goto :goto_0

    .line 14418
    :cond_7
    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->notebook:Lcom/evernote/edam/type/Notebook;

    iget-object v5, p1, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->notebook:Lcom/evernote/edam/type/Notebook;

    invoke-virtual {v4, v5}, Lcom/evernote/edam/type/Notebook;->equals(Lcom/evernote/edam/type/Notebook;)Z

    move-result v4

    if-nez v4, :cond_8

    move v4, v6

    .line 14419
    goto :goto_0

    .line 14422
    :cond_8
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "that"

    .prologue
    const/4 v1, 0x0

    .line 14393
    if-nez p1, :cond_0

    move v0, v1

    .line 14397
    .end local p1
    :goto_0
    return v0

    .line 14395
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;

    if-eqz v0, :cond_1

    .line 14396
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->equals(Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;)Z

    move-result v0

    goto :goto_0

    .restart local p1
    :cond_1
    move v0, v1

    .line 14397
    goto :goto_0
.end method

.method public fieldForId(I)Lcom/evernote/edam/notestore/NoteStore$createNotebook_args$_Fields;
    .locals 1
    .parameter "fieldId"

    .prologue
    .line 14459
    invoke-static {p1}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args$_Fields;->findByThriftId(I)Lcom/evernote/edam/notestore/NoteStore$createNotebook_args$_Fields;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fieldForId(I)Lorg/apache/thrift/TFieldIdEnum;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14182
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->fieldForId(I)Lcom/evernote/edam/notestore/NoteStore$createNotebook_args$_Fields;

    move-result-object v0

    return-object v0
.end method

.method public getAuthenticationToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14299
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->authenticationToken:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldValue(Lcom/evernote/edam/notestore/NoteStore$createNotebook_args$_Fields;)Ljava/lang/Object;
    .locals 2
    .parameter "field"

    .prologue
    .line 14366
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$1;->$SwitchMap$com$evernote$edam$notestore$NoteStore$createNotebook_args$_Fields:[I

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args$_Fields;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 14374
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 14368
    :pswitch_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v0

    .line 14371
    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->getNotebook()Lcom/evernote/edam/type/Notebook;

    move-result-object v0

    goto :goto_0

    .line 14366
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
    .line 14182
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args$_Fields;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->getFieldValue(Lcom/evernote/edam/notestore/NoteStore$createNotebook_args$_Fields;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNotebook()Lcom/evernote/edam/type/Notebook;
    .locals 1

    .prologue
    .line 14322
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->notebook:Lcom/evernote/edam/type/Notebook;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 14426
    const/4 v0, 0x0

    return v0
.end method

.method public isSet(Lcom/evernote/edam/notestore/NoteStore$createNotebook_args$_Fields;)Z
    .locals 2
    .parameter "field"

    .prologue
    .line 14379
    if-nez p1, :cond_0

    .line 14380
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 14383
    :cond_0
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$1;->$SwitchMap$com$evernote$edam$notestore$NoteStore$createNotebook_args$_Fields:[I

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args$_Fields;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 14389
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 14385
    :pswitch_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->isSetAuthenticationToken()Z

    move-result v0

    .line 14387
    :goto_0
    return v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->isSetNotebook()Z

    move-result v0

    goto :goto_0

    .line 14383
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
    .line 14182
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args$_Fields;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->isSet(Lcom/evernote/edam/notestore/NoteStore$createNotebook_args$_Fields;)Z

    move-result v0

    return v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 14312
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetNotebook()Z
    .locals 1

    .prologue
    .line 14335
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->notebook:Lcom/evernote/edam/type/Notebook;

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
    .line 14464
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 14467
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v0

    .line 14468
    .local v0, field:Lorg/apache/thrift/protocol/TField;
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 14492
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 14493
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->validate()V

    .line 14494
    return-void

    .line 14471
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 14488
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 14490
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 14473
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 14474
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 14476
    :cond_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 14480
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 14481
    new-instance v1, Lcom/evernote/edam/type/Notebook;

    invoke-direct {v1}, Lcom/evernote/edam/type/Notebook;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->notebook:Lcom/evernote/edam/type/Notebook;

    .line 14482
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->notebook:Lcom/evernote/edam/type/Notebook;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/Notebook;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 14484
    :cond_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 14471
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
    .line 14303
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->authenticationToken:Ljava/lang/String;

    .line 14304
    return-void
.end method

.method public setAuthenticationTokenIsSet(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 14316
    if-nez p1, :cond_0

    .line 14317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->authenticationToken:Ljava/lang/String;

    .line 14319
    :cond_0
    return-void
.end method

.method public setFieldValue(Lcom/evernote/edam/notestore/NoteStore$createNotebook_args$_Fields;Ljava/lang/Object;)V
    .locals 2
    .parameter "field"
    .parameter "value"

    .prologue
    .line 14345
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$1;->$SwitchMap$com$evernote$edam$notestore$NoteStore$createNotebook_args$_Fields:[I

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args$_Fields;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 14363
    .end local p2
    :goto_0
    return-void

    .line 14347
    .restart local p2
    :pswitch_0
    if-nez p2, :cond_0

    .line 14348
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->unsetAuthenticationToken()V

    goto :goto_0

    .line 14350
    :cond_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->setAuthenticationToken(Ljava/lang/String;)V

    goto :goto_0

    .line 14355
    .restart local p2
    :pswitch_1
    if-nez p2, :cond_1

    .line 14356
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->unsetNotebook()V

    goto :goto_0

    .line 14358
    :cond_1
    check-cast p2, Lcom/evernote/edam/type/Notebook;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->setNotebook(Lcom/evernote/edam/type/Notebook;)V

    goto :goto_0

    .line 14345
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
    .line 14182
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args$_Fields;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->setFieldValue(Lcom/evernote/edam/notestore/NoteStore$createNotebook_args$_Fields;Ljava/lang/Object;)V

    return-void
.end method

.method public setNotebook(Lcom/evernote/edam/type/Notebook;)V
    .locals 0
    .parameter "notebook"

    .prologue
    .line 14326
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->notebook:Lcom/evernote/edam/type/Notebook;

    .line 14327
    return-void
.end method

.method public setNotebookIsSet(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 14339
    if-nez p1, :cond_0

    .line 14340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->notebook:Lcom/evernote/edam/type/Notebook;

    .line 14342
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 14515
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createNotebook_args("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14516
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 14518
    .local v0, first:Z
    const-string v2, "authenticationToken:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14519
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->authenticationToken:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 14520
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14524
    :goto_0
    const/4 v0, 0x0

    .line 14525
    if-nez v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14526
    :cond_0
    const-string v2, "notebook:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14527
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->notebook:Lcom/evernote/edam/type/Notebook;

    if-nez v2, :cond_2

    .line 14528
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14532
    :goto_1
    const/4 v0, 0x0

    .line 14533
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14534
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 14522
    :cond_1
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 14530
    :cond_2
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->notebook:Lcom/evernote/edam/type/Notebook;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public unsetAuthenticationToken()V
    .locals 1

    .prologue
    .line 14307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->authenticationToken:Ljava/lang/String;

    .line 14308
    return-void
.end method

.method public unsetNotebook()V
    .locals 1

    .prologue
    .line 14330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->notebook:Lcom/evernote/edam/type/Notebook;

    .line 14331
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
    .line 14539
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
    .line 14497
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->validate()V

    .line 14499
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 14500
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 14501
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 14502
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 14503
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 14505
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->notebook:Lcom/evernote/edam/type/Notebook;

    if-eqz v0, :cond_1

    .line 14506
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->NOTEBOOK_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 14507
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$createNotebook_args;->notebook:Lcom/evernote/edam/type/Notebook;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/Notebook;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 14508
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 14510
    :cond_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 14511
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 14512
    return-void
.end method
