<?php
/**
 * @var Producer $brand
 * @var CActiveDataProvider $products
 */

$mainAssets = Yii::app()->getTheme()->getAssetsUrl();
Yii::app()->getClientScript()->registerScriptFile($mainAssets . '/js/store.js');

$this->title = $brand->meta_title ?: $brand->name;
$this->description = $brand->meta_description;
$this->keywords = $brand->meta_keywords;

$this->breadcrumbs = [
    Yii::t("StoreModule.store", 'Catalog') => ['/store/product/index'],
    Yii::t('StoreModule.store', 'Producers list') => ['/store/producer/index'],
    Yii::t('StoreModule.store', 'The products of the manufacturer') . CHtml::encode($brand->name)
];

?>
<div class="container mt-30">
    <div class="row justify-content-center">
        <div class="col-lg-8">
            <div class="product-area-title text-center">
                <h2 class="h1"><?= CHtml::encode($brand->name) ?></h2>
            </div>
        </div>
    </div>
    <div class="row">
    	<div class="col-lg-8">
            <?= $brand->description ?>
        </div>
    </div>
    <div class="row mb-40">
    	<div class="col-lg-4">
            <img src="<?= StoreImage::producer($brand, 435, 250);?>" alt="<?= CHtml::encode($brand->name); ?>">
        </div>
    </div>
</div>