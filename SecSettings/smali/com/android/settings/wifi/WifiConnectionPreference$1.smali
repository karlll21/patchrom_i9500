.class Lcom/android/settings_ex/wifi/WifiConnectionPreference$1;
.super Ljava/lang/Object;
.source "WifiConnectionPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiConnectionPreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiConnectionPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiConnectionPreference;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiConnectionPreference$1;->this$0:Lcom/android/settings_ex/wifi/WifiConnectionPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 79
    const v2, 0x1010004

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 80
    .local v1, rb:Landroid/widget/RadioButton;
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 82
    .local v0, isChecked:Z
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiConnectionPreference;->access$000()Landroid/widget/CompoundButton;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 83
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 86
    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 87
    return-void

    .line 83
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
