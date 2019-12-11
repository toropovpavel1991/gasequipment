<?/*
<div class="catalog__category-item">
    <?php if ($data['icon']): ?>
        <a href="<?= $data['url']; ?>">
            <img src="<?= $data['icon']; ?>" alt="<?= $data['icon_alt']; ?>" title="<?= $data['icon_title']; ?>"/>
        </a>
    <?php endif; ?>
    <a href="<?= $data['url']; ?>" class="catalog__category-item-title"><?= CHtml::encode($data['label']); ?></a>
    <?php if ($data['items']): ?>
        <ul>
            <?php foreach ($data['items'] as $item): ?>
                <li><a href="<?= $item['url'] ?>"><?= $item['label'] ?></a></li>
            <?php endforeach; ?>
        </ul>
    <?php endif; ?>
</div>
*/?>
<?/*
<?echo '<pre>';?>
<?print_r($data);?>
<?echo '</pre>';?>
*/?>
<div class="mix col-lg-3 col-md-4 col-sm-6 single-filter-content content-1">
    <div class="overlay overlay-bg-content d-flex align-items-center justify-content-center flex-column">
        <a href="<?= $data['url']; ?>"><?= CHtml::encode($data['label']); ?></a>
    </div>
</div>