.class Lcom/sec/android/widgetapp/q1_penmemo/MemoListActivity$46$1;
.super Ljava/lang/Object;
.source "MemoListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/q1_penmemo/MemoListActivity$46;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/q1_penmemo/MemoListActivity$46;

.field private final synthetic val$dr1:Landroid/graphics/drawable/AnimationDrawable;

.field private final synthetic val$dr2:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/q1_penmemo/MemoListActivity$46;Landroid/graphics/drawable/AnimationDrawable;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/widgetapp/q1_penmemo/MemoListActivity$46$1;->this$1:Lcom/sec/android/widgetapp/q1_penmemo/MemoListActivity$46;

    iput-object p2, p0, Lcom/sec/android/widgetapp/q1_penmemo/MemoListActivity$46$1;->val$dr1:Landroid/graphics/drawable/AnimationDrawable;

    iput-object p3, p0, Lcom/sec/android/widgetapp/q1_penmemo/MemoListActivity$46$1;->val$dr2:Landroid/graphics/drawable/AnimationDrawable;

    .line 4039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4042
    iget-object v0, p0, Lcom/sec/android/widgetapp/q1_penmemo/MemoListActivity$46$1;->val$dr1:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/widgetapp/q1_penmemo/MemoListActivity$46$1;->val$dr2:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 4043
    iget-object v0, p0, Lcom/sec/android/widgetapp/q1_penmemo/MemoListActivity$46$1;->val$dr1:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 4044
    iget-object v0, p0, Lcom/sec/android/widgetapp/q1_penmemo/MemoListActivity$46$1;->val$dr2:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 4047
    :cond_0
    return-void
.end method
