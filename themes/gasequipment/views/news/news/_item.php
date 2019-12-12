<?php
/* @var $data News */
$url = Yii::app()->createUrl('/news/news/view', ['slug' => $data->slug]);
?>
<?php //var_dump($data);?>
<div class="fast-order__inputs">
	<img src="/images/kotel.jpg">
    <p> <?= $data->full_text; ?></p>
</div>