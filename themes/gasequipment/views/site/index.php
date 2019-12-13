<?php $this->title = Yii::app()->getModule('yupe')->siteName; ?>
<div class="content body-content">
    <div id="carousel" class="carousel slide row" data-ride="carousel">
      <!-- Индикаторы -->
      <ol class="carousel-indicators row justify-content-start">
        <li data-target="#carousel" data-slide-to="0" class="active"></li>
        <li data-target="#carousel" data-slide-to="1"></li>
        <li data-target="#carousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img class="img-fluid" src="/images/c1.jpg" alt="...">
        </div>
        <div class="carousel-item">
          <img class="img-fluid" src="/images/c3.jpg" alt="...">
        </div>
        <div class="carousel-item">
           <img class="img-fluid" src="/images/c1.jpg" alt="...">
        </div>
      </div>
    </div>
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
                <a href="">Баллоны отчественные</a>
            </div>
            <div class="mix category-1 category-5 category-3 category-5 col-lg-3 col-md-4 col-sm-6 single-filter-content content-2" data-myorder="2">
                <a href="">Итальянское оборудование и комплектующие</a>
            </div>
            <div class="mix category-1 category-5 col-lg-3 col-md-4 col-sm-6 single-filter-content content-3" data-myorder="3">
                <a href="">Комплектующие ВПРЫСК (н)</a>
            </div>
            <div class="mix category-2 category-3 category-6 col-lg-3 col-md-4 col-sm-6 single-filter-content content-4" data-myorder="4">
                <a href="">Шланги</a>
            </div>
            <div class="mix category-1 category-4 category-5 col-lg-3 col-md-4 col-sm-6 single-filter-content content-5" data-myorder="5">
                <a href="">Электроника Резол</a>
            </div>
            <div class="mix category-1 category-3 category-5 category-6 col-lg-3 col-md-4 col-sm-6 single-filter-content content-6" data-myorder="6">
                <a href="">Смесители</a>
            </div>
            <div class="mix category-2 category-4 category-3 col-lg-3 col-md-4 col-sm-6 single-filter-content content-7" data-myorder="7">
                <a href="">Сервисное оборудование</a>
            </div>
            <div class="mix category-2 category-6 category-5 col-lg-3 col-md-4 col-sm-6 single-filter-content content-8" data-myorder="8">
                <a href="">Ремкомплекты и фильтры</a>
            </div>
            <a href="/store/categories" class="full-link">Смотреть все---></a>
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
                <div class="col-md-6">
                    <div class="single-pricing-table">
                        <div class="top">
                            <img src="/images/kotel.jpg" class="action-preview">
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
                <div class="col-md-6">
                    <div class="single-pricing-table">
                        <div class="top">
                            <img src="/images/kotel.jpg" class="action-preview">
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
            <a href="/news" class="full-link">Смотреть все---></a>
        </div>
    </section>
</div>