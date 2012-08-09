.class public Lcom/evernote/edam/notestore/NoteStore$AsyncClient$getResource_call;
.super Lorg/apache/thrift/async/TAsyncMethodCall;
.source "NoteStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/edam/notestore/NoteStore$AsyncClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "getResource_call"
.end annotation


# instance fields
.field private authenticationToken:Ljava/lang/String;

.field private guid:Ljava/lang/String;

.field private withAlternateData:Z

.field private withAttributes:Z

.field private withData:Z

.field private withRecognition:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZZLorg/apache/thrift/async/AsyncMethodCallback;Lorg/apache/thrift/async/TAsyncClient;Lorg/apache/thrift/protocol/TProtocolFactory;Lorg/apache/thrift/transport/TNonblockingTransport;)V
    .locals 6
    .parameter "authenticationToken"
    .parameter "guid"
    .parameter "withData"
    .parameter "withRecognition"
    .parameter "withAttributes"
    .parameter "withAlternateData"
    .parameter
    .parameter "client"
    .parameter "protocolFactory"
    .parameter "transport"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZ",
            "Lorg/apache/thrift/async/AsyncMethodCallback",
            "<",
            "Lcom/evernote/edam/notestore/NoteStore$AsyncClient$getResource_call;",
            ">;",
            "Lorg/apache/thrift/async/TAsyncClient;",
            "Lorg/apache/thrift/protocol/TProtocolFactory;",
            "Lorg/apache/thrift/transport/TNonblockingTransport;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 4558
    .local p7, resultHandler:Lorg/apache/thrift/async/AsyncMethodCallback;,"Lorg/apache/thrift/async/AsyncMethodCallback<Lcom/evernote/edam/notestore/NoteStore$AsyncClient$getResource_call;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p8

    move-object v2, p9

    move-object/from16 v3, p10

    move-object v4, p7

    invoke-direct/range {v0 .. v5}, Lorg/apache/thrift/async/TAsyncMethodCall;-><init>(Lorg/apache/thrift/async/TAsyncClient;Lorg/apache/thrift/protocol/TProtocolFactory;Lorg/apache/thrift/transport/TNonblockingTransport;Lorg/apache/thrift/async/AsyncMethodCallback;Z)V

    .line 4559
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$AsyncClient$getResource_call;->authenticationToken:Ljava/lang/String;

    .line 4560
    iput-object p2, p0, Lcom/evernote/edam/notestore/NoteStore$AsyncClient$getResource_call;->guid:Ljava/lang/String;

    .line 4561
    iput-boolean p3, p0, Lcom/evernote/edam/notestore/NoteStore$AsyncClient$getResource_call;->withData:Z

    .line 4562
    iput-boolean p4, p0, Lcom/evernote/edam/notestore/NoteStore$AsyncClient$getResource_call;->withRecognition:Z

    .line 4563
    iput-boolean p5, p0, Lcom/evernote/edam/notestore/NoteStore$AsyncClient$getResource_call;->withAttributes:Z

    .line 4564
    iput-boolean p6, p0, Lcom/evernote/edam/notestore/NoteStore$AsyncClient$getResource_call;->withAlternateData:Z

    .line 4565
    return-void
.end method


# virtual methods
.method public getResult()Lcom/evernote/edam/type/Resource;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 4581
    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$AsyncClient$getResource_call;->getState()Lorg/apache/thrift/async/TAsyncMethodCall$State;

    move-result-object v2

    sget-object v3, Lorg/apache/thrift/async/TAsyncMethodCall$State;->RESPONSE_READ:Lorg/apache/thrift/async/TAsyncMethodCall$State;

    if-eq v2, v3, :cond_0

    .line 4582
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Method call not finished!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4584
    :cond_0
    new-instance v0, Lorg/apache/thrift/transport/TMemoryInputTransport;

    invoke-virtual {p0}, Lcom/evernote/edam/notestore/NoteStore$AsyncClient$getResource_call;->getFrameBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/thrift/transport/TMemoryInputTransport;-><init>([B)V

    .line 4585
    .local v0, memoryTransport:Lorg/apache/thrift/transport/TMemoryInputTransport;
    iget-object v2, p0, Lcom/evernote/edam/notestore/NoteStore$AsyncClient$getResource_call;->client:Lorg/apache/thrift/async/TAsyncClient;

    invoke-virtual {v2}, Lorg/apache/thrift/async/TAsyncClient;->getProtocolFactory()Lorg/apache/thrift/protocol/TProtocolFactory;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/apache/thrift/protocol/TProtocolFactory;->getProtocol(Lorg/apache/thrift/transport/TTransport;)Lorg/apache/thrift/protocol/TProtocol;

    move-result-object v1

    .line 4586
    .local v1, prot:Lorg/apache/thrift/protocol/TProtocol;
    new-instance v2, Lcom/evernote/edam/notestore/NoteStore$Client;

    invoke-direct {v2, v1}, Lcom/evernote/edam/notestore/NoteStore$Client;-><init>(Lorg/apache/thrift/protocol/TProtocol;)V

    invoke-virtual {v2}, Lcom/evernote/edam/notestore/NoteStore$Client;->recv_getResource()Lcom/evernote/edam/type/Resource;

    move-result-object v2

    return-object v2
.end method

.method public write_args(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 5
    .parameter "prot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 4568
    new-instance v1, Lorg/apache/thrift/protocol/TMessage;

    const-string v2, "getResource"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeMessageBegin(Lorg/apache/thrift/protocol/TMessage;)V

    .line 4569
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$getResource_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;-><init>()V

    .line 4570
    .local v0, args:Lcom/evernote/edam/notestore/NoteStore$getResource_args;
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$AsyncClient$getResource_call;->authenticationToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->setAuthenticationToken(Ljava/lang/String;)V

    .line 4571
    iget-object v1, p0, Lcom/evernote/edam/notestore/NoteStore$AsyncClient$getResource_call;->guid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->setGuid(Ljava/lang/String;)V

    .line 4572
    iget-boolean v1, p0, Lcom/evernote/edam/notestore/NoteStore$AsyncClient$getResource_call;->withData:Z

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->setWithData(Z)V

    .line 4573
    iget-boolean v1, p0, Lcom/evernote/edam/notestore/NoteStore$AsyncClient$getResource_call;->withRecognition:Z

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->setWithRecognition(Z)V

    .line 4574
    iget-boolean v1, p0, Lcom/evernote/edam/notestore/NoteStore$AsyncClient$getResource_call;->withAttributes:Z

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->setWithAttributes(Z)V

    .line 4575
    iget-boolean v1, p0, Lcom/evernote/edam/notestore/NoteStore$AsyncClient$getResource_call;->withAlternateData:Z

    invoke-virtual {v0, v1}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->setWithAlternateData(Z)V

    .line 4576
    invoke-virtual {v0, p1}, Lcom/evernote/edam/notestore/NoteStore$getResource_args;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 4577
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 4578
    return-void
.end method
