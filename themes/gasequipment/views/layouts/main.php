<!DOCTYPE html>
<html lang="<?= Yii::app()->getLanguage(); ?>">

<head>
    <?php
    \yupe\components\TemplateEvent::fire(ShopThemeEvents::HEAD_START);

    Yii::app()->getClientScript()->registerCssFile($this->mainAssets . '/styles/bootstrap.css');
    Yii::app()->getClientScript()->registerCssFile($this->mainAssets . '/styles/animate.css');
    Yii::app()->getClientScript()->registerCssFile($this->mainAssets . '/styles/linearicons.css');
    Yii::app()->getClientScript()->registerCssFile($this->mainAssets . '/styles/owl.carousel.css');
    Yii::app()->getClientScript()->registerCssFile('https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.css');
    Yii::app()->getClientScript()->registerCssFile($this->mainAssets . '/styles/main.css');

    Yii::app()->getClientScript()->registerCoreScript('jquery');
    ?>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title><?= $this->title;?></title>
    <meta name="description" content="<?= $this->description;?>" />
    <meta name="keywords" content="<?= $this->keywords;?>" />
    <?php if ($this->canonical): ?>
        <link rel="canonical" href="<?= $this->canonical ?>" />
    <?php endif; ?>

    <script type="text/javascript">
        var yupeTokenName = '<?= Yii::app()->getRequest()->csrfTokenName;?>';
        var yupeToken = '<?= Yii::app()->getRequest()->getCsrfToken();?>';
        var yupeCartDeleteProductUrl = '<?= Yii::app()->createUrl('/cart/cart/delete/')?>';
        var yupeCartUpdateUrl = '<?= Yii::app()->createUrl('/cart/cart/update/')?>';
        var yupeCartWidgetUrl = '<?= Yii::app()->createUrl('/cart/cart/widget/')?>';
    </script>
    <?php \yupe\components\TemplateEvent::fire(ShopThemeEvents::HEAD_END);?>
</head>

<body>
<?php \yupe\components\TemplateEvent::fire(ShopThemeEvents::BODY_START);?>
    <header class="default-header">
        <div class="sticky-header">
            <div class="container">
                <div class="logo">
                    <a href="/" class="smooth"><img src="/images/logo.png" alt=""></a>
                </div>
                <div class="search relative">
                    <? $this->widget('application.modules.zendsearch.widgets.SearchBlockWidget'); ?>
                </div>
                <div class="mail">
                    <a href="mailto:mail@mail.ru" class="mailto">mail@mail.ru</a>
                    <a href="tel:+7(3852) 11-11-11" class="tel">+7(3852) 11-11-11</a>,
                    <a href="tel:+7(999) 999-88-88" class="tel">+7(999) 999-88-88</a>
                </div>
                <div class="cart">
                    <? $this->widget('application.modules.cart.widgets.ShoppingCartWidget'); ?>
                </div>
            </div>
            <nav class="top-menu">
            <?php if (Yii::app()->hasModule('menu')): ?>
                <?php $this->widget('application.modules.menu.widgets.MenuWidget', ['name' => 'top-menu']); ?>
            <?php endif;?>
            </nav>
        </div>
    </header>

    <?= $content ?>

    <footer class="section-full">
        <div class="container">
            <div class="row">
                <? $this->widget('application.modules.zendsearch.widgets.SearchBlockWidget'); ?>
                <nav class="top-menu">
                <?php if (Yii::app()->hasModule('menu')): ?>
                    <?php $this->widget('application.modules.menu.widgets.MenuWidget', ['name' => 'top-menu']); ?>
                <?php endif;?>
                </nav>
            </div>
        </div>
    </footer>
    <?php \yupe\components\TemplateEvent::fire(ShopThemeEvents::BODY_END);?>
    <div class='notifications top-right' id="notifications"></div>
    <?php
    Yii::app()->getClientScript()->registerScriptFile($this->mainAssets . '/js/vendor/jquery-2.2.4.min.js', CClientScript::POS_END);
    Yii::app()->getClientScript()->registerScriptFile($this->mainAssets . '/js/vendor/bootstrap.min.js', CClientScript::POS_END);
    Yii::app()->getClientScript()->registerScriptFile($this->mainAssets . '/js/jquery.ajaxchimp.min.js', CClientScript::POS_END);
    Yii::app()->getClientScript()->registerScriptFile($this->mainAssets . '/js/jquery.sticky.js', CClientScript::POS_END);
    Yii::app()->getClientScript()->registerScriptFile($this->mainAssets . '/js/main.js', CClientScript::POS_END);
    Yii::app()->getClientScript()->registerScriptFile($this->mainAssets . '/js/mixitup.min.js', CClientScript::POS_END);
    Yii::app()->getClientScript()->registerScriptFile($this->mainAssets . '/js/owl.carousel.min.js', CClientScript::POS_END);
    ?>
</body>
</html>
