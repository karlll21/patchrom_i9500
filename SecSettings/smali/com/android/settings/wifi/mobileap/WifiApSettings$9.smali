.class Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$9;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;

.field final synthetic val$not_show_again:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 725
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$9;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;

    iput-object p2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$9;->val$not_show_again:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x1

    .line 727
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$9;->val$not_show_again:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 728
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$9;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->access$1200(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_0

    .line 729
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$9;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$9;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "SAMSUNG_HOTSPOT"

    iget-object v4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$9;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    #setter for: Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v1, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->access$1202(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 730
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$9;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->access$1200(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 731
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "DONT_DISPLAY_MPCS_WARNING"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 732
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 734
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$9;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;

    const/16 v2, 0x8

    #calls: Lcom/android/settings_ex/SettingsPreferenceFragment;->removeDialog(I)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->access$1300(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;I)V

    .line 735
    return-void
.end method
