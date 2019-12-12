<?php $this->title = Yii::app()->getModule('yupe')->siteName; ?>
<div class="content body-content">
    <div id="carousel" class="carousel slide" data-ride="carousel">
      <!-- Индикаторы -->
      <ol class="carousel-indicators">
        <li data-target="#carousel" data-slide-to="0" class="active"></li>
        <li data-target="#carousel" data-slide-to="1"></li>
        <li data-target="#carousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img class="img-fluid" src="/images/kotel.jpg" alt="...">
        </div>
        <div class="carousel-item">
          <img class="img-fluid" src="/images/c3.jpg" alt="...">
        </div>
        <div class="carousel-item">
           <img class="img-fluid" src="/images/c1.jpg" alt="...">
        </div>
      </div>
      <!-- Элементы управления -->
      <a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Предыдущий</span>
      </a>
      <a class="carousel-control-next" href="#carousel" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Следующий</span>
      </a>
    </div>
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
    <section class="section-full studio-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="studio-content">
                        <h2 class="h1 text-white text-uppercase mb-20">О компании</h2>
                        <p class="text-white mb-30">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar tempor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam fermentum, nulla luctus pharetra vulputate, felis tellus mollis orci, sed rhoncus sapien nunc eget odio.


Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar tempor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam fermentum, nulla luctus pharetra vulputate, felis tellus mollis orci, sed rhoncus sapien nunc eget odio.


Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar tempor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam fermentum, nulla luctus pharetra vulputate, felis tellus mollis orci, sed rhoncus sapien nunc eget odio.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
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
</div>