.class public Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabInfo"
.end annotation


# instance fields
.field private mAppStorage:J

.field public mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

.field public final mApplicationsState:Lcom/android/settings_ex/applications/ApplicationsState;

.field public final mClickListener:Lcom/android/settings_ex/applications/AppClickListener;

.field private mColorBar:Lcom/android/settings_ex/applications/LinearColorBar;

.field public final mComputingSizeStr:Ljava/lang/CharSequence;

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field public final mFilter:I

.field private mFreeStorage:J

.field private mFreeStorageText:Landroid/widget/TextView;

.field public mInflater:Landroid/view/LayoutInflater;

.field public final mInvalidSizeStr:Ljava/lang/CharSequence;

.field public final mLabel:Ljava/lang/CharSequence;

.field private mLastAppStorage:J

.field private mLastFreeStorage:J

.field private mLastUsedStorage:J

.field private mListContainer:Landroid/view/View;

.field public final mListType:I

.field private mListView:Landroid/widget/ListView;

.field private mLoadingContainer:Landroid/view/View;

.field public final mOwner:Lcom/android/settings_ex/applications/ManageApplications;

.field public mRootView:Landroid/view/View;

.field final mRunningProcessesAvail:Ljava/lang/Runnable;

.field private mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

.field private final mSavedInstanceState:Landroid/os/Bundle;

.field private mStorageChartLabel:Landroid/widget/TextView;

.field private mTotalStorage:J

.field private mUsedStorageText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/applications/ManageApplications;Lcom/android/settings_ex/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings_ex/applications/AppClickListener;Landroid/os/Bundle;)V
    .locals 2
    .parameter "owner"
    .parameter "apps"
    .parameter "label"
    .parameter "listType"
    .parameter "clickListener"
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v0, 0x0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-wide v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorage:J

    iput-wide v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mAppStorage:J

    iput-wide v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mTotalStorage:J

    .line 225
    new-instance v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo$1;-><init>(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesAvail:Ljava/lang/Runnable;

    .line 234
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ex/applications/ManageApplications;

    .line 235
    iput-object p2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplicationsState:Lcom/android/settings_ex/applications/ApplicationsState;

    .line 236
    iput-object p3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLabel:Ljava/lang/CharSequence;

    .line 237
    iput p4, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListType:I

    .line 238
    packed-switch p4, :pswitch_data_0

    .line 241
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFilter:I

    .line 243
    :goto_0
    iput-object p5, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mClickListener:Lcom/android/settings_ex/applications/AppClickListener;

    .line 244
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0906ab

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 245
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0906aa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mComputingSizeStr:Ljava/lang/CharSequence;

    .line 246
    iput-object p6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mSavedInstanceState:Landroid/os/Bundle;

    .line 247
    return-void

    .line 239
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFilter:I

    goto :goto_0

    .line 240
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFilter:I

    goto :goto_0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)Lcom/android/settings_ex/applications/RunningProcessesView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method applyCurrentStorage()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const-wide/16 v7, -0x1

    .line 423
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    if-nez v3, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-wide v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mTotalStorage:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    .line 427
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mColorBar:Lcom/android/settings_ex/applications/LinearColorBar;

    iget-wide v4, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mTotalStorage:J

    iget-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorage:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mAppStorage:J

    sub-long/2addr v4, v6

    long-to-float v4, v4

    iget-wide v5, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mTotalStorage:J

    long-to-float v5, v5

    div-float/2addr v4, v5

    iget-wide v5, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mAppStorage:J

    long-to-float v5, v5

    iget-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mTotalStorage:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    iget-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorage:J

    long-to-float v6, v6

    iget-wide v7, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mTotalStorage:J

    long-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/settings_ex/applications/LinearColorBar;->setRatios(FFF)V

    .line 429
    iget-wide v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mTotalStorage:J

    iget-wide v5, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorage:J

    sub-long v1, v3, v5

    .line 430
    .local v1, usedStorage:J
    iget-wide v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLastUsedStorage:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_2

    .line 431
    iput-wide v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLastUsedStorage:J

    .line 432
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, sizeStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mUsedStorageText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0906cd

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v0, v6, v10

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    .end local v0           #sizeStr:Ljava/lang/String;
    :cond_2
    iget-wide v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLastFreeStorage:J

    iget-wide v5, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorage:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 438
    iget-wide v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorage:J

    iput-wide v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLastFreeStorage:J

    .line 439
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorage:J

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 441
    .restart local v0       #sizeStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorageText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0906cc

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v0, v6, v10

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 445
    .end local v0           #sizeStr:Ljava/lang/String;
    .end local v1           #usedStorage:J
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mColorBar:Lcom/android/settings_ex/applications/LinearColorBar;

    invoke-virtual {v3, v9, v9, v9}, Lcom/android/settings_ex/applications/LinearColorBar;->setRatios(FFF)V

    .line 446
    iget-wide v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLastUsedStorage:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_4

    .line 447
    iput-wide v7, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLastUsedStorage:J

    .line 448
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mUsedStorageText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    :cond_4
    iget-wide v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLastFreeStorage:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_0

    .line 451
    iput-wide v7, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLastFreeStorage:J

    .line 452
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorageText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "contentParent"
    .parameter "contentChild"

    .prologue
    const/4 v4, 0x1

    .line 255
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 256
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    .line 302
    :goto_0
    return-object v2

    .line 259
    :cond_0
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mInflater:Landroid/view/LayoutInflater;

    .line 260
    iget v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v2, v4, :cond_4

    const v2, 0x7f0400b1

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    .line 263
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const v3, 0x7f0b01f2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    .line 264
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 265
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const v3, 0x7f0b01ed

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    .line 266
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 268
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 269
    .local v0, emptyView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 270
    .local v1, lv:Landroid/widget/ListView;
    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 273
    :cond_1
    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 274
    invoke-virtual {v1, v4}, Landroid/view/View;->setSaveEnabled(Z)V

    .line 275
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 276
    invoke-virtual {v1, v4}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 277
    iput-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    .line 278
    new-instance v2, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplicationsState:Lcom/android/settings_ex/applications/ApplicationsState;

    iget v4, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFilter:I

    invoke-direct {v2, v3, p0, v4}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;-><init>(Lcom/android/settings_ex/applications/ApplicationsState;Lcom/android/settings_ex/applications/ManageApplications$TabInfo;I)V

    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    .line 279
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 280
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 281
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v3, 0x7f0b01ee

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/LinearColorBar;

    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mColorBar:Lcom/android/settings_ex/applications/LinearColorBar;

    .line 282
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v3, 0x7f0b01f0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mStorageChartLabel:Landroid/widget/TextView;

    .line 283
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v3, 0x7f0b01ef

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mUsedStorageText:Landroid/widget/TextView;

    .line 284
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v3, 0x7f0b01f1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorageText:Landroid/widget/TextView;

    .line 287
    iget v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFilter:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 288
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mStorageChartLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f09007f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->applyCurrentStorage()V

    .line 296
    .end local v0           #emptyView:Landroid/view/View;
    .end local v1           #lv:Landroid/widget/ListView;
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const v3, 0x7f0b01f8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/RunningProcessesView;

    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    .line 298
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    if-eqz v2, :cond_3

    .line 299
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/applications/RunningProcessesView;->doCreate(Landroid/os/Bundle;)V

    .line 302
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    goto/16 :goto_0

    .line 260
    :cond_4
    const v2, 0x7f0400ae

    goto/16 :goto_1

    .line 291
    .restart local v0       #emptyView:Landroid/view/View;
    .restart local v1       #lv:Landroid/widget/ListView;
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mStorageChartLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f090694

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public detachView()V
    .locals 2

    .prologue
    .line 306
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 308
    .local v0, group:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 309
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 312
    .end local v0           #group:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method handleRunningProcessesAvail()V
    .locals 3

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 465
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, 0x10a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 467
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 469
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 459
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mClickListener:Lcom/android/settings_ex/applications/AppClickListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/settings_ex/applications/AppClickListener;->onItemClick(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 460
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/RunningProcessesView;->doPause()V

    .line 336
    :cond_1
    return-void
.end method

.method public resume(I)V
    .locals 5
    .parameter "sortOrder"

    .prologue
    const/4 v4, 0x0

    .line 315
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p1}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->resume(I)V

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    if-eqz v1, :cond_1

    .line 319
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ex/applications/ManageApplications;

    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesAvail:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/applications/RunningProcessesView;->doResume(Landroid/app/Fragment;Ljava/lang/Runnable;)Z

    move-result v0

    .line 320
    .local v0, haveData:Z
    if-eqz v0, :cond_2

    .line 321
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 322
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 327
    .end local v0           #haveData:Z
    :cond_1
    :goto_0
    return-void

    .line 324
    .restart local v0       #haveData:Z
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setContainerService(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 0
    .parameter "containerService"

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    .line 251
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 252
    return-void
.end method

.method updateStorageUsage()V
    .locals 21

    .prologue
    .line 339
    const/4 v7, 0x0

    .line 341
    .local v7, extPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v15}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    if-nez v15, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v15, :cond_0

    .line 345
    const-wide/16 v15, 0x0

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorage:J

    .line 346
    const-wide/16 v15, 0x0

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mAppStorage:J

    .line 347
    const-wide/16 v15, 0x0

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mTotalStorage:J

    .line 349
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFilter:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 352
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v15}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string v16, "storage"

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/storage/StorageManager;

    .line 354
    .local v11, sm:Landroid/os/storage/StorageManager;
    if-nez v11, :cond_2

    .line 355
    const-string v15, "ManageApplications"

    const-string v16, "Couldn\'t get StorageManager Service"

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 359
    :cond_2
    invoke-virtual {v11}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v14

    .line 360
    .local v14, storageVolumes:[Landroid/os/storage/StorageVolume;
    move-object v4, v14

    .local v4, arr$:[Landroid/os/storage/StorageVolume;
    array-length v10, v4

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_1
    if-ge v9, v10, :cond_4

    aget-object v13, v4, v9

    .line 361
    .local v13, storageVolume:Landroid/os/storage/StorageVolume;
    const-string v15, "sd"

    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 362
    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 360
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 371
    .end local v13           #storageVolume:Landroid/os/storage/StorageVolume;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    if-eqz v15, :cond_5

    .line 373
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    invoke-interface {v15, v7}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v12

    .line 375
    .local v12, stats:[J
    const/4 v15, 0x0

    aget-wide v15, v12, v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mTotalStorage:J

    .line 376
    const/4 v15, 0x1

    aget-wide v15, v12, v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorage:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    .end local v12           #stats:[J
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v15, :cond_a

    .line 383
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v15}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v2

    .line 384
    .local v2, N:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    if-ge v8, v2, :cond_a

    .line 385
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v15, v8}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    move-result-object v3

    .line 386
    .local v3, ae:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mAppStorage:J

    iget-wide v0, v3, Lcom/android/settings_ex/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    move-wide/from16 v17, v0

    iget-wide v0, v3, Lcom/android/settings_ex/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    iget-wide v0, v3, Lcom/android/settings_ex/applications/ApplicationsState$SizeInfo;->externalCacheSize:J

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    add-long v15, v15, v17

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mAppStorage:J

    .line 384
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 377
    .end local v2           #N:I
    .end local v3           #ae:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    .end local v8           #i:I
    :catch_0
    move-exception v5

    .line 378
    .local v5, e:Landroid/os/RemoteException;
    const-string v15, "ManageApplications"

    const-string v16, "Problem in container service"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 391
    .end local v4           #arr$:[Landroid/os/storage/StorageVolume;
    .end local v5           #e:Landroid/os/RemoteException;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v11           #sm:Landroid/os/storage/StorageManager;
    .end local v14           #storageVolumes:[Landroid/os/storage/StorageVolume;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    if-eqz v15, :cond_7

    .line 393
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v12

    .line 395
    .restart local v12       #stats:[J
    const/4 v15, 0x0

    aget-wide v15, v12, v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mTotalStorage:J

    .line 396
    const/4 v15, 0x1

    aget-wide v15, v12, v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorage:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 403
    .end local v12           #stats:[J
    :cond_7
    :goto_4
    const/4 v6, 0x0

    .line 405
    .local v6, emulatedStorage:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v15, :cond_9

    .line 406
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v15}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v2

    .line 407
    .restart local v2       #N:I
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_5
    if-ge v8, v2, :cond_9

    .line 408
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v15, v8}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    move-result-object v3

    .line 409
    .restart local v3       #ae:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mAppStorage:J

    iget-wide v0, v3, Lcom/android/settings_ex/applications/ApplicationsState$SizeInfo;->codeSize:J

    move-wide/from16 v17, v0

    iget-wide v0, v3, Lcom/android/settings_ex/applications/ApplicationsState$SizeInfo;->dataSize:J

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    add-long v15, v15, v17

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mAppStorage:J

    .line 410
    if-eqz v6, :cond_8

    .line 411
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mAppStorage:J

    iget-wide v0, v3, Lcom/android/settings_ex/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    move-wide/from16 v17, v0

    iget-wide v0, v3, Lcom/android/settings_ex/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    add-long v15, v15, v17

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mAppStorage:J

    .line 407
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 397
    .end local v2           #N:I
    .end local v3           #ae:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    .end local v6           #emulatedStorage:Z
    .end local v8           #i:I
    :catch_1
    move-exception v5

    .line 398
    .restart local v5       #e:Landroid/os/RemoteException;
    const-string v15, "ManageApplications"

    const-string v16, "Problem in container service"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 415
    .end local v5           #e:Landroid/os/RemoteException;
    .restart local v6       #emulatedStorage:Z
    :cond_9
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorage:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplicationsState:Lcom/android/settings_ex/applications/ApplicationsState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings_ex/applications/ApplicationsState;->sumCacheSizes()J

    move-result-wide v17

    add-long v15, v15, v17

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorage:J

    .line 418
    .end local v6           #emulatedStorage:Z
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->applyCurrentStorage()V

    goto/16 :goto_0
.end method
