<?php
/**
 * @var CActiveDataProvider $brands
 */
$this->title = Yii::t('StoreModule.store', 'Producers list');
$this->breadcrumbs = [
    Yii::t("StoreModule.store", 'Catalog') => ['/store/product/index'],
    Yii::t('StoreModule.store', 'Producers list')
];

?>
<section class="section-full production">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="product-area-title text-center">
                    <h2 class="h1"><?= Yii::t('StoreModule.store', 'Producers list'); ?></h2>
                </div>
            </div>
        </div>
        <?php
            $this->widget('zii.widgets.CListView', [
                'dataProvider' => $brands,
                'itemView' => '_item',
                'template' => '{items} {pager}',
                'itemsCssClass' => 'catalog__items',
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
        ]); ?>
    </div>
</section>