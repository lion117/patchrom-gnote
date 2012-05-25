.class Landroid/widget/TextView$PositionListener;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositionListener"
.end annotation


# instance fields
.field private final MAXIMUM_NUMBER_OF_LISTENERS:I

.field private mCanMove:[Z

.field private mNumberOfListeners:I

.field private mPositionHasChanged:Z

.field private mPositionListeners:[Landroid/widget/TextView$TextViewPositionListener;

.field private mPositionX:I

.field private mPositionY:I

.field private mScrollHasChanged:Z

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x6

    .line 9971
    iput-object p1, p0, Landroid/widget/TextView$PositionListener;->this$0:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9974
    iput v1, p0, Landroid/widget/TextView$PositionListener;->MAXIMUM_NUMBER_OF_LISTENERS:I

    .line 9975
    new-array v0, v1, [Landroid/widget/TextView$TextViewPositionListener;

    iput-object v0, p0, Landroid/widget/TextView$PositionListener;->mPositionListeners:[Landroid/widget/TextView$TextViewPositionListener;

    .line 9977
    new-array v0, v1, [Z

    iput-object v0, p0, Landroid/widget/TextView$PositionListener;->mCanMove:[Z

    .line 9978
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView$PositionListener;->mPositionHasChanged:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9971
    invoke-direct {p0, p1}, Landroid/widget/TextView$PositionListener;-><init>(Landroid/widget/TextView;)V

    return-void
.end method

.method private updatePosition()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 10048
    iget-object v0, p0, Landroid/widget/TextView$PositionListener;->this$0:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/TextView$PositionListener;->this$0:Landroid/widget/TextView;

    iget-object v3, v3, Landroid/widget/TextView;->mTempCoords:[I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 10050
    iget-object v0, p0, Landroid/widget/TextView$PositionListener;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mTempCoords:[I

    aget v0, v0, v1

    iget v3, p0, Landroid/widget/TextView$PositionListener;->mPositionX:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$PositionListener;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mTempCoords:[I

    aget v0, v0, v2

    iget v3, p0, Landroid/widget/TextView$PositionListener;->mPositionY:I

    if-eq v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/widget/TextView$PositionListener;->mPositionHasChanged:Z

    .line 10052
    iget-object v0, p0, Landroid/widget/TextView$PositionListener;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mTempCoords:[I

    aget v0, v0, v1

    iput v0, p0, Landroid/widget/TextView$PositionListener;->mPositionX:I

    .line 10053
    iget-object v0, p0, Landroid/widget/TextView$PositionListener;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mTempCoords:[I

    aget v0, v0, v2

    iput v0, p0, Landroid/widget/TextView$PositionListener;->mPositionY:I

    .line 10054
    return-void

    :cond_1
    move v0, v1

    .line 10050
    goto :goto_0
.end method


# virtual methods
.method public addSubscriber(Landroid/widget/TextView$TextViewPositionListener;Z)V
    .locals 5
    .parameter "positionListener"
    .parameter "canMove"

    .prologue
    .line 9985
    iget v4, p0, Landroid/widget/TextView$PositionListener;->mNumberOfListeners:I

    if-nez v4, :cond_0

    .line 9986
    invoke-direct {p0}, Landroid/widget/TextView$PositionListener;->updatePosition()V

    .line 9987
    iget-object v4, p0, Landroid/widget/TextView$PositionListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 9988
    .local v3, vto:Landroid/view/ViewTreeObserver;
    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 9991
    .end local v3           #vto:Landroid/view/ViewTreeObserver;
    :cond_0
    const/4 v0, -0x1

    .line 9992
    .local v0, emptySlotIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v4, 0x6

    if-ge v1, v4, :cond_3

    .line 9993
    iget-object v4, p0, Landroid/widget/TextView$PositionListener;->mPositionListeners:[Landroid/widget/TextView$TextViewPositionListener;

    aget-object v2, v4, v1

    .line 9994
    .local v2, listener:Landroid/widget/TextView$TextViewPositionListener;
    if-ne v2, p1, :cond_1

    .line 10004
    .end local v2           #listener:Landroid/widget/TextView$TextViewPositionListener;
    :goto_1
    return-void

    .line 9996
    .restart local v2       #listener:Landroid/widget/TextView$TextViewPositionListener;
    :cond_1
    if-gez v0, :cond_2

    if-nez v2, :cond_2

    .line 9997
    move v0, v1

    .line 9992
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10001
    .end local v2           #listener:Landroid/widget/TextView$TextViewPositionListener;
    :cond_3
    iget-object v4, p0, Landroid/widget/TextView$PositionListener;->mPositionListeners:[Landroid/widget/TextView$TextViewPositionListener;

    aput-object p1, v4, v0

    .line 10002
    iget-object v4, p0, Landroid/widget/TextView$PositionListener;->mCanMove:[Z

    aput-boolean p2, v4, v0

    .line 10003
    iget v4, p0, Landroid/widget/TextView$PositionListener;->mNumberOfListeners:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/TextView$PositionListener;->mNumberOfListeners:I

    goto :goto_1
.end method

.method public getPositionX()I
    .locals 1

    .prologue
    .line 10022
    iget v0, p0, Landroid/widget/TextView$PositionListener;->mPositionX:I

    return v0
.end method

.method public getPositionY()I
    .locals 1

    .prologue
    .line 10026
    iget v0, p0, Landroid/widget/TextView$PositionListener;->mPositionY:I

    return v0
.end method

.method public onPreDraw()Z
    .locals 6

    .prologue
    .line 10031
    invoke-direct {p0}, Landroid/widget/TextView$PositionListener;->updatePosition()V

    .line 10033
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_2

    .line 10034
    iget-boolean v2, p0, Landroid/widget/TextView$PositionListener;->mPositionHasChanged:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/widget/TextView$PositionListener;->mScrollHasChanged:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView$PositionListener;->mCanMove:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1

    .line 10035
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView$PositionListener;->mPositionListeners:[Landroid/widget/TextView$TextViewPositionListener;

    aget-object v1, v2, v0

    .line 10036
    .local v1, positionListener:Landroid/widget/TextView$TextViewPositionListener;
    if-eqz v1, :cond_1

    .line 10037
    iget v2, p0, Landroid/widget/TextView$PositionListener;->mPositionX:I

    iget v3, p0, Landroid/widget/TextView$PositionListener;->mPositionY:I

    iget-boolean v4, p0, Landroid/widget/TextView$PositionListener;->mPositionHasChanged:Z

    iget-boolean v5, p0, Landroid/widget/TextView$PositionListener;->mScrollHasChanged:Z

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/widget/TextView$TextViewPositionListener;->updatePosition(IIZZ)V

    .line 10033
    .end local v1           #positionListener:Landroid/widget/TextView$TextViewPositionListener;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10043
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/TextView$PositionListener;->mScrollHasChanged:Z

    .line 10044
    const/4 v2, 0x1

    return v2
.end method

.method public onScrollChanged()V
    .locals 1

    .prologue
    .line 10057
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView$PositionListener;->mScrollHasChanged:Z

    .line 10058
    return-void
.end method

.method public removeSubscriber(Landroid/widget/TextView$TextViewPositionListener;)V
    .locals 4
    .parameter "positionListener"

    .prologue
    .line 10007
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 10008
    iget-object v2, p0, Landroid/widget/TextView$PositionListener;->mPositionListeners:[Landroid/widget/TextView$TextViewPositionListener;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_2

    .line 10009
    iget-object v2, p0, Landroid/widget/TextView$PositionListener;->mPositionListeners:[Landroid/widget/TextView$TextViewPositionListener;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 10010
    iget v2, p0, Landroid/widget/TextView$PositionListener;->mNumberOfListeners:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/widget/TextView$PositionListener;->mNumberOfListeners:I

    .line 10015
    :cond_0
    iget v2, p0, Landroid/widget/TextView$PositionListener;->mNumberOfListeners:I

    if-nez v2, :cond_1

    .line 10016
    iget-object v2, p0, Landroid/widget/TextView$PositionListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 10017
    .local v1, vto:Landroid/view/ViewTreeObserver;
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 10019
    .end local v1           #vto:Landroid/view/ViewTreeObserver;
    :cond_1
    return-void

    .line 10007
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
