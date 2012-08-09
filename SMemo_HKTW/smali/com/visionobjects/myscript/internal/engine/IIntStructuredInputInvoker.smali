.class public final Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker;
.super Lcom/visionobjects/myscript/internal/engine/IStructuredInputInvoker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddCharacterParameters;,
        Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;,
        Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStrokeParameters;,
        Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetMultipleGuideLines3Parameters;,
        Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetMultipleGuideLines2Parameters;,
        Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetMultipleGuideLines1Parameters;,
        Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetGuideLines3Parameters;,
        Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetGuideLines2Parameters;,
        Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetGuideLines1Parameters;,
        Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetGuideBoxParameters;,
        Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetCoordinateResolutionParameters;
    }
.end annotation


# static fields
.field private static final ADD_CHARACTER:I = 0xf

.field private static final ADD_STROKE:I = 0xd

.field private static final ADD_STROKE_2:I = 0xe

#the value of this static final field might be set in the static constructor
.field private static final IFACE:I = 0x0

.field private static final SET_COORDINATE_RESOLUTION:I = 0x5

.field private static final SET_GUIDE_BOX:I = 0x6

.field private static final SET_GUIDE_LINES_1:I = 0x7

.field private static final SET_GUIDE_LINES_2:I = 0x8

.field private static final SET_GUIDE_LINES_3:I = 0x9

.field private static final SET_MULTIPLE_GUIDE_LINES_1:I = 0xa

.field private static final SET_MULTIPLE_GUIDE_LINES_2:I = 0xb

.field private static final SET_MULTIPLE_GUIDE_LINES_3:I = 0xc


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/visionobjects/myscript/internal/engine/VO_ENGINE_I;->VO_ILongStructuredInput:Lcom/visionobjects/myscript/internal/engine/VO_ENGINE_I;

    invoke-virtual {v0}, Lcom/visionobjects/myscript/internal/engine/VO_ENGINE_I;->getValue()I

    move-result v0

    sput v0, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker;->IFACE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/visionobjects/myscript/internal/engine/IStructuredInputInvoker;-><init>()V

    return-void
.end method


# virtual methods
.method public final addCharacter(Lcom/visionobjects/myscript/engine/EngineObject;Lcom/visionobjects/myscript/engine/EngineObject;IIII)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalStateException;,
            Lcom/visionobjects/myscript/engine/InvalidOperationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "invalid target: null is not allowed"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "invalid character: null is not allowed"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-nez p3, :cond_2

    if-nez p4, :cond_2

    if-nez p5, :cond_2

    if-eqz p6, :cond_3

    :cond_2
    if-gtz p5, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid width: must be > 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    if-nez p3, :cond_4

    if-nez p4, :cond_4

    if-nez p5, :cond_4

    if-eqz p6, :cond_5

    :cond_4
    if-gtz p6, :cond_5

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid width: must be > 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-static {p1, p2}, Lcom/visionobjects/myscript/internal/engine/Library;->checkEngine(Lcom/visionobjects/myscript/engine/IEngineObject;Lcom/visionobjects/myscript/engine/IEngineObject;)V

    invoke-virtual {p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getEngine()Lcom/visionobjects/myscript/engine/Engine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/visionobjects/myscript/engine/Engine;->getNativeReference()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getNativeReference()J

    move-result-wide v8

    invoke-virtual {p2}, Lcom/visionobjects/myscript/engine/EngineObject;->getNativeReference()J

    move-result-wide v10

    sget v4, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker;->IFACE:I

    invoke-static {v2, v3, v8, v9, v4}, Lcom/visionobjects/myscript/internal/engine/Library;->getInterface(JJI)J

    move-result-wide v4

    new-instance v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddCharacterParameters;

    invoke-direct {v7}, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddCharacterParameters;-><init>()V

    iget-object v6, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddCharacterParameters;->engine:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v6, v2, v3}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v6, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddCharacterParameters;->target:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v6, v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v6, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddCharacterParameters;->character:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v6, v10, v11}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v6, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddCharacterParameters;->x:Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;

    invoke-virtual {v6, p3}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;->set(I)V

    iget-object v6, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddCharacterParameters;->y:Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;

    move-object v0, v6

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;->set(I)V

    iget-object v6, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddCharacterParameters;->width:Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;

    move-object v0, v6

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;->set(I)V

    iget-object v6, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddCharacterParameters;->height:Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;

    move-object v0, v6

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;->set(I)V

    const/16 v6, 0xf

    invoke-static/range {v2 .. v7}, Lcom/visionobjects/myscript/internal/engine/Library;->invokeBooleanInterfaceFunction(JJILcom/visionobjects/myscript/internal/engine/ParameterList;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v2, v3}, Lcom/visionobjects/myscript/internal/engine/Library;->getError(J)V

    :cond_6
    return-void
.end method

.method public addStroke(Lcom/visionobjects/myscript/engine/EngineObject;Lcom/visionobjects/myscript/engine/IIntStroke;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/visionobjects/myscript/engine/InvalidOperationException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "invalid target: null is not allowed"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "invalid stroke: null is not allowed"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getEngine()Lcom/visionobjects/myscript/engine/Engine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/visionobjects/myscript/engine/Engine;->getNativeReference()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getNativeReference()J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/visionobjects/myscript/engine/IIntStroke;->getPointCount()I

    move-result v6

    sget v4, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker;->IFACE:I

    invoke-static {v2, v3, v8, v9, v4}, Lcom/visionobjects/myscript/internal/engine/Library;->getInterface(JJI)J

    move-result-wide v4

    new-instance v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStrokeParameters;

    invoke-direct {v7}, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStrokeParameters;-><init>()V

    mul-int/lit8 v10, v6, 0x2

    invoke-static {v10}, Lcom/visionobjects/myscript/internal/engine/Int32;->newArray(I)[Lcom/visionobjects/myscript/internal/engine/Int32;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v15, v12

    move v12, v11

    move v11, v15

    :goto_0
    if-ge v11, v6, :cond_2

    add-int/lit8 v13, v12, 0x1

    aget-object v12, v10, v12

    move-object/from16 v0, p2

    move v1, v11

    invoke-interface {v0, v1}, Lcom/visionobjects/myscript/engine/IIntStroke;->getX(I)I

    move-result v14

    invoke-virtual {v12, v14}, Lcom/visionobjects/myscript/internal/engine/Int32;->set(I)V

    add-int/lit8 v12, v13, 0x1

    aget-object v13, v10, v13

    move-object/from16 v0, p2

    move v1, v11

    invoke-interface {v0, v1}, Lcom/visionobjects/myscript/engine/IIntStroke;->getY(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/visionobjects/myscript/internal/engine/Int32;->set(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    iget-object v11, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStrokeParameters;->engine:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v11, v2, v3}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v11, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStrokeParameters;->target:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v11, v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStrokeParameters;->x:Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;

    const/4 v9, 0x0

    aget-object v9, v10, v9

    invoke-virtual {v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;->set(Lcom/visionobjects/myscript/internal/engine/NativeType;)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStrokeParameters;->xByteStride:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStrokeParameters;->y:Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;

    const/4 v9, 0x1

    aget-object v9, v10, v9

    invoke-virtual {v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;->set(Lcom/visionobjects/myscript/internal/engine/NativeType;)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStrokeParameters;->yByteStride:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStrokeParameters;->pointCount:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    invoke-virtual {v8, v6}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    const/16 v6, 0xd

    invoke-static/range {v2 .. v7}, Lcom/visionobjects/myscript/internal/engine/Library;->invokeBooleanInterfaceFunction(JJILcom/visionobjects/myscript/internal/engine/ParameterList;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v2, v3}, Lcom/visionobjects/myscript/internal/engine/Library;->getError(J)V

    :cond_3
    return-void
.end method

.method public addStroke(Lcom/visionobjects/myscript/engine/EngineObject;Lcom/visionobjects/myscript/engine/IIntStroke;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/visionobjects/myscript/engine/InvalidOperationException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "invalid target: null is not allowed"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "invalid stroke: null is not allowed"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-gez p3, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid stroke order: must be positive"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getEngine()Lcom/visionobjects/myscript/engine/Engine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/visionobjects/myscript/engine/Engine;->getNativeReference()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getNativeReference()J

    move-result-wide v8

    sget v4, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker;->IFACE:I

    invoke-static {v2, v3, v8, v9, v4}, Lcom/visionobjects/myscript/internal/engine/Library;->getInterface(JJI)J

    move-result-wide v4

    new-instance v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;

    invoke-direct {v7}, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;-><init>()V

    invoke-interface/range {p2 .. p2}, Lcom/visionobjects/myscript/engine/IIntStroke;->getPointCount()I

    move-result v6

    mul-int/lit8 v10, v6, 0x2

    invoke-static {v10}, Lcom/visionobjects/myscript/internal/engine/Int32;->newArray(I)[Lcom/visionobjects/myscript/internal/engine/Int32;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v15, v12

    move v12, v11

    move v11, v15

    :goto_0
    if-ge v11, v6, :cond_3

    add-int/lit8 v13, v12, 0x1

    aget-object v12, v10, v12

    move-object/from16 v0, p2

    move v1, v11

    invoke-interface {v0, v1}, Lcom/visionobjects/myscript/engine/IIntStroke;->getX(I)I

    move-result v14

    invoke-virtual {v12, v14}, Lcom/visionobjects/myscript/internal/engine/Int32;->set(I)V

    add-int/lit8 v12, v13, 0x1

    aget-object v13, v10, v13

    move-object/from16 v0, p2

    move v1, v11

    invoke-interface {v0, v1}, Lcom/visionobjects/myscript/engine/IIntStroke;->getY(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/visionobjects/myscript/internal/engine/Int32;->set(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_3
    iget-object v11, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;->engine:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v11, v2, v3}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v11, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;->target:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v11, v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;->x:Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;

    const/4 v9, 0x0

    aget-object v9, v10, v9

    invoke-virtual {v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;->set(Lcom/visionobjects/myscript/internal/engine/NativeType;)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;->xByteStride:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;->y:Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;

    const/4 v9, 0x1

    aget-object v9, v10, v9

    invoke-virtual {v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;->set(Lcom/visionobjects/myscript/internal/engine/NativeType;)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;->yByteStride:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;->pointCount:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    invoke-virtual {v8, v6}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    iget-object v6, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;->strokeOrder:Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;

    move-object v0, v6

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;->set(I)V

    const/16 v6, 0xe

    invoke-static/range {v2 .. v7}, Lcom/visionobjects/myscript/internal/engine/Library;->invokeBooleanInterfaceFunction(JJILcom/visionobjects/myscript/internal/engine/ParameterList;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v2, v3}, Lcom/visionobjects/myscript/internal/engine/Library;->getError(J)V

    :cond_4
    return-void
.end method

.method public addStroke(Lcom/visionobjects/myscript/engine/EngineObject;[III[IIII)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/visionobjects/myscript/engine/InvalidOperationException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "invalid target: null is not allowed"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "invalid x coordinate array: null is not allowed"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-nez p5, :cond_2

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "invalid y coordinate array: null is not allowed"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    if-gtz p8, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid count: must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    move-object/from16 v0, p2

    array-length v0, v0

    move v2, v0

    move v0, v2

    move/from16 v1, p8

    if-ge v0, v1, :cond_4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid x: not enough elements"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    move-object/from16 v0, p5

    array-length v0, v0

    move v2, v0

    move v0, v2

    move/from16 v1, p8

    if-ge v0, v1, :cond_5

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid y: not enough elements"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    if-ltz p3, :cond_6

    move-object/from16 v0, p2

    array-length v0, v0

    move v2, v0

    move/from16 v0, p3

    move v1, v2

    if-lt v0, v1, :cond_7

    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid xOffset: out of range"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    const/4 v2, 0x1

    move/from16 v0, p4

    move v1, v2

    if-ge v0, v1, :cond_8

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid xStride: out of range"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    const/4 v2, 0x1

    sub-int v2, p8, v2

    mul-int v2, v2, p4

    add-int v2, v2, p3

    move-object/from16 v0, p2

    array-length v0, v0

    move v3, v0

    if-lt v2, v3, :cond_9

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid xOffset, xStride and count combination: out of range"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    if-ltz p6, :cond_a

    move-object/from16 v0, p5

    array-length v0, v0

    move v2, v0

    move/from16 v0, p6

    move v1, v2

    if-lt v0, v1, :cond_b

    :cond_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid yOffset: out of range"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    const/4 v2, 0x1

    move/from16 v0, p7

    move v1, v2

    if-ge v0, v1, :cond_c

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid yStride: out of range"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    const/4 v2, 0x1

    sub-int v2, p8, v2

    mul-int v2, v2, p7

    add-int v2, v2, p6

    move-object/from16 v0, p5

    array-length v0, v0

    move v3, v0

    if-lt v2, v3, :cond_d

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid yOffset, yStride and count combination: out of range"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getEngine()Lcom/visionobjects/myscript/engine/Engine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/visionobjects/myscript/engine/Engine;->getNativeReference()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getNativeReference()J

    move-result-wide v8

    sget v4, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker;->IFACE:I

    invoke-static {v2, v3, v8, v9, v4}, Lcom/visionobjects/myscript/internal/engine/Library;->getInterface(JJI)J

    move-result-wide v4

    new-instance v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStrokeParameters;

    invoke-direct {v7}, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStrokeParameters;-><init>()V

    mul-int/lit8 v6, p8, 0x2

    invoke-static {v6}, Lcom/visionobjects/myscript/internal/engine/Int32;->newArray(I)[Lcom/visionobjects/myscript/internal/engine/Int32;

    move-result-object v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v12, p3

    move v13, v10

    move v10, v11

    move/from16 v11, p6

    :goto_0
    move v0, v10

    move/from16 v1, p8

    if-ge v0, v1, :cond_e

    add-int/lit8 v14, v13, 0x1

    aget-object v13, v6, v13

    aget v15, p2, v12

    invoke-virtual {v13, v15}, Lcom/visionobjects/myscript/internal/engine/Int32;->set(I)V

    add-int/lit8 v13, v14, 0x1

    aget-object v14, v6, v14

    aget v15, p5, v11

    invoke-virtual {v14, v15}, Lcom/visionobjects/myscript/internal/engine/Int32;->set(I)V

    add-int v12, v12, p4

    add-int v11, v11, p7

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_e
    iget-object v10, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStrokeParameters;->engine:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v10, v2, v3}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v10, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStrokeParameters;->target:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v10, v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStrokeParameters;->x:Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;->set(Lcom/visionobjects/myscript/internal/engine/NativeType;)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStrokeParameters;->xByteStride:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStrokeParameters;->y:Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;

    const/4 v9, 0x1

    aget-object v6, v6, v9

    invoke-virtual {v8, v6}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;->set(Lcom/visionobjects/myscript/internal/engine/NativeType;)V

    iget-object v6, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStrokeParameters;->yByteStride:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    iget-object v6, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStrokeParameters;->pointCount:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    move-object v0, v6

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    const/16 v6, 0xd

    invoke-static/range {v2 .. v7}, Lcom/visionobjects/myscript/internal/engine/Library;->invokeBooleanInterfaceFunction(JJILcom/visionobjects/myscript/internal/engine/ParameterList;)Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static {v2, v3}, Lcom/visionobjects/myscript/internal/engine/Library;->getError(J)V

    :cond_f
    return-void
.end method

.method public addStroke(Lcom/visionobjects/myscript/engine/EngineObject;[III[IIIII)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/visionobjects/myscript/engine/InvalidOperationException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "invalid target: null is not allowed"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "invalid x coordinate array: null is not allowed"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-nez p5, :cond_2

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "invalid y coordinate array: null is not allowed"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    if-gtz p8, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid count: must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    move-object/from16 v0, p2

    array-length v0, v0

    move v2, v0

    move v0, v2

    move/from16 v1, p8

    if-ge v0, v1, :cond_4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid x: not enough elements"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    move-object/from16 v0, p5

    array-length v0, v0

    move v2, v0

    move v0, v2

    move/from16 v1, p8

    if-ge v0, v1, :cond_5

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid y: not enough elements"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    if-ltz p3, :cond_6

    move-object/from16 v0, p2

    array-length v0, v0

    move v2, v0

    move/from16 v0, p3

    move v1, v2

    if-lt v0, v1, :cond_7

    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid xOffset: out of range"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    const/4 v2, 0x1

    move/from16 v0, p4

    move v1, v2

    if-ge v0, v1, :cond_8

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid xStride: out of range"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    const/4 v2, 0x1

    sub-int v2, p8, v2

    mul-int v2, v2, p4

    add-int v2, v2, p3

    move-object/from16 v0, p2

    array-length v0, v0

    move v3, v0

    if-lt v2, v3, :cond_9

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid xOffset, xStride and count combination: out of range"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    if-ltz p6, :cond_a

    move-object/from16 v0, p5

    array-length v0, v0

    move v2, v0

    move/from16 v0, p6

    move v1, v2

    if-lt v0, v1, :cond_b

    :cond_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid yOffset: out of range"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    const/4 v2, 0x1

    move/from16 v0, p7

    move v1, v2

    if-ge v0, v1, :cond_c

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid yStride: out of range"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    const/4 v2, 0x1

    sub-int v2, p8, v2

    mul-int v2, v2, p7

    add-int v2, v2, p6

    move-object/from16 v0, p5

    array-length v0, v0

    move v3, v0

    if-lt v2, v3, :cond_d

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid yOffset, yStride and count combination: out of range"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    if-gez p9, :cond_e

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid stroke order: must be positive"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getEngine()Lcom/visionobjects/myscript/engine/Engine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/visionobjects/myscript/engine/Engine;->getNativeReference()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getNativeReference()J

    move-result-wide v8

    sget v4, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker;->IFACE:I

    invoke-static {v2, v3, v8, v9, v4}, Lcom/visionobjects/myscript/internal/engine/Library;->getInterface(JJI)J

    move-result-wide v4

    new-instance v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;

    invoke-direct {v7}, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;-><init>()V

    mul-int/lit8 v6, p8, 0x2

    invoke-static {v6}, Lcom/visionobjects/myscript/internal/engine/Int32;->newArray(I)[Lcom/visionobjects/myscript/internal/engine/Int32;

    move-result-object v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v12, p3

    move v13, v10

    move v10, v11

    move/from16 v11, p6

    :goto_0
    move v0, v10

    move/from16 v1, p8

    if-ge v0, v1, :cond_f

    add-int/lit8 v14, v13, 0x1

    aget-object v13, v6, v13

    aget v15, p2, v12

    invoke-virtual {v13, v15}, Lcom/visionobjects/myscript/internal/engine/Int32;->set(I)V

    add-int/lit8 v13, v14, 0x1

    aget-object v14, v6, v14

    aget v15, p5, v11

    invoke-virtual {v14, v15}, Lcom/visionobjects/myscript/internal/engine/Int32;->set(I)V

    add-int v12, v12, p4

    add-int v11, v11, p7

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_f
    iget-object v10, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;->engine:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v10, v2, v3}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v10, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;->target:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v10, v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;->x:Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;->set(Lcom/visionobjects/myscript/internal/engine/NativeType;)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;->xByteStride:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;->y:Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;

    const/4 v9, 0x1

    aget-object v6, v6, v9

    invoke-virtual {v8, v6}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;->set(Lcom/visionobjects/myscript/internal/engine/NativeType;)V

    iget-object v6, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;->yByteStride:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    iget-object v6, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;->pointCount:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    move-object v0, v6

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    iget-object v6, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;->strokeOrder:Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;

    move-object v0, v6

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;->set(I)V

    const/16 v6, 0xe

    invoke-static/range {v2 .. v7}, Lcom/visionobjects/myscript/internal/engine/Library;->invokeBooleanInterfaceFunction(JJILcom/visionobjects/myscript/internal/engine/ParameterList;)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-static {v2, v3}, Lcom/visionobjects/myscript/internal/engine/Library;->getError(J)V

    :cond_10
    return-void
.end method

.method public addStroke(Lcom/visionobjects/myscript/engine/EngineObject;[II[III)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/visionobjects/myscript/engine/InvalidOperationException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "invalid target: null is not allowed"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "invalid x coordinate array: null is not allowed"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-nez p4, :cond_2

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "invalid y coordinate array: null is not allowed"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    if-gtz p6, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid count: must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    move-object/from16 v0, p2

    array-length v0, v0

    move v2, v0

    move v0, v2

    move/from16 v1, p6

    if-ge v0, v1, :cond_4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid x: not enough elements"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    move-object/from16 v0, p4

    array-length v0, v0

    move v2, v0

    move v0, v2

    move/from16 v1, p6

    if-ge v0, v1, :cond_5

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid y: not enough elements"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    if-ltz p3, :cond_6

    move-object/from16 v0, p2

    array-length v0, v0

    move v2, v0

    move/from16 v0, p3

    move v1, v2

    if-lt v0, v1, :cond_7

    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid xOffset: out of range"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    if-ltz p5, :cond_8

    move-object/from16 v0, p4

    array-length v0, v0

    move v2, v0

    move/from16 v0, p5

    move v1, v2

    if-lt v0, v1, :cond_9

    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid yOffset: out of range"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    add-int v2, p3, p6

    move-object/from16 v0, p2

    array-length v0, v0

    move v3, v0

    if-gt v2, v3, :cond_a

    add-int v2, p5, p6

    move-object/from16 v0, p4

    array-length v0, v0

    move v3, v0

    if-le v2, v3, :cond_b

    :cond_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid count: out of range"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getEngine()Lcom/visionobjects/myscript/engine/Engine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/visionobjects/myscript/engine/Engine;->getNativeReference()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getNativeReference()J

    move-result-wide v8

    sget v4, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker;->IFACE:I

    invoke-static {v2, v3, v8, v9, v4}, Lcom/visionobjects/myscript/internal/engine/Library;->getInterface(JJI)J

    move-result-wide v4

    new-instance v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStrokeParameters;

    invoke-direct {v7}, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStrokeParameters;-><init>()V

    mul-int/lit8 v6, p6, 0x2

    invoke-static {v6}, Lcom/visionobjects/myscript/internal/engine/Int32;->newArray(I)[Lcom/visionobjects/myscript/internal/engine/Int32;

    move-result-object v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v14, v11

    move v11, v10

    move v10, v14

    :goto_0
    move v0, v10

    move/from16 v1, p6

    if-ge v0, v1, :cond_c

    add-int/lit8 v12, v11, 0x1

    aget-object v11, v6, v11

    add-int v13, v10, p3

    aget v13, p2, v13

    invoke-virtual {v11, v13}, Lcom/visionobjects/myscript/internal/engine/Int32;->set(I)V

    add-int/lit8 v11, v12, 0x1

    aget-object v12, v6, v12

    add-int v13, v10, p5

    aget v13, p4, v13

    invoke-virtual {v12, v13}, Lcom/visionobjects/myscript/internal/engine/Int32;->set(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_c
    iget-object v10, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStrokeParameters;->engine:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v10, v2, v3}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v10, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStrokeParameters;->target:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v10, v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStrokeParameters;->x:Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;->set(Lcom/visionobjects/myscript/internal/engine/NativeType;)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStrokeParameters;->xByteStride:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStrokeParameters;->y:Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;

    const/4 v9, 0x1

    aget-object v6, v6, v9

    invoke-virtual {v8, v6}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;->set(Lcom/visionobjects/myscript/internal/engine/NativeType;)V

    iget-object v6, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStrokeParameters;->yByteStride:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    iget-object v6, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStrokeParameters;->pointCount:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    move-object v0, v6

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    const/16 v6, 0xd

    invoke-static/range {v2 .. v7}, Lcom/visionobjects/myscript/internal/engine/Library;->invokeBooleanInterfaceFunction(JJILcom/visionobjects/myscript/internal/engine/ParameterList;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {v2, v3}, Lcom/visionobjects/myscript/internal/engine/Library;->getError(J)V

    :cond_d
    return-void
.end method

.method public addStroke(Lcom/visionobjects/myscript/engine/EngineObject;[II[IIII)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/visionobjects/myscript/engine/InvalidOperationException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "invalid target: null is not allowed"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "invalid x coordinate array: null is not allowed"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-nez p4, :cond_2

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "invalid y coordinate array: null is not allowed"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    if-gtz p6, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid count: must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    move-object/from16 v0, p2

    array-length v0, v0

    move v2, v0

    move v0, v2

    move/from16 v1, p6

    if-ge v0, v1, :cond_4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid x: not enough elements"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    move-object/from16 v0, p4

    array-length v0, v0

    move v2, v0

    move v0, v2

    move/from16 v1, p6

    if-ge v0, v1, :cond_5

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid y: not enough elements"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    if-ltz p3, :cond_6

    move-object/from16 v0, p2

    array-length v0, v0

    move v2, v0

    move/from16 v0, p3

    move v1, v2

    if-lt v0, v1, :cond_7

    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid xOffset: out of range"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    if-ltz p5, :cond_8

    move-object/from16 v0, p4

    array-length v0, v0

    move v2, v0

    move/from16 v0, p5

    move v1, v2

    if-lt v0, v1, :cond_9

    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid yOffset: out of range"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    add-int v2, p3, p6

    move-object/from16 v0, p2

    array-length v0, v0

    move v3, v0

    if-gt v2, v3, :cond_a

    add-int v2, p5, p6

    move-object/from16 v0, p4

    array-length v0, v0

    move v3, v0

    if-le v2, v3, :cond_b

    :cond_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid count: out of range"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    if-gez p7, :cond_c

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid stroke order: must be positive"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getEngine()Lcom/visionobjects/myscript/engine/Engine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/visionobjects/myscript/engine/Engine;->getNativeReference()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getNativeReference()J

    move-result-wide v8

    sget v4, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker;->IFACE:I

    invoke-static {v2, v3, v8, v9, v4}, Lcom/visionobjects/myscript/internal/engine/Library;->getInterface(JJI)J

    move-result-wide v4

    new-instance v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;

    invoke-direct {v7}, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;-><init>()V

    mul-int/lit8 v6, p6, 0x2

    invoke-static {v6}, Lcom/visionobjects/myscript/internal/engine/Int32;->newArray(I)[Lcom/visionobjects/myscript/internal/engine/Int32;

    move-result-object v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v14, v11

    move v11, v10

    move v10, v14

    :goto_0
    move v0, v10

    move/from16 v1, p6

    if-ge v0, v1, :cond_d

    add-int/lit8 v12, v11, 0x1

    aget-object v11, v6, v11

    add-int v13, v10, p3

    aget v13, p2, v13

    invoke-virtual {v11, v13}, Lcom/visionobjects/myscript/internal/engine/Int32;->set(I)V

    add-int/lit8 v11, v12, 0x1

    aget-object v12, v6, v12

    add-int v13, v10, p5

    aget v13, p4, v13

    invoke-virtual {v12, v13}, Lcom/visionobjects/myscript/internal/engine/Int32;->set(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_d
    iget-object v10, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;->engine:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v10, v2, v3}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v10, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;->target:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v10, v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;->x:Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;->set(Lcom/visionobjects/myscript/internal/engine/NativeType;)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;->xByteStride:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;->y:Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;

    const/4 v9, 0x1

    aget-object v6, v6, v9

    invoke-virtual {v8, v6}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;->set(Lcom/visionobjects/myscript/internal/engine/NativeType;)V

    iget-object v6, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;->yByteStride:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    iget-object v6, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;->pointCount:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    move-object v0, v6

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    iget-object v6, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;->strokeOrder:Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;

    move-object v0, v6

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;->set(I)V

    const/16 v6, 0xe

    invoke-static/range {v2 .. v7}, Lcom/visionobjects/myscript/internal/engine/Library;->invokeBooleanInterfaceFunction(JJILcom/visionobjects/myscript/internal/engine/ParameterList;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-static {v2, v3}, Lcom/visionobjects/myscript/internal/engine/Library;->getError(J)V

    :cond_e
    return-void
.end method

.method public addStroke(Lcom/visionobjects/myscript/engine/EngineObject;[I[I)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/visionobjects/myscript/engine/InvalidOperationException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "invalid target: null is not allowed"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "invalid x coordinate array: null is not allowed"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-nez p3, :cond_2

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "invalid y coordinate array: null is not allowed"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object/from16 v0, p2

    array-length v0, v0

    move v1, v0

    move-object/from16 v0, p3

    array-length v0, v0

    move v2, v0

    if-eq v1, v2, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid x and y coordinate arrays: must have the same length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getEngine()Lcom/visionobjects/myscript/engine/Engine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/visionobjects/myscript/engine/Engine;->getNativeReference()J

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getNativeReference()J

    move-result-wide v7

    sget v3, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker;->IFACE:I

    invoke-static {v1, v2, v7, v8, v3}, Lcom/visionobjects/myscript/internal/engine/Library;->getInterface(JJI)J

    move-result-wide v3

    new-instance v6, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStrokeParameters;

    invoke-direct {v6}, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStrokeParameters;-><init>()V

    move-object/from16 v0, p2

    array-length v0, v0

    move v5, v0

    mul-int/lit8 v9, v5, 0x2

    invoke-static {v9}, Lcom/visionobjects/myscript/internal/engine/Int32;->newArray(I)[Lcom/visionobjects/myscript/internal/engine/Int32;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v14, v11

    move v11, v10

    move v10, v14

    :goto_0
    if-ge v10, v5, :cond_4

    add-int/lit8 v12, v11, 0x1

    aget-object v11, v9, v11

    aget v13, p2, v10

    invoke-virtual {v11, v13}, Lcom/visionobjects/myscript/internal/engine/Int32;->set(I)V

    add-int/lit8 v11, v12, 0x1

    aget-object v12, v9, v12

    aget v13, p3, v10

    invoke-virtual {v12, v13}, Lcom/visionobjects/myscript/internal/engine/Int32;->set(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_4
    iget-object v10, v6, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStrokeParameters;->engine:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v10, v1, v2}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v10, v6, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStrokeParameters;->target:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v10, v7, v8}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v7, v6, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStrokeParameters;->x:Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;

    const/4 v8, 0x0

    aget-object v8, v9, v8

    invoke-virtual {v7, v8}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;->set(Lcom/visionobjects/myscript/internal/engine/NativeType;)V

    iget-object v7, v6, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStrokeParameters;->xByteStride:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    iget-object v7, v6, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStrokeParameters;->y:Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;

    const/4 v8, 0x1

    aget-object v8, v9, v8

    invoke-virtual {v7, v8}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;->set(Lcom/visionobjects/myscript/internal/engine/NativeType;)V

    iget-object v7, v6, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStrokeParameters;->yByteStride:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    iget-object v7, v6, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStrokeParameters;->pointCount:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    invoke-virtual {v7, v5}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    const/16 v5, 0xd

    invoke-static/range {v1 .. v6}, Lcom/visionobjects/myscript/internal/engine/Library;->invokeBooleanInterfaceFunction(JJILcom/visionobjects/myscript/internal/engine/ParameterList;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v1, v2}, Lcom/visionobjects/myscript/internal/engine/Library;->getError(J)V

    :cond_5
    return-void
.end method

.method public addStroke(Lcom/visionobjects/myscript/engine/EngineObject;[I[II)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/visionobjects/myscript/engine/InvalidOperationException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "invalid target: null is not allowed"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "invalid x coordinate array: null is not allowed"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-nez p3, :cond_2

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "invalid y coordinate array: null is not allowed"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v0, p2

    array-length v0, v0

    move v2, v0

    move-object/from16 v0, p3

    array-length v0, v0

    move v3, v0

    if-eq v2, v3, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid x and y coordinate arrays: must have the same length"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    if-gez p4, :cond_4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid stroke order: must be positive"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getEngine()Lcom/visionobjects/myscript/engine/Engine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/visionobjects/myscript/engine/Engine;->getNativeReference()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getNativeReference()J

    move-result-wide v8

    sget v4, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker;->IFACE:I

    invoke-static {v2, v3, v8, v9, v4}, Lcom/visionobjects/myscript/internal/engine/Library;->getInterface(JJI)J

    move-result-wide v4

    new-instance v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;

    invoke-direct {v7}, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;-><init>()V

    move-object/from16 v0, p2

    array-length v0, v0

    move v6, v0

    mul-int/lit8 v10, v6, 0x2

    invoke-static {v10}, Lcom/visionobjects/myscript/internal/engine/Int32;->newArray(I)[Lcom/visionobjects/myscript/internal/engine/Int32;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v15, v12

    move v12, v11

    move v11, v15

    :goto_0
    if-ge v11, v6, :cond_5

    add-int/lit8 v13, v12, 0x1

    aget-object v12, v10, v12

    aget v14, p2, v11

    invoke-virtual {v12, v14}, Lcom/visionobjects/myscript/internal/engine/Int32;->set(I)V

    add-int/lit8 v12, v13, 0x1

    aget-object v13, v10, v13

    aget v14, p3, v11

    invoke-virtual {v13, v14}, Lcom/visionobjects/myscript/internal/engine/Int32;->set(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_5
    iget-object v11, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;->engine:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v11, v2, v3}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v11, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;->target:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v11, v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;->x:Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;

    const/4 v9, 0x0

    aget-object v9, v10, v9

    invoke-virtual {v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;->set(Lcom/visionobjects/myscript/internal/engine/NativeType;)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;->xByteStride:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;->y:Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;

    const/4 v9, 0x1

    aget-object v9, v10, v9

    invoke-virtual {v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;->set(Lcom/visionobjects/myscript/internal/engine/NativeType;)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;->yByteStride:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;->pointCount:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    invoke-virtual {v8, v6}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    iget-object v6, v7, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$AddStroke2Parameters;->strokeOrder:Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;

    move-object v0, v6

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;->set(I)V

    const/16 v6, 0xe

    invoke-static/range {v2 .. v7}, Lcom/visionobjects/myscript/internal/engine/Library;->invokeBooleanInterfaceFunction(JJILcom/visionobjects/myscript/internal/engine/ParameterList;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v2, v3}, Lcom/visionobjects/myscript/internal/engine/Library;->getError(J)V

    :cond_6
    return-void
.end method

.method public final setCoordinateResolution(Lcom/visionobjects/myscript/engine/EngineObject;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalStateException;,
            Lcom/visionobjects/myscript/engine/InvalidOperationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "invalid target: null is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gtz p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid resolution: must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getEngine()Lcom/visionobjects/myscript/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/myscript/engine/Engine;->getNativeReference()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getNativeReference()J

    move-result-wide v6

    sget v2, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker;->IFACE:I

    invoke-static {v0, v1, v6, v7, v2}, Lcom/visionobjects/myscript/internal/engine/Library;->getInterface(JJI)J

    move-result-wide v2

    new-instance v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetCoordinateResolutionParameters;

    invoke-direct {v5}, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetCoordinateResolutionParameters;-><init>()V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetCoordinateResolutionParameters;->engine:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v4, v0, v1}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetCoordinateResolutionParameters;->target:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v4, v6, v7}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetCoordinateResolutionParameters;->resolution:Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;

    invoke-virtual {v4, p2}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;->set(I)V

    const/4 v4, 0x5

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/myscript/internal/engine/Library;->invokeBooleanInterfaceFunction(JJILcom/visionobjects/myscript/internal/engine/ParameterList;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Lcom/visionobjects/myscript/internal/engine/Library;->getError(J)V

    :cond_2
    return-void
.end method

.method public final setGuideBox(Lcom/visionobjects/myscript/engine/EngineObject;IIII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalStateException;,
            Lcom/visionobjects/myscript/engine/InvalidOperationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "invalid target: null is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gtz p4, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid width: must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gtz p5, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid height: must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getEngine()Lcom/visionobjects/myscript/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/myscript/engine/Engine;->getNativeReference()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getNativeReference()J

    move-result-wide v6

    sget v2, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker;->IFACE:I

    invoke-static {v0, v1, v6, v7, v2}, Lcom/visionobjects/myscript/internal/engine/Library;->getInterface(JJI)J

    move-result-wide v2

    new-instance v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetGuideBoxParameters;

    invoke-direct {v5}, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetGuideBoxParameters;-><init>()V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetGuideBoxParameters;->engine:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v4, v0, v1}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetGuideBoxParameters;->target:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v4, v6, v7}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetGuideBoxParameters;->x:Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;

    invoke-virtual {v4, p2}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;->set(I)V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetGuideBoxParameters;->y:Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;

    invoke-virtual {v4, p3}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;->set(I)V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetGuideBoxParameters;->width:Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;

    invoke-virtual {v4, p4}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;->set(I)V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetGuideBoxParameters;->height:Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;

    invoke-virtual {v4, p5}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;->set(I)V

    const/4 v4, 0x6

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/myscript/internal/engine/Library;->invokeBooleanInterfaceFunction(JJILcom/visionobjects/myscript/internal/engine/ParameterList;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Lcom/visionobjects/myscript/internal/engine/Library;->getError(J)V

    :cond_3
    return-void
.end method

.method public final setGuideLines(Lcom/visionobjects/myscript/engine/EngineObject;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "invalid target: null is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getEngine()Lcom/visionobjects/myscript/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/myscript/engine/Engine;->getNativeReference()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getNativeReference()J

    move-result-wide v6

    sget v2, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker;->IFACE:I

    invoke-static {v0, v1, v6, v7, v2}, Lcom/visionobjects/myscript/internal/engine/Library;->getInterface(JJI)J

    move-result-wide v2

    new-instance v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetGuideLines1Parameters;

    invoke-direct {v5}, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetGuideLines1Parameters;-><init>()V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetGuideLines1Parameters;->engine:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v4, v0, v1}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetGuideLines1Parameters;->target:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v4, v6, v7}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetGuideLines1Parameters;->baseline:Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;

    invoke-virtual {v4, p2}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;->set(I)V

    const/4 v4, 0x7

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/myscript/internal/engine/Library;->invokeBooleanInterfaceFunction(JJILcom/visionobjects/myscript/internal/engine/ParameterList;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Lcom/visionobjects/myscript/internal/engine/Library;->getError(J)V

    :cond_1
    return-void
.end method

.method public final setGuideLines(Lcom/visionobjects/myscript/engine/EngineObject;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "invalid target: null is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gtz p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid toMidline: must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getEngine()Lcom/visionobjects/myscript/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/myscript/engine/Engine;->getNativeReference()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getNativeReference()J

    move-result-wide v6

    sget v2, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker;->IFACE:I

    invoke-static {v0, v1, v6, v7, v2}, Lcom/visionobjects/myscript/internal/engine/Library;->getInterface(JJI)J

    move-result-wide v2

    new-instance v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetGuideLines2Parameters;

    invoke-direct {v5}, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetGuideLines2Parameters;-><init>()V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetGuideLines2Parameters;->engine:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v4, v0, v1}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetGuideLines2Parameters;->target:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v4, v6, v7}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetGuideLines2Parameters;->baseline:Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;

    invoke-virtual {v4, p2}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;->set(I)V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetGuideLines2Parameters;->toMidline:Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;

    invoke-virtual {v4, p3}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;->set(I)V

    const/16 v4, 0x8

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/myscript/internal/engine/Library;->invokeBooleanInterfaceFunction(JJILcom/visionobjects/myscript/internal/engine/ParameterList;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Lcom/visionobjects/myscript/internal/engine/Library;->getError(J)V

    :cond_2
    return-void
.end method

.method public final setGuideLines(Lcom/visionobjects/myscript/engine/EngineObject;IIII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-gtz p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid toMidline: must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gtz p4, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid toAscender: must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gt p4, p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid toAscender: must be > toMidline"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-gtz p5, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid toDescender: must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getEngine()Lcom/visionobjects/myscript/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/myscript/engine/Engine;->getNativeReference()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getNativeReference()J

    move-result-wide v6

    sget v2, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker;->IFACE:I

    invoke-static {v0, v1, v6, v7, v2}, Lcom/visionobjects/myscript/internal/engine/Library;->getInterface(JJI)J

    move-result-wide v2

    new-instance v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetGuideLines3Parameters;

    invoke-direct {v5}, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetGuideLines3Parameters;-><init>()V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetGuideLines3Parameters;->engine:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v4, v0, v1}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetGuideLines3Parameters;->target:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v4, v6, v7}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetGuideLines3Parameters;->baseline:Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;

    invoke-virtual {v4, p2}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;->set(I)V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetGuideLines3Parameters;->toMidline:Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;

    invoke-virtual {v4, p3}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;->set(I)V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetGuideLines3Parameters;->toAscender:Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;

    invoke-virtual {v4, p4}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;->set(I)V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetGuideLines3Parameters;->toDescender:Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;

    invoke-virtual {v4, p5}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;->set(I)V

    const/16 v4, 0x9

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/myscript/internal/engine/Library;->invokeBooleanInterfaceFunction(JJILcom/visionobjects/myscript/internal/engine/ParameterList;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v0, v1}, Lcom/visionobjects/myscript/internal/engine/Library;->getError(J)V

    :cond_4
    return-void
.end method

.method public final setMultipleGuideLines(Lcom/visionobjects/myscript/engine/EngineObject;III)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "invalid target: null is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    if-gt p2, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid count: must be > 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gtz p4, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid gap: must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getEngine()Lcom/visionobjects/myscript/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/myscript/engine/Engine;->getNativeReference()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getNativeReference()J

    move-result-wide v6

    sget v2, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker;->IFACE:I

    invoke-static {v0, v1, v6, v7, v2}, Lcom/visionobjects/myscript/internal/engine/Library;->getInterface(JJI)J

    move-result-wide v2

    new-instance v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetMultipleGuideLines1Parameters;

    invoke-direct {v5}, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetMultipleGuideLines1Parameters;-><init>()V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetMultipleGuideLines1Parameters;->engine:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v4, v0, v1}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetMultipleGuideLines1Parameters;->target:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v4, v6, v7}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetMultipleGuideLines1Parameters;->count:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    invoke-virtual {v4, p2}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetMultipleGuideLines1Parameters;->firstBaseline:Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;

    invoke-virtual {v4, p3}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;->set(I)V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetMultipleGuideLines1Parameters;->gap:Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;

    invoke-virtual {v4, p4}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;->set(I)V

    const/16 v4, 0xa

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/myscript/internal/engine/Library;->invokeBooleanInterfaceFunction(JJILcom/visionobjects/myscript/internal/engine/ParameterList;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Lcom/visionobjects/myscript/internal/engine/Library;->getError(J)V

    :cond_3
    return-void
.end method

.method public final setMultipleGuideLines(Lcom/visionobjects/myscript/engine/EngineObject;IIII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "invalid target: null is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    if-gt p2, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid count: must be > 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gtz p4, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid gap: must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-gtz p5, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid toMidline: must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-lt p5, p4, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid toMidline: must be < gap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getEngine()Lcom/visionobjects/myscript/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/myscript/engine/Engine;->getNativeReference()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getNativeReference()J

    move-result-wide v6

    sget v2, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker;->IFACE:I

    invoke-static {v0, v1, v6, v7, v2}, Lcom/visionobjects/myscript/internal/engine/Library;->getInterface(JJI)J

    move-result-wide v2

    new-instance v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetMultipleGuideLines2Parameters;

    invoke-direct {v5}, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetMultipleGuideLines2Parameters;-><init>()V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetMultipleGuideLines2Parameters;->engine:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v4, v0, v1}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetMultipleGuideLines2Parameters;->target:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v4, v6, v7}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetMultipleGuideLines2Parameters;->count:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    invoke-virtual {v4, p2}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetMultipleGuideLines2Parameters;->firstBaseline:Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;

    invoke-virtual {v4, p3}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;->set(I)V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetMultipleGuideLines2Parameters;->gap:Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;

    invoke-virtual {v4, p4}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;->set(I)V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetMultipleGuideLines2Parameters;->toMidline:Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;

    invoke-virtual {v4, p5}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;->set(I)V

    const/16 v4, 0xb

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/myscript/internal/engine/Library;->invokeBooleanInterfaceFunction(JJILcom/visionobjects/myscript/internal/engine/ParameterList;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v0, v1}, Lcom/visionobjects/myscript/internal/engine/Library;->getError(J)V

    :cond_5
    return-void
.end method

.method public final setMultipleGuideLines(Lcom/visionobjects/myscript/engine/EngineObject;IIIIII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "invalid target: null is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    if-gt p2, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid count: must be > 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gtz p4, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid gap: must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-gtz p5, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid toMidline: must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-lt p5, p4, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid toMidline: must be < gap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-gtz p6, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid toAscender: must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-gt p6, p5, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid toAscender: must be > toMidline"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-gtz p7, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid toDescender: must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    sub-int v0, p4, p6

    if-lt p7, v0, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid gap/toAscender/toDescender combination: gap - toAscender must be > toDescender"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-virtual {p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getEngine()Lcom/visionobjects/myscript/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/myscript/engine/Engine;->getNativeReference()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getNativeReference()J

    move-result-wide v6

    sget v2, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker;->IFACE:I

    invoke-static {v0, v1, v6, v7, v2}, Lcom/visionobjects/myscript/internal/engine/Library;->getInterface(JJI)J

    move-result-wide v2

    new-instance v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetMultipleGuideLines3Parameters;

    invoke-direct {v5}, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetMultipleGuideLines3Parameters;-><init>()V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetMultipleGuideLines3Parameters;->engine:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v4, v0, v1}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetMultipleGuideLines3Parameters;->target:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v4, v6, v7}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetMultipleGuideLines3Parameters;->count:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    invoke-virtual {v4, p2}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetMultipleGuideLines3Parameters;->firstBaseline:Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;

    invoke-virtual {v4, p3}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;->set(I)V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetMultipleGuideLines3Parameters;->gap:Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;

    invoke-virtual {v4, p4}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;->set(I)V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetMultipleGuideLines3Parameters;->toMidline:Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;

    invoke-virtual {v4, p5}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;->set(I)V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetMultipleGuideLines3Parameters;->toAscender:Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;

    invoke-virtual {v4, p6}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;->set(I)V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/engine/IIntStructuredInputInvoker$SetMultipleGuideLines3Parameters;->toDescender:Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;

    invoke-virtual {v4, p7}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Int32;->set(I)V

    const/16 v4, 0xc

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/myscript/internal/engine/Library;->invokeBooleanInterfaceFunction(JJILcom/visionobjects/myscript/internal/engine/ParameterList;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {v0, v1}, Lcom/visionobjects/myscript/internal/engine/Library;->getError(J)V

    :cond_9
    return-void
.end method
