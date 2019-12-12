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
</section>