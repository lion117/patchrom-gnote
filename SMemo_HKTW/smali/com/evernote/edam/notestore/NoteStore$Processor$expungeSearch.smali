.class Lcom/evernote/edam/notestore/NoteStore$Processor$expungeSearch;
.super Ljava/lang/Object;
.source "NoteStore.java"

# interfaces
.implements Lcom/evernote/edam/notestore/NoteStore$Processor$ProcessFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/edam/notestore/NoteStore$Processor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "expungeSearch"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evernote/edam/notestore/NoteStore$Processor;


# direct methods
.method private constructor <init>(Lcom/evernote/edam/notestore/NoteStore$Processor;)V
    .locals 0
    .parameter

    .prologue
    .line 6319
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Processor$expungeSearch;->this$0:Lcom/evernote/edam/notestore/NoteStore$Processor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/evernote/edam/notestore/NoteStore$Processor;Lcom/evernote/edam/notestore/NoteStore$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6319
    invoke-direct {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Processor$expungeSearch;-><init>(Lcom/evernote/edam/notestore/NoteStore$Processor;)V

    return-void
.end method


# virtual methods
.method public process(ILorg/apache/thrift/protocol/TProtocol;Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 12
    .parameter "seqid"
    .parameter "iprot"
    .parameter "oprot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    .line 6322
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_args;-><init>()V

    .line 6324
    .local v0, args:Lcom/evernote/edam/notestore/NoteStore$expungeSearch_args;
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_args;->read(Lorg/apache/thrift/protocol/TProtocol;)V
    :try_end_0
    .catch Lorg/apache/thrift/protocol/TProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6334
    invoke-virtual {p2}, Lorg/apache/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 6335
    new-instance v3, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;

    invoke-direct {v3}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;-><init>()V

    .line 6337
    .local v3, result:Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;
    :try_start_1
    iget-object v8, p0, Lcom/evernote/edam/notestore/NoteStore$Processor$expungeSearch;->this$0:Lcom/evernote/edam/notestore/NoteStore$Processor;

    #getter for: Lcom/evernote/edam/notestore/NoteStore$Processor;->iface_:Lcom/evernote/edam/notestore/NoteStore$Iface;
    invoke-static {v8}, Lcom/evernote/edam/notestore/NoteStore$Processor;->access$30500(Lcom/evernote/edam/notestore/NoteStore$Processor;)Lcom/evernote/edam/notestore/NoteStore$Iface;

    move-result-object v8

    #getter for: Lcom/evernote/edam/notestore/NoteStore$expungeSearch_args;->authenticationToken:Ljava/lang/String;
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_args;->access$34700(Lcom/evernote/edam/notestore/NoteStore$expungeSearch_args;)Ljava/lang/String;

    move-result-object v9

    #getter for: Lcom/evernote/edam/notestore/NoteStore$expungeSearch_args;->guid:Ljava/lang/String;
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_args;->access$34800(Lcom/evernote/edam/notestore/NoteStore$expungeSearch_args;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/evernote/edam/notestore/NoteStore$Iface;->expungeSearch(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    #setter for: Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;->success:I
    invoke-static {v3, v8}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;->access$7502(Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;I)I

    .line 6338
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;->setSuccessIsSet(Z)V
    :try_end_1
    .catch Lcom/evernote/edam/error/EDAMUserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/evernote/edam/error/EDAMSystemException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/evernote/edam/error/EDAMNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    .line 6353
    :goto_0
    new-instance v8, Lorg/apache/thrift/protocol/TMessage;

    const-string v9, "expungeSearch"

    const/4 v10, 0x2

    invoke-direct {v8, v9, v10, p1}, Lorg/apache/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {p3, v8}, Lorg/apache/thrift/protocol/TProtocol;->writeMessageBegin(Lorg/apache/thrift/protocol/TMessage;)V

    .line 6354
    invoke-virtual {v3, p3}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 6355
    invoke-virtual {p3}, Lorg/apache/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 6356
    invoke-virtual {p3}, Lorg/apache/thrift/protocol/TProtocol;->getTransport()Lorg/apache/thrift/transport/TTransport;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/thrift/transport/TTransport;->flush()V

    .line 6357
    .end local v3           #result:Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;
    :goto_1
    return-void

    .line 6325
    :catch_0
    move-exception v1

    .line 6326
    .local v1, e:Lorg/apache/thrift/protocol/TProtocolException;
    invoke-virtual {p2}, Lorg/apache/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 6327
    new-instance v7, Lorg/apache/thrift/TApplicationException;

    const/4 v8, 0x7

    invoke-virtual {v1}, Lorg/apache/thrift/protocol/TProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    .line 6328
    .local v7, x:Lorg/apache/thrift/TApplicationException;
    new-instance v8, Lorg/apache/thrift/protocol/TMessage;

    const-string v9, "expungeSearch"

    invoke-direct {v8, v9, v11, p1}, Lorg/apache/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {p3, v8}, Lorg/apache/thrift/protocol/TProtocol;->writeMessageBegin(Lorg/apache/thrift/protocol/TMessage;)V

    .line 6329
    invoke-virtual {v7, p3}, Lorg/apache/thrift/TApplicationException;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 6330
    invoke-virtual {p3}, Lorg/apache/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 6331
    invoke-virtual {p3}, Lorg/apache/thrift/protocol/TProtocol;->getTransport()Lorg/apache/thrift/transport/TTransport;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/thrift/transport/TTransport;->flush()V

    goto :goto_1

    .line 6339
    .end local v1           #e:Lorg/apache/thrift/protocol/TProtocolException;
    .end local v7           #x:Lorg/apache/thrift/TApplicationException;
    .restart local v3       #result:Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;
    :catch_1
    move-exception v8

    move-object v6, v8

    .line 6340
    .local v6, userException:Lcom/evernote/edam/error/EDAMUserException;
    #setter for: Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;->userException:Lcom/evernote/edam/error/EDAMUserException;
    invoke-static {v3, v6}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;->access$7602(Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;Lcom/evernote/edam/error/EDAMUserException;)Lcom/evernote/edam/error/EDAMUserException;

    goto :goto_0

    .line 6341
    .end local v6           #userException:Lcom/evernote/edam/error/EDAMUserException;
    :catch_2
    move-exception v8

    move-object v4, v8

    .line 6342
    .local v4, systemException:Lcom/evernote/edam/error/EDAMSystemException;
    #setter for: Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;
    invoke-static {v3, v4}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;->access$7702(Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;Lcom/evernote/edam/error/EDAMSystemException;)Lcom/evernote/edam/error/EDAMSystemException;

    goto :goto_0

    .line 6343
    .end local v4           #systemException:Lcom/evernote/edam/error/EDAMSystemException;
    :catch_3
    move-exception v8

    move-object v2, v8

    .line 6344
    .local v2, notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;
    #setter for: Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;
    invoke-static {v3, v2}, Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;->access$7802(Lcom/evernote/edam/notestore/NoteStore$expungeSearch_result;Lcom/evernote/edam/error/EDAMNotFoundException;)Lcom/evernote/edam/error/EDAMNotFoundException;

    goto :goto_0

    .line 6345
    .end local v2           #notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;
    :catch_4
    move-exception v8

    move-object v5, v8

    .line 6346
    .local v5, th:Ljava/lang/Throwable;
    new-instance v7, Lorg/apache/thrift/TApplicationException;

    const/4 v8, 0x6

    const-string v9, "Internal error processing expungeSearch"

    invoke-direct {v7, v8, v9}, Lorg/apache/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    .line 6347
    .restart local v7       #x:Lorg/apache/thrift/TApplicationException;
    new-instance v8, Lorg/apache/thrift/protocol/TMessage;

    const-string v9, "expungeSearch"

    invoke-direct {v8, v9, v11, p1}, Lorg/apache/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {p3, v8}, Lorg/apache/thrift/protocol/TProtocol;->writeMessageBegin(Lorg/apache/thrift/protocol/TMessage;)V

    .line 6348
    invoke-virtual {v7, p3}, Lorg/apache/thrift/TApplicationException;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 6349
    invoke-virtual {p3}, Lorg/apache/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 6350
    invoke-virtual {p3}, Lorg/apache/thrift/protocol/TProtocol;->getTransport()Lorg/apache/thrift/transport/TTransport;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/thrift/transport/TTransport;->flush()V

    goto :goto_1
.end method
