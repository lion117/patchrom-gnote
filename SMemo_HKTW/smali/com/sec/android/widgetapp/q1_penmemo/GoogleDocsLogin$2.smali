.class Lcom/sec/android/widgetapp/q1_penmemo/GoogleDocsLogin$2;
.super Ljava/lang/Object;
.source "GoogleDocsLogin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/q1_penmemo/GoogleDocsLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/q1_penmemo/GoogleDocsLogin;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/q1_penmemo/GoogleDocsLogin;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/widgetapp/q1_penmemo/GoogleDocsLogin$2;->this$0:Lcom/sec/android/widgetapp/q1_penmemo/GoogleDocsLogin;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    .line 219
    const/16 v0, 0x52

    if-ne p2, v0, :cond_0

    .line 220
    const/4 v0, 0x1

    .line 222
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
