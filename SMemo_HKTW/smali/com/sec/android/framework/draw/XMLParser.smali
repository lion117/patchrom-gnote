.class public Lcom/sec/android/framework/draw/XMLParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/framework/draw/IXMLParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/framework/draw/XMLParser$Element;
    }
.end annotation


# static fields
.field private static synthetic h:[I


# instance fields
.field private a:Ljava/lang/StringBuilder;

.field private b:Ljava/lang/StringBuilder;

.field private c:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

.field private d:Lcom/sec/android/framework/draw/sprites/AbstractSprite;

.field private e:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/sec/android/framework/draw/XMLParser$Element;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[B>;"
        }
    .end annotation
.end field

.field private g:I


# direct methods
.method public constructor <init>(Lcom/sec/android/framework/draw/modes/AbstractModeContext;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/sec/android/framework/draw/XMLParser;->c:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    .line 61
    return-void
.end method

.method private static a(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 278
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/sec/android/framework/draw/XMLParser;->a(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 282
    invoke-interface {p0, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/Vector;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 232
    if-nez p0, :cond_1

    .line 242
    :cond_0
    return-object v0

    .line 235
    :cond_1
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 237
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private static synthetic a()[I
    .locals 3

    .prologue
    .line 33
    sget-object v0, Lcom/sec/android/framework/draw/XMLParser;->h:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/android/framework/draw/XMLParser$Element;->values()[Lcom/sec/android/framework/draw/XMLParser$Element;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sec/android/framework/draw/XMLParser$Element;->CreateCommand:Lcom/sec/android/framework/draw/XMLParser$Element;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/XMLParser$Element;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_1
    :try_start_1
    sget-object v1, Lcom/sec/android/framework/draw/XMLParser$Element;->Image:Lcom/sec/android/framework/draw/XMLParser$Element;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/XMLParser$Element;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_2
    :try_start_2
    sget-object v1, Lcom/sec/android/framework/draw/XMLParser$Element;->Ink:Lcom/sec/android/framework/draw/XMLParser$Element;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/XMLParser$Element;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_3
    :try_start_3
    sget-object v1, Lcom/sec/android/framework/draw/XMLParser$Element;->Point:Lcom/sec/android/framework/draw/XMLParser$Element;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/XMLParser$Element;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_4
    :try_start_4
    sget-object v1, Lcom/sec/android/framework/draw/XMLParser$Element;->Pressure:Lcom/sec/android/framework/draw/XMLParser$Element;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/XMLParser$Element;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    :try_start_5
    sget-object v1, Lcom/sec/android/framework/draw/XMLParser$Element;->Redo:Lcom/sec/android/framework/draw/XMLParser$Element;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/XMLParser$Element;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_6
    :try_start_6
    sget-object v1, Lcom/sec/android/framework/draw/XMLParser$Element;->Slide:Lcom/sec/android/framework/draw/XMLParser$Element;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/XMLParser$Element;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_7
    :try_start_7
    sget-object v1, Lcom/sec/android/framework/draw/XMLParser$Element;->Stroke:Lcom/sec/android/framework/draw/XMLParser$Element;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/XMLParser$Element;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_8
    :try_start_8
    sget-object v1, Lcom/sec/android/framework/draw/XMLParser$Element;->Undo:Lcom/sec/android/framework/draw/XMLParser$Element;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/XMLParser$Element;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_9
    sput-object v0, Lcom/sec/android/framework/draw/XMLParser;->h:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)Ljava/util/Vector;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 248
    if-nez p0, :cond_1

    .line 258
    :cond_0
    return-object v0

    .line 251
    :cond_1
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 253
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private static c(Ljava/lang/String;)Ljava/util/Vector;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 264
    if-nez p0, :cond_1

    .line 274
    :cond_0
    return-object v0

    .line 267
    :cond_1
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 269
    :try_start_0
    new-instance v5, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sec/android/framework/draw/XMLParser;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/XMLParser$Element;

    .line 123
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 125
    invoke-static {}, Lcom/sec/android/framework/draw/XMLParser;->a()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/XMLParser$Element;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 133
    :goto_0
    return-void

    .line 127
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/framework/draw/XMLParser;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 130
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/framework/draw/XMLParser;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v6, 0x0

    .line 137
    iget-object v0, p0, Lcom/sec/android/framework/draw/XMLParser;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/XMLParser$Element;

    .line 139
    invoke-static {}, Lcom/sec/android/framework/draw/XMLParser;->a()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/XMLParser$Element;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 141
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/framework/draw/XMLParser;->d:Lcom/sec/android/framework/draw/sprites/AbstractSprite;

    check-cast v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    iget-object v1, p0, Lcom/sec/android/framework/draw/XMLParser;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/framework/draw/XMLParser;->c(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v7

    .line 142
    iget-object v1, p0, Lcom/sec/android/framework/draw/XMLParser;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/framework/draw/XMLParser;->a(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v8

    .line 141
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v9

    move v10, v6

    :goto_1
    if-lt v10, v9, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->endStroke()Landroid/graphics/RectF;

    invoke-virtual {v0, v11}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->markStrokeEnded(Z)V

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->isStrokeFixed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getStrokeVectors()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->clearVectors(Ljava/util/Vector;)V

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getStroker()Lcom/sec/android/framework/draw/sprites/strokes/stroker/IStroker;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/framework/draw/sprites/strokes/stroker/IStroker;->cleanUpStrokerData()V

    goto :goto_0

    :cond_1
    invoke-virtual {v7, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    invoke-virtual {v8, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v3, v1

    iget v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->x:F

    iget v2, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->y:F

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->addPoint(FFFJZ)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v11}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->strokeLineSegment(Z)Landroid/graphics/RectF;

    :cond_2
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_1

    .line 139
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public parse(Ljava/lang/String;[BLjava/util/Vector;)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Vector",
            "<[B>;)Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 64
    .line 65
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/XMLParser;->e:Ljava/util/Stack;

    .line 66
    iget-object v0, p0, Lcom/sec/android/framework/draw/XMLParser;->c:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    iget-object v0, v0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/AbstractStage;->clearStage()V

    .line 67
    iput-object p3, p0, Lcom/sec/android/framework/draw/XMLParser;->f:Ljava/util/Vector;

    .line 68
    iput v3, p0, Lcom/sec/android/framework/draw/XMLParser;->g:I

    .line 70
    if-eqz p2, :cond_0

    .line 71
    iget-object v0, p0, Lcom/sec/android/framework/draw/XMLParser;->c:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    iget-object v0, v0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    array-length v1, p2

    invoke-static {p2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/framework/draw/AbstractStage;->initializeSprites(Landroid/graphics/Bitmap;)V

    .line 73
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 76
    :try_start_1
    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 77
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 86
    :goto_0
    if-nez v0, :cond_1

    move v0, v3

    .line 95
    :goto_1
    return v0

    .line 78
    :catch_0
    move-exception v0

    move-object v1, v4

    :goto_2
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 80
    :catch_1
    move-exception v0

    move-object v1, v4

    :goto_3
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 82
    :catch_2
    move-exception v0

    move-object v1, v4

    :goto_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 90
    :cond_1
    iput-object v4, p0, Lcom/sec/android/framework/draw/XMLParser;->f:Ljava/util/Vector;

    .line 91
    iput-object v4, p0, Lcom/sec/android/framework/draw/XMLParser;->d:Lcom/sec/android/framework/draw/sprites/AbstractSprite;

    .line 93
    iget-object v0, p0, Lcom/sec/android/framework/draw/XMLParser;->c:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    invoke-virtual {v0, v5}, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->onActivate(Z)V

    move v0, v5

    .line 95
    goto :goto_1

    .line 82
    :catch_3
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    .line 80
    :catch_4
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    .line 78
    :catch_5
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 100
    invoke-static {p2}, Lcom/sec/android/framework/draw/XMLParser$Element;->lookup(Ljava/lang/String;)Lcom/sec/android/framework/draw/XMLParser$Element;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/sec/android/framework/draw/XMLParser;->e:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {}, Lcom/sec/android/framework/draw/XMLParser;->a()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/XMLParser$Element;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 117
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 105
    :pswitch_1
    const-string v0, "%d,%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "size"

    invoke-static {p4, v1, v0}, Lcom/sec/android/framework/draw/XMLParser;->a(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/framework/draw/XMLParser;->a(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/framework/draw/XMLParser;->c:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v8, v8, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->changeCanvasSize(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 108
    :pswitch_2
    const-string v0, "type"

    sget-object v1, Lcom/sec/android/framework/draw/Setting;->DEFAULT_STROKE_TYPE:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v0, v1}, Lcom/sec/android/framework/draw/XMLParser;->a(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->lookup(Ljava/lang/String;)Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    move-result-object v1

    const-string v0, "#%08x"

    new-array v2, v9, [Ljava/lang/Object;

    sget v3, Lcom/sec/android/framework/draw/Setting;->DEFAULT_STROKE_COLOR:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "color"

    invoke-static {p4, v2, v0}, Lcom/sec/android/framework/draw/XMLParser;->a(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    long-to-int v5, v2

    const-string v0, "parameter"

    sget-object v2, Lcom/sec/android/framework/draw/Setting;->DEFAULT_STROKE_PARAMETER:Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    invoke-virtual {v2}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p4, v0, v2}, Lcom/sec/android/framework/draw/XMLParser;->a(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;->lookup(Ljava/lang/String;)Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    move-result-object v2

    const-string v0, "input"

    sget-object v3, Lcom/sec/android/framework/draw/Setting;->DEFAULT_STROKE_INPUT:Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

    invoke-virtual {v3}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {p4, v0, v3}, Lcom/sec/android/framework/draw/XMLParser;->a(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;->lookup(Ljava/lang/String;)Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

    move-result-object v3

    const/high16 v0, 0x4120

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    const-string v4, "width"

    invoke-static {p4, v4, v0}, Lcom/sec/android/framework/draw/XMLParser;->a(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const-string v0, "1"

    const-string v6, "visible"

    invoke-static {p4, v6, v0}, Lcom/sec/android/framework/draw/XMLParser;->a(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "0"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v6, v8

    :goto_1
    const-string v0, "0"

    const-string v7, "fixed"

    invoke-static {p4, v7, v0}, Lcom/sec/android/framework/draw/XMLParser;->a(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v7, v9

    :goto_2
    iget-object v0, p0, Lcom/sec/android/framework/draw/XMLParser;->c:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    iget-object v0, v0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->factory:Lcom/sec/android/framework/draw/sprites/ISpriteFactory;

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/framework/draw/sprites/ISpriteFactory;->createStrokeSprite(Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;FI)Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    move-result-object v0

    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;->Hand:Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

    if-ne v3, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/framework/draw/XMLParser;->c:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    iget-object v1, v1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/Setting;->getHandSpeedParameter()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->setSpeedParameters([F)V

    iget-object v1, p0, Lcom/sec/android/framework/draw/XMLParser;->c:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    iget-object v1, v1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/Setting;->getHandPressureParameter()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->setPressureParameters([F)V

    :goto_3
    iget-object v1, p0, Lcom/sec/android/framework/draw/XMLParser;->c:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    iget-object v1, v1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-virtual {v1, v0, v8}, Lcom/sec/android/framework/draw/AbstractStage;->addSprite(Lcom/sec/android/framework/draw/sprites/AbstractSprite;Z)V

    invoke-virtual {v0, v6}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->setVisible(Z)V

    invoke-virtual {v0, v7}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->setStrokeFixed(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/sec/android/framework/draw/XMLParser;->a:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/sec/android/framework/draw/XMLParser;->b:Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/sec/android/framework/draw/XMLParser;->d:Lcom/sec/android/framework/draw/sprites/AbstractSprite;

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/framework/draw/XMLParser;->c:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    iget-object v1, v1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/Setting;->getTabletSpeedParameter()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->setSpeedParameters([F)V

    iget-object v1, p0, Lcom/sec/android/framework/draw/XMLParser;->c:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    iget-object v1, v1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/Setting;->getTabletPressureParameter()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->setPressureParameters([F)V

    goto :goto_3

    .line 111
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/framework/draw/XMLParser;->f:Ljava/util/Vector;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/framework/draw/XMLParser;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/android/framework/draw/XMLParser;->g:I

    if-gt v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_4
    iput-object v0, p0, Lcom/sec/android/framework/draw/XMLParser;->d:Lcom/sec/android/framework/draw/sprites/AbstractSprite;

    goto/16 :goto_0

    :cond_3
    const-string v0, "point"

    invoke-static {p4, v0}, Lcom/sec/android/framework/draw/XMLParser;->a(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/framework/draw/XMLParser;->b(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    const-string v0, "size"

    invoke-static {p4, v0}, Lcom/sec/android/framework/draw/XMLParser;->a(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/framework/draw/XMLParser;->a(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    const-string v0, "angle"

    invoke-static {p4, v0}, Lcom/sec/android/framework/draw/XMLParser;->a(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v0, "1"

    const-string v4, "visible"

    invoke-static {p4, v4, v0}, Lcom/sec/android/framework/draw/XMLParser;->a(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v4, v8

    :goto_5
    iget-object v0, p0, Lcom/sec/android/framework/draw/XMLParser;->c:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    iget-object v5, v0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->factory:Lcom/sec/android/framework/draw/sprites/ISpriteFactory;

    invoke-virtual {v1, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v1, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v2, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v5, v6, v1, v7, v0}, Lcom/sec/android/framework/draw/sprites/ISpriteFactory;->createImageSprite(FFII)Lcom/sec/android/framework/draw/sprites/ImageSprite;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/framework/draw/XMLParser;->c:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    iget-object v0, v0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-virtual {v0, v2, v8}, Lcom/sec/android/framework/draw/AbstractStage;->addSprite(Lcom/sec/android/framework/draw/sprites/AbstractSprite;Z)V

    invoke-virtual {v2, v4}, Lcom/sec/android/framework/draw/sprites/ImageSprite;->setVisible(Z)V

    iget-object v0, p0, Lcom/sec/android/framework/draw/XMLParser;->f:Ljava/util/Vector;

    iget v1, p0, Lcom/sec/android/framework/draw/XMLParser;->g:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p0, Lcom/sec/android/framework/draw/XMLParser;->f:Ljava/util/Vector;

    iget v4, p0, Lcom/sec/android/framework/draw/XMLParser;->g:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v1, v1

    invoke-static {v0, v8, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/android/framework/draw/sprites/ImageSprite;->initializeImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/framework/draw/sprites/ImageSprite;->setAngle(I)V

    iget v0, p0, Lcom/sec/android/framework/draw/XMLParser;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/framework/draw/XMLParser;->g:I

    move-object v0, v2

    goto/16 :goto_4

    .line 114
    :pswitch_4
    const-string v0, "id"

    invoke-static {p4, v0}, Lcom/sec/android/framework/draw/XMLParser;->a(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "createCommand"

    invoke-virtual {p2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/framework/draw/XMLParser;->c:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    iget-object v1, v1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/AbstractStage;->getUndoList()Ljava/util/LinkedList;

    move-result-object v1

    new-instance v2, Lcom/sec/android/framework/draw/sprites/commands/SpriteCreateCommand;

    iget-object v3, p0, Lcom/sec/android/framework/draw/XMLParser;->c:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    iget-object v3, v3, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-virtual {v3}, Lcom/sec/android/framework/draw/AbstractStage;->getSprites()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/AbstractSprite;

    iget-object v3, p0, Lcom/sec/android/framework/draw/XMLParser;->c:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    iget-object v3, v3, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-direct {v2, v0, v3}, Lcom/sec/android/framework/draw/sprites/commands/SpriteCreateCommand;-><init>(Lcom/sec/android/framework/draw/sprites/AbstractSprite;Lcom/sec/android/framework/draw/AbstractStage;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    move v4, v9

    goto/16 :goto_5

    :cond_5
    move v7, v8

    goto/16 :goto_2

    :cond_6
    move v6, v9

    goto/16 :goto_1

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
