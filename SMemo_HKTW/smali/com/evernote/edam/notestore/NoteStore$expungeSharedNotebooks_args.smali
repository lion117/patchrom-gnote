.class public Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;
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
    name = "expungeSharedNotebooks_args"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args$_Fields;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/thrift/TBase",
        "<",
        "Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;",
        "Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args$_Fields;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_TOKEN_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final SHARED_NOTEBOOK_IDS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

.field public static final metaDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args$_Fields;",
            "Lorg/apache/thrift/meta_data/FieldMetaData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private authenticationToken:Ljava/lang/String;

.field private sharedNotebookIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xf

    const/16 v5, 0xb

    const/4 v7, 0x3

    .line 56451
    new-instance v1, Lorg/apache/thrift/protocol/TStruct;

    const-string v2, "expungeSharedNotebooks_args"

    invoke-direct {v1, v2}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 56453
    new-instance v1, Lorg/apache/thrift/protocol/TField;

    const-string v2, "authenticationToken"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v5, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 56454
    new-instance v1, Lorg/apache/thrift/protocol/TField;

    const-string v2, "sharedNotebookIds"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v8, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->SHARED_NOTEBOOK_IDS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 56524
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args$_Fields;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 56525
    .local v0, tmpMap:Ljava/util/Map;,"Ljava/util/Map<Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args$_Fields;Lorg/apache/thrift/meta_data/FieldMetaData;>;"
    sget-object v1, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args$_Fields;->AUTHENTICATION_TOKEN:Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "authenticationToken"

    new-instance v4, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56527
    sget-object v1, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args$_Fields;->SHARED_NOTEBOOK_IDS:Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args$_Fields;

    new-instance v2, Lorg/apache/thrift/meta_data/FieldMetaData;

    const-string v3, "sharedNotebookIds"

    new-instance v4, Lorg/apache/thrift/meta_data/ListMetaData;

    new-instance v5, Lorg/apache/thrift/meta_data/FieldValueMetaData;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Lorg/apache/thrift/meta_data/FieldValueMetaData;-><init>(B)V

    invoke-direct {v4, v8, v5}, Lorg/apache/thrift/meta_data/ListMetaData;-><init>(BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/thrift/meta_data/FieldMetaData;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/FieldValueMetaData;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56530
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->metaDataMap:Ljava/util/Map;

    .line 56531
    const-class v1, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;

    sget-object v2, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->metaDataMap:Ljava/util/Map;

    invoke-static {v1, v2}, Lorg/apache/thrift/meta_data/FieldMetaData;->addStructMetaDataMap(Ljava/lang/Class;Ljava/util/Map;)V

    .line 56532
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56535
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;)V
    .locals 4
    .parameter "other"

    .prologue
    .line 56549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56550
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->isSetAuthenticationToken()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56551
    iget-object v3, p1, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->authenticationToken:Ljava/lang/String;

    iput-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->authenticationToken:Ljava/lang/String;

    .line 56553
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->isSetSharedNotebookIds()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 56554
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56555
    .local v0, __this__sharedNotebookIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v3, p1, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 56556
    .local v2, other_element:Ljava/lang/Long;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56558
    .end local v2           #other_element:Ljava/lang/Long;
    :cond_1
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    .line 56560
    .end local v0           #__this__sharedNotebookIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter "authenticationToken"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56541
    .local p2, sharedNotebookIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;-><init>()V

    .line 56542
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->authenticationToken:Ljava/lang/String;

    .line 56543
    iput-object p2, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    .line 56544
    return-void
.end method

.method static synthetic access$43400(Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56450
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->authenticationToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$43500(Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56450
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addToSharedNotebookIds(J)V
    .locals 2
    .parameter "elem"

    .prologue
    .line 56603
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    if-nez v0, :cond_0

    .line 56604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    .line 56606
    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56607
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56567
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->authenticationToken:Ljava/lang/String;

    .line 56568
    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    .line 56569
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;)I
    .locals 4
    .parameter "other"

    .prologue
    .line 56718
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 56719
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

    .line 56743
    :goto_0
    return v2

    .line 56722
    :cond_0
    const/4 v0, 0x0

    .line 56723
    .local v0, lastComparison:I
    move-object v1, p1

    .line 56725
    .local v1, typedOther:Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->isSetAuthenticationToken()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->isSetAuthenticationToken()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 56726
    if-eqz v0, :cond_1

    move v2, v0

    .line 56727
    goto :goto_0

    .line 56729
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->isSetAuthenticationToken()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->authenticationToken:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->authenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 56730
    if-eqz v0, :cond_2

    move v2, v0

    .line 56731
    goto :goto_0

    .line 56734
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->isSetSharedNotebookIds()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->isSetSharedNotebookIds()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 56735
    if-eqz v0, :cond_3

    move v2, v0

    .line 56736
    goto :goto_0

    .line 56738
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->isSetSharedNotebookIds()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    iget-object v3, v1, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 56739
    if-eqz v0, :cond_4

    move v2, v0

    .line 56740
    goto :goto_0

    .line 56743
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56450
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->compareTo(Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;
    .locals 1

    .prologue
    .line 56563
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;

    invoke-direct {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;-><init>(Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/apache/thrift/TBase;
    .locals 1

    .prologue
    .line 56450
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->deepCopy()Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;)Z
    .locals 7
    .parameter "that"

    .prologue
    const/4 v6, 0x0

    .line 56689
    if-nez p1, :cond_0

    move v4, v6

    .line 56710
    :goto_0
    return v4

    .line 56692
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->isSetAuthenticationToken()Z

    move-result v2

    .line 56693
    .local v2, this_present_authenticationToken:Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->isSetAuthenticationToken()Z

    move-result v0

    .line 56694
    .local v0, that_present_authenticationToken:Z
    if-nez v2, :cond_1

    if-eqz v0, :cond_4

    .line 56695
    :cond_1
    if-eqz v2, :cond_2

    if-nez v0, :cond_3

    :cond_2
    move v4, v6

    .line 56696
    goto :goto_0

    .line 56697
    :cond_3
    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->authenticationToken:Ljava/lang/String;

    iget-object v5, p1, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v6

    .line 56698
    goto :goto_0

    .line 56701
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->isSetSharedNotebookIds()Z

    move-result v3

    .line 56702
    .local v3, this_present_sharedNotebookIds:Z
    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->isSetSharedNotebookIds()Z

    move-result v1

    .line 56703
    .local v1, that_present_sharedNotebookIds:Z
    if-nez v3, :cond_5

    if-eqz v1, :cond_8

    .line 56704
    :cond_5
    if-eqz v3, :cond_6

    if-nez v1, :cond_7

    :cond_6
    move v4, v6

    .line 56705
    goto :goto_0

    .line 56706
    :cond_7
    iget-object v4, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    iget-object v5, p1, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    move v4, v6

    .line 56707
    goto :goto_0

    .line 56710
    :cond_8
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "that"

    .prologue
    const/4 v1, 0x0

    .line 56681
    if-nez p1, :cond_0

    move v0, v1

    .line 56685
    .end local p1
    :goto_0
    return v0

    .line 56683
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;

    if-eqz v0, :cond_1

    .line 56684
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->equals(Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;)Z

    move-result v0

    goto :goto_0

    .restart local p1
    :cond_1
    move v0, v1

    .line 56685
    goto :goto_0
.end method

.method public fieldForId(I)Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args$_Fields;
    .locals 1
    .parameter "fieldId"

    .prologue
    .line 56747
    invoke-static {p1}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args$_Fields;->findByThriftId(I)Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args$_Fields;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fieldForId(I)Lorg/apache/thrift/TFieldIdEnum;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56450
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->fieldForId(I)Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args$_Fields;

    move-result-object v0

    return-object v0
.end method

.method public getAuthenticationToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56572
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->authenticationToken:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldValue(Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args$_Fields;)Ljava/lang/Object;
    .locals 2
    .parameter "field"

    .prologue
    .line 56654
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$1;->$SwitchMap$com$evernote$edam$notestore$NoteStore$expungeSharedNotebooks_args$_Fields:[I

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args$_Fields;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 56662
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 56656
    :pswitch_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v0

    .line 56659
    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->getSharedNotebookIds()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 56654
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
    .line 56450
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args$_Fields;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->getFieldValue(Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args$_Fields;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSharedNotebookIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56610
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    return-object v0
.end method

.method public getSharedNotebookIdsIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56599
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getSharedNotebookIdsSize()I
    .locals 1

    .prologue
    .line 56595
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 56714
    const/4 v0, 0x0

    return v0
.end method

.method public isSet(Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args$_Fields;)Z
    .locals 2
    .parameter "field"

    .prologue
    .line 56667
    if-nez p1, :cond_0

    .line 56668
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 56671
    :cond_0
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$1;->$SwitchMap$com$evernote$edam$notestore$NoteStore$expungeSharedNotebooks_args$_Fields:[I

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args$_Fields;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 56677
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 56673
    :pswitch_0
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->isSetAuthenticationToken()Z

    move-result v0

    .line 56675
    :goto_0
    return v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->isSetSharedNotebookIds()Z

    move-result v0

    goto :goto_0

    .line 56671
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
    .line 56450
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args$_Fields;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->isSet(Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args$_Fields;)Z

    move-result v0

    return v0
.end method

.method public isSetAuthenticationToken()Z
    .locals 1

    .prologue
    .line 56585
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->authenticationToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetSharedNotebookIds()Z
    .locals 1

    .prologue
    .line 56623
    iget-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 7
    .parameter "iprot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 56752
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 56755
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v4

    .line 56756
    .local v4, field:Lorg/apache/thrift/protocol/TField;
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v5, :cond_0

    .line 56789
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 56790
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->validate()V

    .line 56791
    return-void

    .line 56759
    :cond_0
    iget-short v5, v4, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v5, :pswitch_data_0

    .line 56785
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 56787
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 56761
    :pswitch_0
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v6, 0xb

    if-ne v5, v6, :cond_1

    .line 56762
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->authenticationToken:Ljava/lang/String;

    goto :goto_1

    .line 56764
    :cond_1
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 56768
    :pswitch_1
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v6, 0xf

    if-ne v5, v6, :cond_3

    .line 56770
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readListBegin()Lorg/apache/thrift/protocol/TList;

    move-result-object v3

    .line 56771
    .local v3, _list139:Lorg/apache/thrift/protocol/TList;
    new-instance v5, Ljava/util/ArrayList;

    iget v6, v3, Lorg/apache/thrift/protocol/TList;->size:I

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    .line 56772
    const/4 v2, 0x0

    .local v2, _i140:I
    :goto_2
    iget v5, v3, Lorg/apache/thrift/protocol/TList;->size:I

    if-ge v2, v5, :cond_2

    .line 56775
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    .line 56776
    .local v0, _elem141:J
    iget-object v5, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56772
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 56778
    .end local v0           #_elem141:J
    :cond_2
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readListEnd()V

    goto :goto_1

    .line 56781
    .end local v2           #_i140:I
    .end local v3           #_list139:Lorg/apache/thrift/protocol/TList;
    :cond_3
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v5}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 56759
    nop

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
    .line 56576
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->authenticationToken:Ljava/lang/String;

    .line 56577
    return-void
.end method

.method public setAuthenticationTokenIsSet(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 56589
    if-nez p1, :cond_0

    .line 56590
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->authenticationToken:Ljava/lang/String;

    .line 56592
    :cond_0
    return-void
.end method

.method public setFieldValue(Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args$_Fields;Ljava/lang/Object;)V
    .locals 2
    .parameter "field"
    .parameter "value"

    .prologue
    .line 56633
    sget-object v0, Lcom/evernote/edam/notestore/NoteStore$1;->$SwitchMap$com$evernote$edam$notestore$NoteStore$expungeSharedNotebooks_args$_Fields:[I

    invoke-virtual {p1}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args$_Fields;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 56651
    .end local p2
    :goto_0
    return-void

    .line 56635
    .restart local p2
    :pswitch_0
    if-nez p2, :cond_0

    .line 56636
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->unsetAuthenticationToken()V

    goto :goto_0

    .line 56638
    :cond_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->setAuthenticationToken(Ljava/lang/String;)V

    goto :goto_0

    .line 56643
    .restart local p2
    :pswitch_1
    if-nez p2, :cond_1

    .line 56644
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->unsetSharedNotebookIds()V

    goto :goto_0

    .line 56646
    :cond_1
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->setSharedNotebookIds(Ljava/util/List;)V

    goto :goto_0

    .line 56633
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
    .line 56450
    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args$_Fields;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->setFieldValue(Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args$_Fields;Ljava/lang/Object;)V

    return-void
.end method

.method public setSharedNotebookIds(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56614
    .local p1, sharedNotebookIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    .line 56615
    return-void
.end method

.method public setSharedNotebookIdsIsSet(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 56627
    if-nez p1, :cond_0

    .line 56628
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    .line 56630
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 56819
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expungeSharedNotebooks_args("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56820
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 56822
    .local v0, first:Z
    const-string v2, "authenticationToken:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56823
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->authenticationToken:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 56824
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56828
    :goto_0
    const/4 v0, 0x0

    .line 56829
    if-nez v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56830
    :cond_0
    const-string v2, "sharedNotebookIds:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56831
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    if-nez v2, :cond_2

    .line 56832
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56836
    :goto_1
    const/4 v0, 0x0

    .line 56837
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56838
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 56826
    :cond_1
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 56834
    :cond_2
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public unsetAuthenticationToken()V
    .locals 1

    .prologue
    .line 56580
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->authenticationToken:Ljava/lang/String;

    .line 56581
    return-void
.end method

.method public unsetSharedNotebookIds()V
    .locals 1

    .prologue
    .line 56618
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    .line 56619
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
    .line 56843
    return-void
.end method

.method public write(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 6
    .parameter "oprot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 56794
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->validate()V

    .line 56796
    sget-object v3, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 56797
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->authenticationToken:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 56798
    sget-object v3, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->AUTHENTICATION_TOKEN_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 56799
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->authenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 56800
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 56802
    :cond_0
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 56803
    sget-object v3, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->SHARED_NOTEBOOK_IDS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 56805
    new-instance v3, Lorg/apache/thrift/protocol/TList;

    const/16 v4, 0xa

    iget-object v5, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/apache/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeListBegin(Lorg/apache/thrift/protocol/TList;)V

    .line 56806
    iget-object v3, p0, Lcom/evernote/edam/notestore/NoteStore$expungeSharedNotebooks_args;->sharedNotebookIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local p0
    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 56808
    .local v0, _iter142:J
    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeI64(J)V

    goto :goto_0

    .line 56810
    .end local v0           #_iter142:J
    :cond_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeListEnd()V

    .line 56812
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 56814
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 56815
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 56816
    return-void
.end method
