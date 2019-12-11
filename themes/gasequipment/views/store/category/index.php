<?php
/**
 * @var $dataProvider CArrayDataProvider
 */
$this->title = Yii::t('StoreModule.store', 'Product list');
$this->breadcrumbs = [Yii::t('StoreModule.store', 'Product list')];
?>
<section id="protfolio" class="section-full">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="product-area-title text-center">
                    <h2 class="h1"><?= Yii::t('StoreModule.store', 'Product list'); ?></h2>
                </div>
            </div>
        </div>
    </div>
    <div class="catalog__category-item">
        <div id="filter-content" class="row no-gutters mt-70">
            <?php $this->widget('zii.widgets.CListView', [
                'dataProvider' => $dataProvider,
                'itemView' => '_item',
                'template' => '{items} {pager}',
                //'itemsCssClass' => 'catalog__category-items',
                //'pagerCssClass' => 'catalog__pagination',
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
            ]); ?>
        </div>
    </div>
</section>
