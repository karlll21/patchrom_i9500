.class public Lcom/touchtype_fluency/SwiftKeySDK;
.super Ljava/lang/Object;
.source "SwiftKeySDK.java"


# static fields
.field public static final customLibName:Ljava/lang/String; = "com.touchtype_fluency.nativeLibraryName"

.field public static final customLocation:Ljava/lang/String; = "com.touchtype_fluency.nativeLibrary"

.field public static final libName:Ljava/lang/String; = "swiftkeysdk-java"

.field public static final libNameInternal:Ljava/lang/String; = "swiftkeysdk-java-internal"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    const-string v0, "com.touchtype_fluency.nativeLibrary"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v1, "com.touchtype_fluency.nativeLibraryName"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    if-eqz v0, :cond_0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load SwiftKey SDK\'s native library from com.touchtype_fluency.nativeLibrary = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/internal/NativeLibLoader;->loadFullPath(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :goto_0
    invoke-static {}, Lcom/touchtype_fluency/SwiftKeySDK;->initIDs()V

    .line 91
    invoke-static {}, Lcom/touchtype_fluency/ModelSetDescription;->initIDs()V

    .line 92
    invoke-static {}, Lcom/touchtype_fluency/Sequence;->initIDs()V

    .line 93
    invoke-static {}, Lcom/touchtype_fluency/TouchHistory;->initIDs()V

    .line 94
    invoke-static {}, Lcom/touchtype_fluency/ResultsFilter;->initIDs()V

    .line 95
    invoke-static {}, Lcom/touchtype_fluency/WordBreakIterator;->initIDs()V

    .line 96
    invoke-static {}, Lcom/touchtype_fluency/internal/PredictorImpl;->initIDs()V

    .line 97
    invoke-static {}, Lcom/touchtype_fluency/internal/CharacterMapImpl;->initIDs()V

    .line 98
    invoke-static {}, Lcom/touchtype_fluency/internal/ParameterSetImpl;->initIDs()V

    .line 99
    invoke-static {}, Lcom/touchtype_fluency/internal/ParameterImpl;->initIDs()V

    .line 100
    invoke-static {}, Lcom/touchtype_fluency/internal/KeyPressModelImpl;->initIDs()V

    .line 101
    invoke-static {}, Lcom/touchtype_fluency/internal/TokenizerImpl;->initIDs()V

    .line 102
    invoke-static {}, Lcom/touchtype_fluency/internal/PunctuatorImpl;->initIDs()V

    .line 103
    return-void

    .line 72
    :cond_0
    if-eqz v1, :cond_1

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load SwiftKey SDK\'s native library as com.touchtype_fluency.nativeLibraryName = \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/touchtype_fluency/internal/NativeLibLoader;->loadLibrary(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_1
    :try_start_0
    const-string v0, "swiftkeysdk-java-internal"

    const-string v1, "Didn\'t find internal library"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/internal/NativeLibLoader;->loadOrUnpack(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 84
    const-string v0, "swiftkeysdk-java"

    const-string v1, "Failed to load SwiftKey SDK\'s native library \"swiftkeysdk-java\" (or \"swiftkeysdk-java-internal\")"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/internal/NativeLibLoader;->loadOrUnpack(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native createSession(Ljava/lang/String;)Lcom/touchtype_fluency/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/touchtype_fluency/LicenseException;
        }
    .end annotation
.end method

.method public static forceInit()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public static native getExpiry(Ljava/lang/String;)J
.end method

.method public static native getVersion()Ljava/lang/String;
.end method

.method private static native initIDs()V
.end method

.method public static native setLoggingListener(Lcom/touchtype_fluency/LoggingListener;)V
.end method
