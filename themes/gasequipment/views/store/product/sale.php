<?php
$mainAssets = Yii::app()->getTheme()->getAssetsUrl();
Yii::app()->getClientScript()->registerScriptFile($mainAssets . '/js/store.js');

/* @var $category StoreCategory */
$this->title = Yii::app()->getModule('store')->metaTitle ?: Yii::t('StoreModule.store', 'Catalog');
$this->description = Yii::app()->getModule('store')->metaDescription;
$this->keywords = Yii::app()->getModule('store')->metaKeyWords;

$this->breadcrumbs = [Yii::t("StoreModule.store", "Catalog")];

?>
<section class="section-full">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="product-area-title text-center">
                    <h2 class="h1">Акции</h2>
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