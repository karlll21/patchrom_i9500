.class final Lcom/google/common/cache/LocalCache$1;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Lcom/google/common/cache/LocalCache$ValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/cache/LocalCache$ValueReference",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFor(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ValueReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/cache/LocalCache$ValueReference",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 698
    .local p1, queue:Ljava/lang/ref/ReferenceQueue;,"Ljava/lang/ref/ReferenceQueue<Ljava/lang/Object;>;"
    .local p2, entry:Lcom/google/common/cache/LocalCache$ReferenceEntry;,"Lcom/google/common/cache/LocalCache$ReferenceEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 682
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEntry()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 692
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    .prologue
    .line 687
    const/4 v0, 0x0

    return v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 708
    const/4 v0, 0x0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 703
    const/4 v0, 0x0

    return v0
.end method

.method public notifyNewValue(Ljava/lang/Object;)V
    .locals 0
    .parameter "newValue"

    .prologue
    .line 717
    return-void
.end method

.method public waitForValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 713
    const/4 v0, 0x0

    return-object v0
.end method
