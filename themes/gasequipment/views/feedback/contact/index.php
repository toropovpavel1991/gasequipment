<?php
/**
 * @var CActiveForm $form
 */
$this->title = Yii::t('FeedbackModule.feedback', 'Contacts');
$this->breadcrumbs = [Yii::t('FeedbackModule.feedback', 'Contacts')];
Yii::import('application.modules.feedback.FeedbackModule');
Yii::import('application.modules.install.InstallModule');
?>
<section id="contact" class="section-full gray-bg">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="product-area-title text-center">
                    <h2 class="h1"><?= Yii::t('FeedbackModule.feedback', 'Contacts'); ?></h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 mt-30">
                <p>г. Новосибирск:</p>
                <p>630056, г. Новосибирск ул. Варшавская,1 5</p>
                <p>Тел./Факс: (383) 334-66-04; 334-66-05; 334-66-06</p>
                <p>e-mail: nsk@: nsk</p>
            </div>
            <div class="col-lg-6 mt-30">
                <p>г. Новосибирск:</p>
                <p>630056, г. Новосибирск ул. Варшавская,1 5</p>
                <p>Тел./Факс: (383) 334-66-04; 334-66-05; 334-66-06</p>
                <p>e-mail: nsk@: nsk</p>
            </div>
            <div class="col-lg-12 mt-30">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d9185.268076665465!2d82.95898896864388!3d54.86224426778664!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x42dfdc91fe3b39b9%3A0xeca626f1609defb2!2z0YPQuy4g0JLQsNGA0YjQsNCy0YHQutCw0Y8sIDE1LCDQndC-0LLQvtGB0LjQsdC40YDRgdC6LCDQndC-0LLQvtGB0LjQsdC40YDRgdC60LDRjyDQvtCx0LsuLCA2MzAwNTc!5e0!3m2!1sru!2sru!4v1576141819301!5m2!1sru!2sru" width="800" height="600" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
            </div>
        </div>
    </div>
</section>


<?php /*
<div class="main__title grid">
    <h1 class="h2"><?= Yii::t('FeedbackModule.feedback', 'Contacts'); ?></h1>
</div>
<div class="main__catalog grid">
    <div class="grid-module-6">
        <?php $this->widget('yupe\widgets\YFlashMessages'); ?>
    </div>
    <div class="grid-module-6 ">
        <?php $form = $this->beginWidget('CActiveForm', [
            'id' => 'feedback-form',
        ]); ?>

        <p class="alert alert-info fast-order__inputs">
            <?= Yii::t('FeedbackModule.feedback', 'Fields with'); ?> <span
                class="required">*</span> <?= Yii::t('FeedbackModule.feedback', 'are required.'); ?>
        </p>

        <?= $form->errorSummary($model); ?>

        <?php if ($model->type): ?>
            <div class='row'>
                <div class="col-sm-6">
                    <?= $form->dropDownList($model, 'type', [
                        'data' => $module->getTypes(),
                    ]); ?>
                </div>
            </div>
        <?php endif; ?>

        <div class="fast-order__inputs">
            <?= $form->labelEx($model, 'name'); ?>
            <?= $form->textField($model, 'name', ['class' => 'input input_big']); ?>
            <?= $form->error($model, 'name') ?>
        </div>

        <div class="fast-order__inputs">
            <?= $form->labelEx($model, 'email'); ?>
            <?= $form->textField($model, 'email', ['class' => 'input input_big']); ?>
            <?= $form->error($model, 'email') ?>
        </div>

        <div class="fast-order__inputs">
            <?= $form->labelEx($model, 'theme'); ?>
            <?= $form->textField($model, 'theme', ['class' => 'input input_big']); ?>
            <?= $form->error($model, 'theme') ?>
        </div>

        <div class="fast-order__inputs">
            <?= $form->labelEx($model, 'text'); ?>
            <?= $form->textArea($model, 'text', ['class' => 'input input_big', 'rows' => 10]); ?>
            <?= $form->error($model, 'text') ?>
        </div>

        <?php if ($module->showCaptcha && !Yii::app()->getUser()->isAuthenticated()): ?>
            <?php if (CCaptcha::checkRequirements()): ?>
                <div class="fast-order__inputs">
                    <div class="column grid-module-3">
                        <?= $form->textField($model, 'verifyCode', [
                            'class' => 'input input_big',
                            'placeholder' => Yii::t('FeedbackModule.feedback', 'Insert symbols you see on image')
                        ]); ?>
                    </div>
                    <div class="column grid-module-3 pull-right">
                        <?php $this->widget(
                            'CCaptcha',
                            [
                                'showRefreshButton' => true,
                                'imageOptions' => [
                                    'width' => '150',
                                ],
                                'buttonOptions' => [
                                    'class' => 'btn btn_big btn_white pull-right',
                                ],
                                'buttonLabel' => '<i class="fa fa-fw fa-repeat"></i>',
                            ]
                        ); ?>
                    </div>
                </div>
            <?php endif; ?>
        <?php endif; ?>

        <div class="fast-order__inputs">
            <div class="grid-module-3">
                <?= CHtml::submitButton(Yii::t('FeedbackModule.feedback', 'Send message'), [
                    'id' => 'login-btn',
                    'class' => 'btn btn_big btn_wide btn_primary'
                ]) ?>
            </div>
        </div>

        <?php $this->endWidget(); ?>
    </div>
</div>
*/?>