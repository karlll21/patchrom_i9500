.class final Lcom/kenai/jbosh/ad;
.super Lcom/kenai/jbosh/AbstractBody;


# static fields
.field private static final a:Lcom/kenai/jbosh/t;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/kenai/jbosh/BodyQName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kenai/jbosh/v;

    invoke-direct {v0}, Lcom/kenai/jbosh/v;-><init>()V

    sput-object v0, Lcom/kenai/jbosh/ad;->a:Lcom/kenai/jbosh/t;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/kenai/jbosh/BodyQName;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/kenai/jbosh/AbstractBody;-><init>()V

    iput-object p1, p0, Lcom/kenai/jbosh/ad;->b:Ljava/util/Map;

    iput-object p2, p0, Lcom/kenai/jbosh/ad;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/kenai/jbosh/ad;
    .locals 2

    new-instance v0, Lcom/kenai/jbosh/ad;

    sget-object v1, Lcom/kenai/jbosh/ad;->a:Lcom/kenai/jbosh/t;

    invoke-interface {v1, p0}, Lcom/kenai/jbosh/t;->a(Ljava/lang/String;)Lcom/kenai/jbosh/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kenai/jbosh/u;->a()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/kenai/jbosh/ad;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/kenai/jbosh/BodyQName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kenai/jbosh/ad;->b:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kenai/jbosh/ad;->c:Ljava/lang/String;

    return-object v0
.end method
