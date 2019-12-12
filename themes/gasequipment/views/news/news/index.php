<?php
$this->title = Yii::app()->getModule('news')->metaTitle ?: Yii::t('NewsModule.news', 'News');
$this->description = Yii::app()->getModule('news')->metaDescription;
$this->keywords = Yii::app()->getModule('news')->metaKeyWords;

$this->breadcrumbs = [Yii::t('NewsModule.news', 'News')];
?>
<section class="section-full">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="product-area-title text-center">
                    <h2 class="h1"><?= Yii::t('NewsModule.news', 'News'); ?></h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="single-pricing-table">
                    <div class="top">
                        
                    </div>

                    <div class="bottom text-center">
                        <ul class="feature text-center">
                            <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                            Aenean euismod bibendum laoreet. 
                            Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. 
                            Proin sodales pulvinar tempor.</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="single-pricing-table">
                    <div class="top">
                        
                    </div>

                    <div class="bottom text-center">
                        <ul class="feature text-center">
                            <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                            Aenean euismod bibendum laoreet. 
                            Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. 
                            Proin sodales pulvinar tempor.</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="single-pricing-table">
                    <div class="top">
                        
                    </div>

                    <div class="bottom text-center">
                        <ul class="feature text-center">
                            <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                            Aenean euismod bibendum laoreet. 
                            Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. 
                            Proin sodales pulvinar tempor.</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<?/*
<div class="main__title grid">
    <h1 class="h2"><?= Yii::t('NewsModule.news', 'News'); ?></h1>
</div>
<div class="main__catalog grid">
    <?php
    $this->widget(
        'zii.widgets.CListView',
        [
            'dataProvider' => $dataProvider,
            'itemView' => '_item',
            'template' => "{items}\n{pager}",
            'summaryText' => '',
            'enableHistory' => true,
            'cssFile' => false,
            'pagerCssClass' => 'catalog__pagination',
            'pager' => [
                'header' => '',
                'prevPageLabel' => '<i class="fa fa-long-arrow-left"></i>',
                'nextPageLabel' => '<i class="fa fa-long-arrow-right"></i>',
                'firstPageLabel' => false,
                'lastPageLabel' => false,
                'htmlOptions' => [
                    'class' => 'pagination'
                ]
            ]
        ]
    ); ?>
</div>
*/?>
