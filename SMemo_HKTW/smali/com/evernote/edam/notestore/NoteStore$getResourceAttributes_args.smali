.class public Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;
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
    name = "getResourceAttributes_args"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args$_Fields;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;",
        "Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args$_Fields;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_TOKEN_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final GUID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

.field public static final metaDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args$_Fields;",
            "Lorg/apache/thrift/meta_data/FieldMetaData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private authenticationToken:Ljava/lang/String;

.field private guid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/16 v6, 0xb

    .line 50643
    new-instance v1, Lorg/apache/thrift/protocol/TStruct;

    const-string v2, "getResourceAttributes_args"

    invoke-direct {v1, v2}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 50645
    new-instance v1, Lorg/apache/thrift/protocol/TField;

    const-string v2, "authenticationToken"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v6, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 50646
    new-instance v1, Lorg/apache/thrift/protocol/TField;

    const-string v2, "guid"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v6, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->GUID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 50716
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 50717
    .local v0, tmpMap:Ljava/util/Map;,"Ljava/util/Map<Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args$_Fields;Lorg/apache/thrift/meta_data/FieldMetaData;>;"
    sget-object v1, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args$_Fields;->AUTHENTICATION_TOKEN:Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "authenticationToken"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50719
    sget-object v1, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args$_Fields;->GUID:Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "guid"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    const-string v5, "Guid"

    invoke-direct {v4, v6, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(BLjava/lang/String;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50721
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->metaDataMap:Ljava/util/Map;

    .line 50722
    const-class v1, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;

    sget-object v2, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->metaDataMap:Ljava/util/Map;

    invoke-static {v1, v2}, Lorg/apache/thrift/meta_data/FieldMetaData;->addStructMetaDataMap(Ljava/lang/Class;Ljava/util/Map;)V

    .line 50723
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50726
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 50740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50741
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->isSetAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50742
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->authenticationToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->authenticationToken:Ljava/lang/String;

    .line 50744
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->isSetGuid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50745
    iget-object v0, p1, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->guid:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->guid:Ljava/lang/String;

    .line 50747
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "authenticationToken"
    .parameter "guid"

    .prologue
    .line 50732
    invoke-direct {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;-><init>()V

    .line 50733
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->authenticationToken:Ljava/lang/String;

    .line 50734
    iput-object p2, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->guid:Ljava/lang/String;

    .line 50735
    return-void
.end method

.method static synthetic access$42200(Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50642
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->authenticationToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$42300(Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50642
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->guid:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50754
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->authenticationToken:Ljava/lang/String;

    .line 50755
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->guid:Ljava/lang/String;

    .line 50756
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;)I
    .locals 4
    .parameter "other"

    .prologue
    .line 50890
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 50891
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

    .line 50915
    :goto_0
    return v2

    .line 50894
    :cond_0
    const/4 v0, 0x0

    .line 50895
    .local v0, lastComparison:I
    move-object v1, p1

    .line 50897
    .local v1, typedOther:Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 50898
    if-eqz v0, :cond_1

    move v2, v0

    .line 50899
    goto :goto_0

    .line 50901
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 50902
    if-eqz v0, :cond_2

    move v2, v0

    .line 50903
    goto :goto_0

    .line 50906
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->isSetGuid()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->isSetGuid()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 50907
    if-eqz v0, :cond_3

    move v2, v0

    .line 50908
    goto :goto_0

    .line 50910
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->isSetGuid()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->guid:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->guid:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 50911
    if-eqz v0, :cond_4

    move v2, v0

    .line 50912
    goto :goto_0

    .line 50915
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50642
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->compareTo(Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;
    .locals 1

    .prologue
    .line 50750
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;-><init>(Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/apache/thrift/TBase;
    .locals 1

    .prologue
    .line 50642
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;)Z
    .locals 7
    .parameter "that"

    .prologue
    const/4 v6, 0x0

    .line 50861
    if-nez p1, :cond_0

    move v4, v6

    .line 50882
    :goto_0
    return v4

    .line 50864
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->isSetAuthenticationToken()Z

    move-result v2

    .line 50865
    .local v2, this_present_authenticationToken:Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->isSetAuthenticationToken()Z

    move-result v0

    .line 50866
    .local v0, that_present_authenticationToken:Z
    if-nez v2, :cond_1

    if-eqz v0, :cond_4

    .line 50867
    :cond_1
    if-eqz v2, :cond_2

    if-nez v0, :cond_3

    :cond_2
    move v4, v6

    .line 50868
    goto :goto_0

    .line 50869
    :cond_3
    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->authenticationToken:Ljava/lang/String;

    iget-object v5, p1, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v6

    .line 50870
    goto :goto_0

    .line 50873
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->isSetGuid()Z

    move-result v3

    .line 50874
    .local v3, this_present_guid:Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->isSetGuid()Z

    move-result v1

    .line 50875
    .local v1, that_present_guid:Z
    if-nez v3, :cond_5

    if-eqz v1, :cond_8

    .line 50876
    :cond_5
    if-eqz v3, :cond_6

    if-nez v1, :cond_7

    :cond_6
    move v4, v6

    .line 50877
    goto :goto_0

    .line 50878
    :cond_7
    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->guid:Ljava/lang/String;

    iget-object v5, p1, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->guid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    move v4, v6

    .line 50879
    goto :goto_0

    .line 50882
    :cond_8
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "that"

    .prologue
    const/4 v1, 0x0

    .line 50853
    if-nez p1, :cond_0

    move v0, v1

    .line 50857
    .end local p1
    :goto_0
    return v0

    .line 50855
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;

    if-eqz v0, :cond_1

    .line 50856
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->equals(Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;)Z

    move-result v0

    goto :goto_0

    .restart local p1
    :cond_1
    move v0, v1

    .line 50857
    goto :goto_0
.end method

.method public fieldForId(I)Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args$_Fields;
    .locals 1
    .parameter "fieldId"

    .prologue
    .line 50919
    invoke-static {p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args$_Fields;->findByThriftId(I)Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args$_Fields;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fieldForId(I)Lorg/apache/thrift/TFieldIdEnum;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50642
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->fieldForId(I)Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args$_Fields;

    move-result-object v0

    return-object v0
.end method

.method public getAuthenticationToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50759
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->authenticationToken:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldValue(Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args$_Fields;)Ljava/lang/Object;
    .locals 2
    .parameter "field"

    .prologue
    .line 50826
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$1;->$SwitchMap$com$evernote$edam$notestore$NoteStore$getResourceAttributes_args$_Fields:[I

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args$_Fields;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 50834
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 50828
    :pswitch_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v0

    .line 50831
    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->getGuid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 50826
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
    .line 50642
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args$_Fields;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->getFieldValue(Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args$_Fields;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50782
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 50886
    const/4 v0, 0x0

    return v0
.end method

.method public isSet(Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args$_Fields;)Z
    .locals 2
    .parameter "field"

    .prologue
    .line 50839
    if-nez p1, :cond_0

    .line 50840
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 50843
    :cond_0
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$1;->$SwitchMap$com$evernote$edam$notestore$NoteStore$getResourceAttributes_args$_Fields:[I

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args$_Fields;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 50849
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 50845
    :pswitch_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->isSetAuthenticationToken()Z

    move-result v0

    .line 50847
    :goto_0
    return v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->isSetGuid()Z

    move-result v0

    goto :goto_0

    .line 50843
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
    .line 50642
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args$_Fields;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->isSet(Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args$_Fields;)Z

    move-result v0

    return v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 50772
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetGuid()Z
    .locals 1

    .prologue
    .line 50795
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->guid:Ljava/lang/String;

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
    const/16 v2, 0xb

    .line 50924
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 50927
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v0

    .line 50928
    .local v0, field:Lorg/apache/thrift/protocol/TField;
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 50951
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 50952
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->validate()V

    .line 50953
    return-void

    .line 50931
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 50947
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 50949
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 50933
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_1

    .line 50934
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 50936
    :cond_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 50940
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v2, :cond_2

    .line 50941
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->guid:Ljava/lang/String;

    goto :goto_1

    .line 50943
    :cond_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 50931
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
    .line 50763
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->authenticationToken:Ljava/lang/String;

    .line 50764
    return-void
.end method

.method public setAuthenticationTokenIsSet(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 50776
    if-nez p1, :cond_0

    .line 50777
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->authenticationToken:Ljava/lang/String;

    .line 50779
    :cond_0
    return-void
.end method

.method public setFieldValue(Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args$_Fields;Ljava/lang/Object;)V
    .locals 2
    .parameter "field"
    .parameter "value"

    .prologue
    .line 50805
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$1;->$SwitchMap$com$evernote$edam$notestore$NoteStore$getResourceAttributes_args$_Fields:[I

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args$_Fields;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 50823
    .end local p2
    :goto_0
    return-void

    .line 50807
    .restart local p2
    :pswitch_0
    if-nez p2, :cond_0

    .line 50808
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->unsetAuthenticationToken()V

    goto :goto_0

    .line 50810
    :cond_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->setAuthenticationToken(Ljava/lang/String;)V

    goto :goto_0

    .line 50815
    .restart local p2
    :pswitch_1
    if-nez p2, :cond_1

    .line 50816
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->unsetGuid()V

    goto :goto_0

    .line 50818
    :cond_1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->setGuid(Ljava/lang/String;)V

    goto :goto_0

    .line 50805
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
    .line 50642
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args$_Fields;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->setFieldValue(Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args$_Fields;Ljava/lang/Object;)V

    return-void
.end method

.method public setGuid(Ljava/lang/String;)V
    .locals 0
    .parameter "guid"

    .prologue
    .line 50786
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->guid:Ljava/lang/String;

    .line 50787
    return-void
.end method

.method public setGuidIsSet(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 50799
    if-nez p1, :cond_0

    .line 50800
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->guid:Ljava/lang/String;

    .line 50802
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 50974
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getResourceAttributes_args("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50975
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 50977
    .local v0, first:Z
    const-string v2, "authenticationToken:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50978
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->authenticationToken:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 50979
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50983
    :goto_0
    const/4 v0, 0x0

    .line 50984
    if-nez v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50985
    :cond_0
    const-string v2, "guid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50986
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->guid:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 50987
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50991
    :goto_1
    const/4 v0, 0x0

    .line 50992
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50993
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 50981
    :cond_1
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 50989
    :cond_2
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->guid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public unsetAuthenticationToken()V
    .locals 1

    .prologue
    .line 50767
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->authenticationToken:Ljava/lang/String;

    .line 50768
    return-void
.end method

.method public unsetGuid()V
    .locals 1

    .prologue
    .line 50790
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->guid:Ljava/lang/String;

    .line 50791
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
    .line 50998
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
    .line 50956
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->validate()V

    .line 50958
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 50959
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 50960
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 50961
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 50962
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 50964
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->guid:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 50965
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->GUID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 50966
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$getResourceAttributes_args;->guid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 50967
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 50969
    :cond_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 50970
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 50971
    return-void
.end method
