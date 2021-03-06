.class public Lcom/citibikenyc/citibike/MoreListFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "MoreListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/actionbarsherlock/app/SherlockFragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "MoreListFragment"


# instance fields
.field faqContainer:Landroid/view/View;

.field private moreItemAdapter:Lcom/citibikenyc/citibike/helpers/MoreItemAdapter;

.field private moreItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/citibikenyc/citibike/models/MoreItem;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 30
    const v5, 0x7f030032

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 31
    .local v4, v:Landroid/view/View;
    const v5, 0x7f050093

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 33
    .local v0, mListView:Landroid/widget/ListView;
    const v5, 0x7f0a0032

    invoke-virtual {p0, v5}, Lcom/citibikenyc/citibike/MoreListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/citibikenyc/citibike/MoreListFragment;->title:Ljava/lang/String;

    .line 34
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MoreListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/citibikenyc/citibike/MoreContent;->getMoreItems(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/citibikenyc/citibike/MoreListFragment;->moreItems:Ljava/util/List;

    .line 36
    const v5, 0x7f030030

    invoke-virtual {p1, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 37
    .local v2, moreHeader:Landroid/view/View;
    const v5, 0x7f03002f

    invoke-virtual {p1, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 39
    .local v1, moreFooter:Landroid/view/View;
    const v5, 0x7f050099

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 40
    .local v3, titleView:Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 41
    iget-object v5, p0, Lcom/citibikenyc/citibike/MoreListFragment;->title:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 48
    new-instance v5, Lcom/citibikenyc/citibike/helpers/MoreItemAdapter;

    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MoreListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f030031

    iget-object v8, p0, Lcom/citibikenyc/citibike/MoreListFragment;->moreItems:Ljava/util/List;

    invoke-direct {v5, v6, v7, v8}, Lcom/citibikenyc/citibike/helpers/MoreItemAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v5, p0, Lcom/citibikenyc/citibike/MoreListFragment;->moreItemAdapter:Lcom/citibikenyc/citibike/helpers/MoreItemAdapter;

    .line 49
    iget-object v5, p0, Lcom/citibikenyc/citibike/MoreListFragment;->moreItemAdapter:Lcom/citibikenyc/citibike/helpers/MoreItemAdapter;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 52
    return-object v4
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 57
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/citibikenyc/citibike/MoreListFragment;->moreItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le p3, v2, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    const-string v2, "MoreListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onItemClick "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/citibikenyc/citibike/MoreListFragment;->moreItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v2, p0, Lcom/citibikenyc/citibike/MoreListFragment;->moreItems:Ljava/util/List;

    add-int/lit8 v3, p3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/citibikenyc/citibike/models/MoreItem;

    .line 65
    .local v1, moreItem:Lcom/citibikenyc/citibike/models/MoreItem;
    iget v2, v1, Lcom/citibikenyc/citibike/models/MoreItem;->resourceId:I

    packed-switch v2, :pswitch_data_0

    .line 81
    :goto_1
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MoreListFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 83
    .local v0, ft:Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f040002

    const v3, 0x7f040003

    const v4, 0x7f040005

    const v5, 0x7f040004

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 84
    const v2, 0x7f050043

    iget-object v3, v1, Lcom/citibikenyc/citibike/models/MoreItem;->fragment:Landroid/support/v4/app/Fragment;

    iget-object v4, v1, Lcom/citibikenyc/citibike/models/MoreItem;->label:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 85
    iget-object v3, v1, Lcom/citibikenyc/citibike/models/MoreItem;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 86
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 67
    .end local v0           #ft:Landroid/support/v4/app/FragmentTransaction;
    :pswitch_0
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v2

    const-string v3, "safety_info_main"

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto :goto_1

    .line 70
    :pswitch_1
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v2

    const-string v3, "more_how_it_works"

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto :goto_1

    .line 73
    :pswitch_2
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v2

    const-string v3, "more_pricing"

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto :goto_1

    .line 76
    :pswitch_3
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v2

    const-string v3, "more_faw"

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto :goto_1

    .line 65
    :pswitch_data_0
    .packed-switch 0x7f0a00ad
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
