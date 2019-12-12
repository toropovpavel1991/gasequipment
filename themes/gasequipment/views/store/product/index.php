<?php
$mainAssets = Yii::app()->getTheme()->getAssetsUrl();
Yii::app()->getClientScript()->registerScriptFile($mainAssets . '/js/store.js');

/* @var $category StoreCategory */
$this->title = Yii::app()->getModule('store')->metaTitle ?: Yii::t('StoreModule.store', 'Catalog');
$this->description = Yii::app()->getModule('store')->metaDescription;
$this->keywords = Yii::app()->getModule('store')->metaKeyWords;

$this->breadcrumbs = [Yii::t("StoreModule.store", "Catalog")];

?>
<section id="protfolio" class="section-full">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="product-area-title text-center">
                    <h2 class="h1">Продукция</h2>
                </div>
            </div>
        </div>
    </div>
    <div id="filter-content" class="row no-gutters mt-70">
        <div class="mix category-1 col-lg-3 col-md-4 col-sm-6 single-filter-content content-1" data-myorder="1">
            <div class="overlay overlay-bg-content d-flex align-items-center justify-content-center flex-column">
                <a href="">Баллоны отчественные</a>
            </div>
        </div>
        <div class="mix category-1 category-5 category-3 category-5 col-lg-3 col-md-4 col-sm-6 single-filter-content content-2" data-myorder="2">
            <div class="overlay overlay-bg-content d-flex align-items-center justify-content-center flex-column">
                <a href="">Итальянское оборудование и комплектующие</a>
            </div>
        </div>
        <div class="mix category-1 category-5 col-lg-3 col-md-4 col-sm-6 single-filter-content content-3" data-myorder="3">
            <div class="overlay overlay-bg-content d-flex align-items-center justify-content-center flex-column">
                <a href="">Комплектующие ВПРЫСК (н)</a>
            </div>
        </div>
        <div class="mix category-2 category-3 category-6 col-lg-3 col-md-4 col-sm-6 single-filter-content content-4" data-myorder="4">
            <div class="overlay overlay-bg-content d-flex align-items-center justify-content-center flex-column">
                <a href="">Шланги</a>
            </div>
        </div>
        <div class="mix category-1 category-4 category-5 col-lg-3 col-md-4 col-sm-6 single-filter-content content-5" data-myorder="5">
            <div class="overlay overlay-bg-content d-flex align-items-center justify-content-center flex-column">
                <a href="">Электроника Резол</a>
            </div>
        </div>
        <div class="mix category-1 category-3 category-5 category-6 col-lg-3 col-md-4 col-sm-6 single-filter-content content-6" data-myorder="6">
            <div class="overlay overlay-bg-content d-flex align-items-center justify-content-center flex-column">
                <a href="">Смесители</a>
            </div>
        </div>
        <div class="mix category-2 category-4 category-3 col-lg-3 col-md-4 col-sm-6 single-filter-content content-7" data-myorder="7">
            <div class="overlay overlay-bg-content d-flex align-items-center justify-content-center flex-column">
                <a href="">Сервисное оборудование</a>
            </div>
        </div>
        <div class="mix category-2 category-6 category-5 col-lg-3 col-md-4 col-sm-6 single-filter-content content-8" data-myorder="8">
            <div class="overlay overlay-bg-content d-flex align-items-center justify-content-center flex-column">
                <a href="">Ремкомплекты и фильтры</a>
            </div>
        </div>
    </div>
</section>