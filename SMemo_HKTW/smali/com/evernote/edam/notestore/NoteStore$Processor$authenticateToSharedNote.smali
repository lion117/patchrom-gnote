.class Lcom/evernote/edam/notestore/NoteStore$Processor$authenticateToSharedNote;
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
    name = "authenticateToSharedNote"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evernote/edam/notestore/NoteStore$Processor;


# direct methods
.method private constructor <init>(Lcom/evernote/edam/notestore/NoteStore$Processor;)V
    .locals 0
    .parameter

    .prologue
    .line 8042
    iput-object p1, p0, Lcom/evernote/edam/notestore/NoteStore$Processor$authenticateToSharedNote;->this$0:Lcom/evernote/edam/notestore/NoteStore$Processor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/evernote/edam/notestore/NoteStore$Processor;Lcom/evernote/edam/notestore/NoteStore$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8042
    invoke-direct {p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Processor$authenticateToSharedNote;-><init>(Lcom/evernote/edam/notestore/NoteStore$Processor;)V

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

    .line 8045
    new-instance v0, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;

    invoke-direct {v0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;-><init>()V

    .line 8047
    .local v0, args:Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->read(Lorg/apache/thrift/protocol/TProtocol;)V
    :try_end_0
    .catch Lorg/apache/thrift/protocol/TProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8057
    invoke-virtual {p2}, Lorg/apache/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 8058
    new-instance v3, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;

    invoke-direct {v3}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;-><init>()V

    .line 8060
    .local v3, result:Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;
    :try_start_1
    iget-object v8, p0, Lcom/evernote/edam/notestore/NoteStore$Processor$authenticateToSharedNote;->this$0:Lcom/evernote/edam/notestore/NoteStore$Processor;

    #getter for: Lcom/evernote/edam/notestore/NoteStore$Processor;->iface_:Lcom/evernote/edam/notestore/NoteStore$Iface;
    invoke-static {v8}, Lcom/evernote/edam/notestore/NoteStore$Processor;->access$30500(Lcom/evernote/edam/notestore/NoteStore$Processor;)Lcom/evernote/edam/notestore/NoteStore$Iface;

    move-result-object v8

    #getter for: Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->guid:Ljava/lang/String;
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->access$45200(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;)Ljava/lang/String;

    move-result-object v9

    #getter for: Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->noteKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;->access$45300(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_args;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/evernote/edam/notestore/NoteStore$Iface;->authenticateToSharedNote(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object v8

    #setter for: Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->success:Lcom/evernote/edam/userstore/AuthenticationResult;
    invoke-static {v3, v8}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->access$23602(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;Lcom/evernote/edam/userstore/AuthenticationResult;)Lcom/evernote/edam/userstore/AuthenticationResult;
    :try_end_1
    .catch Lcom/evernote/edam/error/EDAMUserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/evernote/edam/error/EDAMNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/evernote/edam/error/EDAMSystemException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    .line 8075
    :goto_0
    new-instance v8, Lorg/apache/thrift/protocol/TMessage;

    const-string v9, "authenticateToSharedNote"

    const/4 v10, 0x2

    invoke-direct {v8, v9, v10, p1}, Lorg/apache/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {p3, v8}, Lorg/apache/thrift/protocol/TProtocol;->writeMessageBegin(Lorg/apache/thrift/protocol/TMessage;)V

    .line 8076
    invoke-virtual {v3, p3}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 8077
    invoke-virtual {p3}, Lorg/apache/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 8078
    invoke-virtual {p3}, Lorg/apache/thrift/protocol/TProtocol;->getTransport()Lorg/apache/thrift/transport/TTransport;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/thrift/transport/TTransport;->flush()V

    .line 8079
    .end local v3           #result:Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;
    :goto_1
    return-void

    .line 8048
    :catch_0
    move-exception v1

    .line 8049
    .local v1, e:Lorg/apache/thrift/protocol/TProtocolException;
    invoke-virtual {p2}, Lorg/apache/thrift/protocol/TProtocol;->readMessageEnd()V

    .line 8050
    new-instance v7, Lorg/apache/thrift/TApplicationException;

    const/4 v8, 0x7

    invoke-virtual {v1}, Lorg/apache/thrift/protocol/TProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    .line 8051
    .local v7, x:Lorg/apache/thrift/TApplicationException;
    new-instance v8, Lorg/apache/thrift/protocol/TMessage;

    const-string v9, "authenticateToSharedNote"

    invoke-direct {v8, v9, v11, p1}, Lorg/apache/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {p3, v8}, Lorg/apache/thrift/protocol/TProtocol;->writeMessageBegin(Lorg/apache/thrift/protocol/TMessage;)V

    .line 8052
    invoke-virtual {v7, p3}, Lorg/apache/thrift/TApplicationException;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 8053
    invoke-virtual {p3}, Lorg/apache/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 8054
    invoke-virtual {p3}, Lorg/apache/thrift/protocol/TProtocol;->getTransport()Lorg/apache/thrift/transport/TTransport;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/thrift/transport/TTransport;->flush()V

    goto :goto_1

    .line 8061
    .end local v1           #e:Lorg/apache/thrift/protocol/TProtocolException;
    .end local v7           #x:Lorg/apache/thrift/TApplicationException;
    .restart local v3       #result:Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;
    :catch_1
    move-exception v8

    move-object v6, v8

    .line 8062
    .local v6, userException:Lcom/evernote/edam/error/EDAMUserException;
    #setter for: Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->userException:Lcom/evernote/edam/error/EDAMUserException;
    invoke-static {v3, v6}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->access$23702(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;Lcom/evernote/edam/error/EDAMUserException;)Lcom/evernote/edam/error/EDAMUserException;

    goto :goto_0

    .line 8063
    .end local v6           #userException:Lcom/evernote/edam/error/EDAMUserException;
    :catch_2
    move-exception v8

    move-object v2, v8

    .line 8064
    .local v2, notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;
    #setter for: Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;
    invoke-static {v3, v2}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->access$23802(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;Lcom/evernote/edam/error/EDAMNotFoundException;)Lcom/evernote/edam/error/EDAMNotFoundException;

    goto :goto_0

    .line 8065
    .end local v2           #notFoundException:Lcom/evernote/edam/error/EDAMNotFoundException;
    :catch_3
    move-exception v8

    move-object v4, v8

    .line 8066
    .local v4, systemException:Lcom/evernote/edam/error/EDAMSystemException;
    #setter for: Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->systemException:Lcom/evernote/edam/error/EDAMSystemException;
    invoke-static {v3, v4}, Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;->access$23902(Lcom/evernote/edam/notestore/NoteStore$authenticateToSharedNote_result;Lcom/evernote/edam/error/EDAMSystemException;)Lcom/evernote/edam/error/EDAMSystemException;

    goto :goto_0

    .line 8067
    .end local v4           #systemException:Lcom/evernote/edam/error/EDAMSystemException;
    :catch_4
    move-exception v8

    move-object v5, v8

    .line 8068
    .local v5, th:Ljava/lang/Throwable;
    new-instance v7, Lorg/apache/thrift/TApplicationException;

    const/4 v8, 0x6

    const-string v9, "Internal error processing authenticateToSharedNote"

    invoke-direct {v7, v8, v9}, Lorg/apache/thrift/TApplicationException;-><init>(ILjava/lang/String;)V

    .line 8069
    .restart local v7       #x:Lorg/apache/thrift/TApplicationException;
    new-instance v8, Lorg/apache/thrift/protocol/TMessage;

    const-string v9, "authenticateToSharedNote"

    invoke-direct {v8, v9, v11, p1}, Lorg/apache/thrift/protocol/TMessage;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {p3, v8}, Lorg/apache/thrift/protocol/TProtocol;->writeMessageBegin(Lorg/apache/thrift/protocol/TMessage;)V

    .line 8070
    invoke-virtual {v7, p3}, Lorg/apache/thrift/TApplicationException;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 8071
    invoke-virtual {p3}, Lorg/apache/thrift/protocol/TProtocol;->writeMessageEnd()V

    .line 8072
    invoke-virtual {p3}, Lorg/apache/thrift/protocol/TProtocol;->getTransport()Lorg/apache/thrift/transport/TTransport;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/thrift/transport/TTransport;->flush()V

    goto :goto_1
.end method