.class Lcom/android/settings_ex/flipfont/FontListActivity$4;
.super Ljava/lang/Object;
.source "FontListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/flipfont/FontListActivity;->selectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/flipfont/FontListActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/flipfont/FontListActivity;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/settings_ex/flipfont/FontListActivity$4;->this$0:Lcom/android/settings_ex/flipfont/FontListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListActivity$4;->this$0:Lcom/android/settings_ex/flipfont/FontListActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings_ex/flipfont/FontListActivity;->mSelectDialogIsActive:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/flipfont/FontListActivity;->access$002(Lcom/android/settings_ex/flipfont/FontListActivity;Z)Z

    .line 391
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListActivity$4;->this$0:Lcom/android/settings_ex/flipfont/FontListActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/flipfont/FontListActivity;->savePreferences()V

    .line 392
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 393
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListActivity$4;->this$0:Lcom/android/settings_ex/flipfont/FontListActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/flipfont/FontListActivity;->onCancelButtonPressed()V

    .line 394
    return-void
.end method
