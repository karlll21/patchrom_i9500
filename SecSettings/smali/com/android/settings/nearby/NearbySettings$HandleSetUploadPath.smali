.class Lcom/android/settings_ex/nearby/NearbySettings$HandleSetUploadPath;
.super Ljava/lang/Object;
.source "NearbySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/nearby/NearbySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleSetUploadPath"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/nearby/NearbySettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/nearby/NearbySettings;)V
    .locals 0

    .prologue
    .line 1722
    iput-object p1, p0, Lcom/android/settings_ex/nearby/NearbySettings$HandleSetUploadPath;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/nearby/NearbySettings;Lcom/android/settings_ex/nearby/NearbySettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1722
    invoke-direct {p0, p1}, Lcom/android/settings_ex/nearby/NearbySettings$HandleSetUploadPath;-><init>(Lcom/android/settings_ex/nearby/NearbySettings;)V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1726
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/nearby/NearbySettings$HandleSetUploadPath;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings_ex/nearby/IMediaServer;
    invoke-static {v4}, Lcom/android/settings_ex/nearby/NearbySettings;->access$000(Lcom/android/settings_ex/nearby/NearbySettings;)Lcom/android/settings_ex/nearby/IMediaServer;

    move-result-object v4

    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    instance-of v4, p2, Ljava/lang/String;

    if-nez v4, :cond_1

    .line 1756
    :cond_0
    :goto_0
    return v2

    .line 1730
    :cond_1
    const/4 v1, 0x0

    .line 1732
    .local v1, path:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1734
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/settings_ex/nearby/NearbySettings;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Nearby"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1735
    iget-object v4, p0, Lcom/android/settings_ex/nearby/NearbySettings$HandleSetUploadPath;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings_ex/nearby/NearbySettings;->access$400(Lcom/android/settings_ex/nearby/NearbySettings;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "NearbyDownloadTo"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1750
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/nearby/NearbySettings$HandleSetUploadPath;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings_ex/nearby/IMediaServer;
    invoke-static {v4}, Lcom/android/settings_ex/nearby/NearbySettings;->access$000(Lcom/android/settings_ex/nearby/NearbySettings;)Lcom/android/settings_ex/nearby/IMediaServer;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/settings_ex/nearby/IMediaServer;->setUploadPath(Ljava/lang/String;)Ljava/lang/String;

    move v2, v3

    .line 1756
    goto :goto_0

    .line 1737
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1739
    sget-object v4, Lcom/android/settings_ex/nearby/NearbySettings;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v5, Lcom/android/settings_ex/nearby/NearbySettings;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1741
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/settings_ex/nearby/NearbySettings;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Nearby"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1743
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/nearby/NearbySettings$HandleSetUploadPath;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings_ex/nearby/NearbySettings;->access$400(Lcom/android/settings_ex/nearby/NearbySettings;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "NearbyDownloadTo"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1752
    .end local v1           #path:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1753
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AllshareSetting: "

    const-string v4, "HandleSetUploadPath"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1746
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #path:Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v3, "AllshareSetting: "

    const-string v4, "HandleSetUploadPath"

    const-string v5, "incorrect value"

    invoke-static {v3, v4, v5}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method