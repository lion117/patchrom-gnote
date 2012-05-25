.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;
.super Ljava/lang/Thread;
.source "LockPatternKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoiceEngineThread"
.end annotation


# instance fields
.field private final MSG_DESTROY_WAKEUP_CMD:I

.field private final MSG_INIT_WAKEUP_CMD:I

.field private final MSG_QUIT_LOOPER:I

.field private final MSG_START_VERIFY_CMD:I

.field private final MSG_TERMINATE_VERIFY_CMD:I

.field private mHandler:Landroid/os/Handler;

.field private mVoiceVerifyStarted:Z

.field private mWakeUpCmdRecognizer:Lcom/samsung/wakeup/WakeUpCmdRecognizer;

.field final synthetic this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 1
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    .line 198
    const-string v0, "VoiceEngineThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mVoiceVerifyStarted:Z

    .line 191
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->MSG_INIT_WAKEUP_CMD:I

    .line 192
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->MSG_START_VERIFY_CMD:I

    .line 193
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->MSG_TERMINATE_VERIFY_CMD:I

    .line 194
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->MSG_DESTROY_WAKEUP_CMD:I

    .line 195
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->MSG_QUIT_LOOPER:I

    .line 199
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;)Lcom/samsung/wakeup/WakeUpCmdRecognizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;Lcom/samsung/wakeup/WakeUpCmdRecognizer;)Lcom/samsung/wakeup/WakeUpCmdRecognizer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mVoiceVerifyStarted:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mVoiceVerifyStarted:Z

    return p1
.end method


# virtual methods
.method public quit()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 293
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 203
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 205
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread$1;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mHandler:Landroid/os/Handler;

    .line 269
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->wakeUpInit()V

    .line 271
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 273
    return-void
.end method

.method public wakeUpDestroy()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 289
    return-void
.end method

.method public wakeUpInit()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 277
    return-void
.end method

.method public wakeUpStartVerify()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 281
    return-void
.end method

.method public wakeUpTerminateVerify()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 285
    return-void
.end method
