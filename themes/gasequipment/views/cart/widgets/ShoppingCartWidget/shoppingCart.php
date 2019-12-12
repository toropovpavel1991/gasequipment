<?php
$currency = Yii::app()->getModule('store')->currency;
?>
<div class="header__item header-cart js-cart" id="cart-widget" data-cart-widget-url="<?= Yii::app()->createUrl('/cart/cart/widget'); ?>">
    <div class="header-cart__text-wrap">
        <div class="cart-mini" id="cart-mini">
            <?php if (Yii::app()->cart->isEmpty()): ?>
                <p><?= CHtml::link(Yii::t('CartModule.cart', 'There are no products in cart'), ['/cart/cart/index']); ?></p>
            <?php else: ?>
                <?= CHtml::link(Yii::app()->cart->getItemsCount(), ['/cart/cart/index']); ?>
                <div class="cart-mini__bottom">
                    <a href="<?= Yii::app()->createUrl('cart/cart/index'); ?>" class="btn btn_success">
                        <?= Yii::t('CartModule.cart', 'Make an order'); ?>
                    </a>
                </div>
            <?php endif; ?>
        </div>
    </div>
</div>