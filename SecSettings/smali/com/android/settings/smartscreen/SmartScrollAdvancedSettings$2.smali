.class Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$2;
.super Landroid/database/ContentObserver;
.source "SmartScrollAdvancedSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$2;->this$0:Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x0

    .line 357
    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$2;->this$0:Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;

    #getter for: Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->access$300(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)Landroid/widget/Switch;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$2;->this$0:Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;

    #getter for: Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->access$200(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smart_scroll"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 358
    return-void
.end method
