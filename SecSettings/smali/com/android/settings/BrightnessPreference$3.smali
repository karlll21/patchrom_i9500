.class Lcom/android/settings_ex/BrightnessPreference$3;
.super Landroid/database/ContentObserver;
.source "BrightnessPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/BrightnessPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/BrightnessPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/BrightnessPreference;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/settings_ex/BrightnessPreference$3;->this$0:Lcom/android/settings_ex/BrightnessPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference$3;->this$0:Lcom/android/settings_ex/BrightnessPreference;

    #calls: Lcom/android/settings_ex/BrightnessPreference;->onAutoBrightnessDetailChanged()V
    invoke-static {v0}, Lcom/android/settings_ex/BrightnessPreference;->access$300(Lcom/android/settings_ex/BrightnessPreference;)V

    .line 151
    return-void
.end method
