.class Lcom/android/internal/policy/impl/PhoneWindowManager$NavigationBarHideConcept;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NavigationBarHideConcept"
.end annotation


# instance fields
.field private mComponentNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 1
    .parameter

    .prologue
    .line 5005
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$NavigationBarHideConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5006
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$NavigationBarHideConcept;->mComponentNames:Ljava/util/HashSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5005
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$NavigationBarHideConcept;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public isNavigationBarCanHide(Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "componentName"

    .prologue
    .line 5024
    if-nez p1, :cond_0

    .line 5025
    const/4 v0, 0x0

    .line 5029
    :goto_0
    return v0

    .line 5028
    :cond_0
    monitor-enter p0

    .line 5029
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$NavigationBarHideConcept;->mComponentNames:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 5030
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setNavigationBarCanHide(Landroid/content/ComponentName;Z)Z
    .locals 1
    .parameter "componentName"
    .parameter "canHide"

    .prologue
    .line 5009
    if-nez p1, :cond_0

    .line 5010
    const/4 v0, 0x0

    .line 5019
    :goto_0
    return v0

    .line 5013
    :cond_0
    monitor-enter p0

    .line 5014
    if-eqz p2, :cond_1

    .line 5015
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$NavigationBarHideConcept;->mComponentNames:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5019
    :goto_1
    const/4 v0, 0x1

    monitor-exit p0

    goto :goto_0

    .line 5020
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5017
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$NavigationBarHideConcept;->mComponentNames:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method