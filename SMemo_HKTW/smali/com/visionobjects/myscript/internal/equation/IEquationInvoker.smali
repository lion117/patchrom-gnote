.class public final Lcom/visionobjects/myscript/internal/equation/IEquationInvoker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$HasGetParseTreeParameters;,
        Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddCharacterParameters;,
        Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddStrokeParameters;,
        Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$ClearParameters;
    }
.end annotation


# static fields
.field private static final ADD_CHARACTER:I = 0x2

.field private static final ADD_STROKE:I = 0x1

.field private static final CLEAR:I = 0x0

.field private static final GET_PARSE_TREE:I = 0x4

.field private static final HAS_PARSE_TREE:I = 0x3

.field private static final IFACE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/visionobjects/myscript/internal/equation/VO_EQUATION_I;->VO_IEquation:Lcom/visionobjects/myscript/internal/equation/VO_EQUATION_I;

    invoke-virtual {v0}, Lcom/visionobjects/myscript/internal/equation/VO_EQUATION_I;->getValue()I

    move-result v0

    sput v0, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker;->IFACE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addCharacter(Lcom/visionobjects/myscript/engine/EngineObject;Lcom/visionobjects/myscript/engine/EngineObject;FFFF)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Lcom/visionobjects/myscript/engine/InvalidObjectException;,
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
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid x: NaN is not allowed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {p3}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid x: infinitely large magnitude is not allowed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid y: NaN is not allowed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid y: infinitely large magnitude is not allowed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid width: NaN is not allowed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid width: infinitely large magnitude is not allowed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    const/4 v2, 0x0

    cmpg-float v2, p5, v2

    if-gtz v2, :cond_8

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid width: must be > 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    invoke-static/range {p6 .. p6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid height: NaN is not allowed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    invoke-static/range {p6 .. p6}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid height: infinitely large magnitude is not allowed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    const/4 v2, 0x0

    cmpg-float v2, p6, v2

    if-gtz v2, :cond_b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid height: must be > 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    invoke-static {p1, p2}, Lcom/visionobjects/myscript/internal/engine/Library;->checkEngine(Lcom/visionobjects/myscript/engine/IEngineObject;Lcom/visionobjects/myscript/engine/IEngineObject;)V

    invoke-virtual {p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getEngine()Lcom/visionobjects/myscript/engine/Engine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/visionobjects/myscript/engine/Engine;->getNativeReference()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getNativeReference()J

    move-result-wide v8

    invoke-virtual {p2}, Lcom/visionobjects/myscript/engine/EngineObject;->getNativeReference()J

    move-result-wide v10

    sget v4, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker;->IFACE:I

    invoke-static {v2, v3, v8, v9, v4}, Lcom/visionobjects/myscript/internal/engine/Library;->getInterface(JJI)J

    move-result-wide v4

    new-instance v7, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddCharacterParameters;

    invoke-direct {v7}, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddCharacterParameters;-><init>()V

    iget-object v6, v7, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddCharacterParameters;->engine:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v6, v2, v3}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v6, v7, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddCharacterParameters;->target:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v6, v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v6, v7, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddCharacterParameters;->character:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v6, v10, v11}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v6, v7, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddCharacterParameters;->x:Lcom/visionobjects/myscript/internal/engine/ParameterList$Float32;

    invoke-virtual {v6, p3}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Float32;->set(F)V

    iget-object v6, v7, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddCharacterParameters;->y:Lcom/visionobjects/myscript/internal/engine/ParameterList$Float32;

    move-object v0, v6

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Float32;->set(F)V

    iget-object v6, v7, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddCharacterParameters;->width:Lcom/visionobjects/myscript/internal/engine/ParameterList$Float32;

    move-object v0, v6

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Float32;->set(F)V

    iget-object v6, v7, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddCharacterParameters;->height:Lcom/visionobjects/myscript/internal/engine/ParameterList$Float32;

    move-object v0, v6

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Float32;->set(F)V

    const/4 v6, 0x2

    invoke-static/range {v2 .. v7}, Lcom/visionobjects/myscript/internal/engine/Library;->invokeBooleanInterfaceFunction(JJILcom/visionobjects/myscript/internal/engine/ParameterList;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-static {v2, v3}, Lcom/visionobjects/myscript/internal/engine/Library;->getError(J)V

    :cond_c
    return-void
.end method

.method public final addStroke(Lcom/visionobjects/myscript/engine/EngineObject;Lcom/visionobjects/myscript/engine/IFloatStroke;)V
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

    sget v4, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker;->IFACE:I

    invoke-static {v2, v3, v8, v9, v4}, Lcom/visionobjects/myscript/internal/engine/Library;->getInterface(JJI)J

    move-result-wide v4

    new-instance v7, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddStrokeParameters;

    invoke-direct {v7}, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddStrokeParameters;-><init>()V

    invoke-interface/range {p2 .. p2}, Lcom/visionobjects/myscript/engine/IFloatStroke;->getPointCount()I

    move-result v6

    mul-int/lit8 v10, v6, 0x2

    invoke-static {v10}, Lcom/visionobjects/myscript/internal/engine/Float32;->newArray(I)[Lcom/visionobjects/myscript/internal/engine/Float32;

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

    invoke-interface {v0, v1}, Lcom/visionobjects/myscript/engine/IFloatStroke;->getX(I)F

    move-result v14

    invoke-virtual {v12, v14}, Lcom/visionobjects/myscript/internal/engine/Float32;->set(F)V

    add-int/lit8 v12, v13, 0x1

    aget-object v13, v10, v13

    move-object/from16 v0, p2

    move v1, v11

    invoke-interface {v0, v1}, Lcom/visionobjects/myscript/engine/IFloatStroke;->getY(I)F

    move-result v14

    invoke-virtual {v13, v14}, Lcom/visionobjects/myscript/internal/engine/Float32;->set(F)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    iget-object v11, v7, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddStrokeParameters;->engine:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v11, v2, v3}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v11, v7, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddStrokeParameters;->target:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v11, v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddStrokeParameters;->x:Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;

    const/4 v9, 0x0

    aget-object v9, v10, v9

    invoke-virtual {v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;->set(Lcom/visionobjects/myscript/internal/engine/NativeType;)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddStrokeParameters;->xByteStride:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddStrokeParameters;->y:Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;

    const/4 v9, 0x1

    aget-object v9, v10, v9

    invoke-virtual {v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;->set(Lcom/visionobjects/myscript/internal/engine/NativeType;)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddStrokeParameters;->yByteStride:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddStrokeParameters;->pointCount:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    invoke-virtual {v8, v6}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    const/4 v6, 0x1

    invoke-static/range {v2 .. v7}, Lcom/visionobjects/myscript/internal/engine/Library;->invokeBooleanInterfaceFunction(JJILcom/visionobjects/myscript/internal/engine/ParameterList;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v2, v3}, Lcom/visionobjects/myscript/internal/engine/Library;->getError(J)V

    :cond_3
    return-void
.end method

.method public final addStroke(Lcom/visionobjects/myscript/engine/EngineObject;[FII[FIII)V
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

    sget v4, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker;->IFACE:I

    invoke-static {v2, v3, v8, v9, v4}, Lcom/visionobjects/myscript/internal/engine/Library;->getInterface(JJI)J

    move-result-wide v4

    new-instance v7, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddStrokeParameters;

    invoke-direct {v7}, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddStrokeParameters;-><init>()V

    mul-int/lit8 v6, p8, 0x2

    invoke-static {v6}, Lcom/visionobjects/myscript/internal/engine/Float32;->newArray(I)[Lcom/visionobjects/myscript/internal/engine/Float32;

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

    invoke-virtual {v13, v15}, Lcom/visionobjects/myscript/internal/engine/Float32;->set(F)V

    add-int/lit8 v13, v14, 0x1

    aget-object v14, v6, v14

    aget v15, p5, v11

    invoke-virtual {v14, v15}, Lcom/visionobjects/myscript/internal/engine/Float32;->set(F)V

    add-int v12, v12, p4

    add-int v11, v11, p7

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_e
    iget-object v10, v7, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddStrokeParameters;->engine:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v10, v2, v3}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v10, v7, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddStrokeParameters;->target:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v10, v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddStrokeParameters;->x:Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;->set(Lcom/visionobjects/myscript/internal/engine/NativeType;)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddStrokeParameters;->xByteStride:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddStrokeParameters;->y:Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;

    const/4 v9, 0x1

    aget-object v6, v6, v9

    invoke-virtual {v8, v6}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;->set(Lcom/visionobjects/myscript/internal/engine/NativeType;)V

    iget-object v6, v7, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddStrokeParameters;->yByteStride:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    iget-object v6, v7, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddStrokeParameters;->pointCount:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    move-object v0, v6

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    const/4 v6, 0x1

    invoke-static/range {v2 .. v7}, Lcom/visionobjects/myscript/internal/engine/Library;->invokeBooleanInterfaceFunction(JJILcom/visionobjects/myscript/internal/engine/ParameterList;)Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static {v2, v3}, Lcom/visionobjects/myscript/internal/engine/Library;->getError(J)V

    :cond_f
    return-void
.end method

.method public final addStroke(Lcom/visionobjects/myscript/engine/EngineObject;[FI[FII)V
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

    sget v4, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker;->IFACE:I

    invoke-static {v2, v3, v8, v9, v4}, Lcom/visionobjects/myscript/internal/engine/Library;->getInterface(JJI)J

    move-result-wide v4

    new-instance v7, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddStrokeParameters;

    invoke-direct {v7}, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddStrokeParameters;-><init>()V

    mul-int/lit8 v6, p6, 0x2

    invoke-static {v6}, Lcom/visionobjects/myscript/internal/engine/Float32;->newArray(I)[Lcom/visionobjects/myscript/internal/engine/Float32;

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

    invoke-virtual {v11, v13}, Lcom/visionobjects/myscript/internal/engine/Float32;->set(F)V

    add-int/lit8 v11, v12, 0x1

    aget-object v12, v6, v12

    add-int v13, v10, p5

    aget v13, p4, v13

    invoke-virtual {v12, v13}, Lcom/visionobjects/myscript/internal/engine/Float32;->set(F)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_c
    iget-object v10, v7, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddStrokeParameters;->engine:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v10, v2, v3}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v10, v7, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddStrokeParameters;->target:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v10, v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddStrokeParameters;->x:Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;->set(Lcom/visionobjects/myscript/internal/engine/NativeType;)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddStrokeParameters;->xByteStride:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    iget-object v8, v7, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddStrokeParameters;->y:Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;

    const/4 v9, 0x1

    aget-object v6, v6, v9

    invoke-virtual {v8, v6}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;->set(Lcom/visionobjects/myscript/internal/engine/NativeType;)V

    iget-object v6, v7, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddStrokeParameters;->yByteStride:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    iget-object v6, v7, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddStrokeParameters;->pointCount:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    move-object v0, v6

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    const/4 v6, 0x1

    invoke-static/range {v2 .. v7}, Lcom/visionobjects/myscript/internal/engine/Library;->invokeBooleanInterfaceFunction(JJILcom/visionobjects/myscript/internal/engine/ParameterList;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {v2, v3}, Lcom/visionobjects/myscript/internal/engine/Library;->getError(J)V

    :cond_d
    return-void
.end method

.method public final addStroke(Lcom/visionobjects/myscript/engine/EngineObject;[F[F)V
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

    sget v3, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker;->IFACE:I

    invoke-static {v1, v2, v7, v8, v3}, Lcom/visionobjects/myscript/internal/engine/Library;->getInterface(JJI)J

    move-result-wide v3

    new-instance v6, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddStrokeParameters;

    invoke-direct {v6}, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddStrokeParameters;-><init>()V

    move-object/from16 v0, p2

    array-length v0, v0

    move v5, v0

    mul-int/lit8 v9, v5, 0x2

    invoke-static {v9}, Lcom/visionobjects/myscript/internal/engine/Float32;->newArray(I)[Lcom/visionobjects/myscript/internal/engine/Float32;

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

    invoke-virtual {v11, v13}, Lcom/visionobjects/myscript/internal/engine/Float32;->set(F)V

    add-int/lit8 v11, v12, 0x1

    aget-object v12, v9, v12

    aget v13, p3, v10

    invoke-virtual {v12, v13}, Lcom/visionobjects/myscript/internal/engine/Float32;->set(F)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_4
    iget-object v10, v6, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddStrokeParameters;->engine:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v10, v1, v2}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v10, v6, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddStrokeParameters;->target:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v10, v7, v8}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v7, v6, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddStrokeParameters;->x:Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;

    const/4 v8, 0x0

    aget-object v8, v9, v8

    invoke-virtual {v7, v8}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;->set(Lcom/visionobjects/myscript/internal/engine/NativeType;)V

    iget-object v7, v6, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddStrokeParameters;->xByteStride:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    iget-object v7, v6, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddStrokeParameters;->y:Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;

    const/4 v8, 0x1

    aget-object v8, v9, v8

    invoke-virtual {v7, v8}, Lcom/visionobjects/myscript/internal/engine/ParameterList$Pointer;->set(Lcom/visionobjects/myscript/internal/engine/NativeType;)V

    iget-object v7, v6, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddStrokeParameters;->yByteStride:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    iget-object v7, v6, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$AddStrokeParameters;->pointCount:Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;

    invoke-virtual {v7, v5}, Lcom/visionobjects/myscript/internal/engine/ParameterList$UInt32;->set(I)V

    const/4 v5, 0x1

    invoke-static/range {v1 .. v6}, Lcom/visionobjects/myscript/internal/engine/Library;->invokeBooleanInterfaceFunction(JJILcom/visionobjects/myscript/internal/engine/ParameterList;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v1, v2}, Lcom/visionobjects/myscript/internal/engine/Library;->getError(J)V

    :cond_5
    return-void
.end method

.method public final clear(Lcom/visionobjects/myscript/engine/EngineObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalStateException;,
            Lcom/visionobjects/myscript/engine/InvalidOperationException;
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

    sget v2, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker;->IFACE:I

    invoke-static {v0, v1, v6, v7, v2}, Lcom/visionobjects/myscript/internal/engine/Library;->getInterface(JJI)J

    move-result-wide v2

    new-instance v5, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$ClearParameters;

    invoke-direct {v5}, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$ClearParameters;-><init>()V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$ClearParameters;->engine:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v4, v0, v1}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$ClearParameters;->target:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v4, v6, v7}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/myscript/internal/engine/Library;->invokeBooleanInterfaceFunction(JJILcom/visionobjects/myscript/internal/engine/ParameterList;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Lcom/visionobjects/myscript/internal/engine/Library;->getError(J)V

    :cond_1
    return-void
.end method

.method public final getParseTree(Lcom/visionobjects/myscript/engine/EngineObject;)Lcom/visionobjects/myscript/equation/EquationNode;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalStateException;,
            Lcom/visionobjects/myscript/engine/InvalidOperationException;,
            Lcom/visionobjects/myscript/engine/LimitExceededException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "invalid target: null is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getEngine()Lcom/visionobjects/myscript/engine/Engine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/visionobjects/myscript/engine/Engine;->getNativeReference()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/visionobjects/myscript/engine/EngineObject;->getNativeReference()J

    move-result-wide v7

    sget v2, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker;->IFACE:I

    invoke-static {v0, v1, v7, v8, v2}, Lcom/visionobjects/myscript/internal/engine/Library;->getInterface(JJI)J

    move-result-wide v2

    new-instance v5, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$HasGetParseTreeParameters;

    invoke-direct {v5}, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$HasGetParseTreeParameters;-><init>()V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$HasGetParseTreeParameters;->engine:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v4, v0, v1}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$HasGetParseTreeParameters;->target:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v4, v7, v8}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    const/4 v4, 0x4

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/myscript/internal/engine/Library;->invokeLongInterfaceFunction(JJILcom/visionobjects/myscript/internal/engine/ParameterList;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    invoke-static {v0, v1}, Lcom/visionobjects/myscript/internal/engine/Library;->getError(J)V

    :cond_1
    invoke-static {v0, v1, v2, v3}, Lcom/visionobjects/myscript/internal/engine/Library;->getType(JJ)I

    move-result v0

    invoke-static {v6, v0, v2, v3}, Lcom/visionobjects/myscript/internal/engine/EngineObjectFactory;->create(Lcom/visionobjects/myscript/engine/Engine;IJ)Lcom/visionobjects/myscript/engine/EngineObject;

    move-result-object p0

    check-cast p0, Lcom/visionobjects/myscript/equation/EquationNode;

    return-object p0
.end method

.method public final hasParseTree(Lcom/visionobjects/myscript/engine/EngineObject;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Lcom/visionobjects/myscript/engine/InvalidOperationException;
        }
    .end annotation

    const/4 v8, 0x1

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

    sget v2, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker;->IFACE:I

    invoke-static {v0, v1, v6, v7, v2}, Lcom/visionobjects/myscript/internal/engine/Library;->getInterface(JJI)J

    move-result-wide v2

    new-instance v5, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$HasGetParseTreeParameters;

    invoke-direct {v5}, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$HasGetParseTreeParameters;-><init>()V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$HasGetParseTreeParameters;->engine:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v4, v0, v1}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    iget-object v4, v5, Lcom/visionobjects/myscript/internal/equation/IEquationInvoker$HasGetParseTreeParameters;->target:Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;

    invoke-virtual {v4, v6, v7}, Lcom/visionobjects/myscript/internal/engine/ParameterList$OpaquePointer;->set(J)V

    const/4 v4, 0x3

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/myscript/internal/engine/Library;->invokeIntInterfaceFunction(JJILcom/visionobjects/myscript/internal/engine/ParameterList;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    invoke-static {v0, v1}, Lcom/visionobjects/myscript/internal/engine/Library;->getError(J)V

    :cond_1
    if-ne v2, v8, :cond_2

    move v0, v8

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
