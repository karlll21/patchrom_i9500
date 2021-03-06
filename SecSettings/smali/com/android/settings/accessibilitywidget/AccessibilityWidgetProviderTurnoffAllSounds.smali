.class public Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;
.super Landroid/appwidget/AppWidgetProvider;
.source "AccessibilityWidgetProviderTurnoffAllSounds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;
    }
.end annotation


# static fields
.field private static final BUTTON_CENTER:I = 0x1

.field static final TAG:Ljava/lang/String; = "AccessibilityWidgetProviderTurnoffAllSounds"

.field static final THIS_APPWIDGET:Landroid/content/ComponentName; = null

.field public static final TURNOFF_ALLSOUNDS_KEY:Ljava/lang/String; = "all_sound_off"

.field private static sSettingsObserver:Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings_ex"

    const-string v2, "com.android.settings_ex.accessibilitywidget.AccessibilityWidgetProviderTurnoffAllSounds"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->THIS_APPWIDGET:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 226
    return-void
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 81
    const/4 v0, 0x0

    .line 83
    .local v0, views:Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    new-instance v0, Landroid/widget/RemoteViews;

    .end local v0           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040003

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 86
    .restart local v0       #views:Landroid/widget/RemoteViews;
    const-string v1, "AccessibilityWidgetProviderTurnoffAllSounds"

    const-string v2, "buildUpdate PORTRAIT"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    const v1, 0x7f0b000e

    invoke-static {p0, v3}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 96
    invoke-static {v0, p0}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 97
    return-object v0

    .line 90
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    .end local v0           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040002

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 91
    .restart local v0       #views:Landroid/widget/RemoteViews;
    const-string v1, "AccessibilityWidgetProviderTurnoffAllSounds"

    const-string v2, "buildUpdate LANDSCAPE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static checkObserver(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 219
    sget-object v0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->sSettingsObserver:Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->sSettingsObserver:Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;

    .line 221
    sget-object v0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->sSettingsObserver:Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;->startObserving()V

    .line 223
    :cond_0
    return-void
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 5
    .parameter "context"
    .parameter "buttonId"

    .prologue
    const/4 v4, 0x0

    .line 152
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 153
    .local v0, launchIntent:Landroid/content/Intent;
    const-class v2, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 154
    const-string v2, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "custom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 156
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 163
    .local v1, pi:Landroid/app/PendingIntent;
    return-object v1
.end method

.method private static getWidgetMode(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 211
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "all_sound_off"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 213
    .local v0, result:Z
    :cond_0
    const-string v1, "AccessibilityWidgetProviderTurnoffAllSounds"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWidgetMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return v0
.end method

.method private toggleWidgetMode(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 195
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ALL_SOUND_MUTE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, all_sound_off_intent:Landroid/content/Intent;
    invoke-static {p1}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->getWidgetMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "all_sound_off"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 199
    const-string v1, "mute"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 206
    const-string v1, "AccessibilityWidgetProviderTurnoffAllSounds"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toggleWidgetMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->getWidgetMode(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void

    .line 201
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "all_sound_off"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 202
    const-string v1, "mute"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 5
    .parameter "views"
    .parameter "context"

    .prologue
    const v4, 0x7f0b0011

    const v3, 0x7f0b0010

    .line 126
    const v1, 0x7f0b000e

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 127
    const v1, 0x7f090dde

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 129
    invoke-static {p1}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->getWidgetMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    const v1, 0x7f020016

    invoke-virtual {p0, v4, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 131
    const-string v0, "#A4FF21"

    .line 132
    .local v0, strColor:Ljava/lang/String;
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v3, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 133
    const-string v1, "AccessibilityWidgetProviderTurnoffAllSounds"

    const-string v2, "updateButtons , icon_on"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_0
    return-void

    .line 136
    .end local v0           #strColor:Ljava/lang/String;
    :cond_0
    const v1, 0x7f020013

    invoke-virtual {p0, v4, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 137
    const-string v0, "#979797"

    .line 138
    .restart local v0       #strColor:Ljava/lang/String;
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v3, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 139
    const-string v1, "AccessibilityWidgetProviderTurnoffAllSounds"

    const-string v2, "updateButtons , icon_off"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 106
    invoke-static {p0}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 109
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 111
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    const-string v2, "AccessibilityWidgetProviderTurnoffAllSounds"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWidget : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-object v2, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 114
    invoke-static {p0}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->checkObserver(Landroid/content/Context;)V

    .line 115
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    sget-object v0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->sSettingsObserver:Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->sSettingsObserver:Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;->stopObserving()V

    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->sSettingsObserver:Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds$SettingsObserver;

    .line 75
    :cond_0
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 66
    invoke-static {p1}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->checkObserver(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 174
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 176
    const-string v2, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 178
    .local v1, data:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 179
    .local v0, buttonId:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 180
    const-string v2, "AccessibilityWidgetProviderTurnoffAllSounds"

    const-string v3, "BUTTON_CENTER : "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-direct {p0, p1}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->toggleWidgetMode(Landroid/content/Context;)V

    .line 191
    :cond_0
    invoke-static {p1}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->updateWidget(Landroid/content/Context;)V

    .line 192
    .end local v0           #buttonId:I
    .end local v1           #data:Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 5
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 55
    const-string v2, "AccessibilityWidgetProviderTurnoffAllSounds"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUpdate, appWidgetIds.length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {p1}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderTurnoffAllSounds;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 59
    .local v1, view:Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 60
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method
