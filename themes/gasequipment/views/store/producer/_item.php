<?php
/**
 * @var Producer $data
 */
$brandUrl = Yii::app()->createUrl('/store/producer/view', ['slug' => $data->slug])
?>

<div class="brand__item">
    <a href="<?= $brandUrl ?>">
        <img src="<?= $data->getImageUrl(120, 120, false); ?>" class="product-mini__img" />
    </a>
    <a href="<?= $brandUrl ?>" class="product-mini__link"><?= CHtml::encode($data->name); ?></a>
</div>