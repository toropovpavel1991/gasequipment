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
                <p>Dramatically reintermediate effective applications after high-payoff core competencies. Authoritatively optimize collaborative benefits for error-free communities. Dramatically reintermediate effective applications after high-payoff core competencies. Authoritatively optimize collaborative benefits for error-free communities.</p>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="address mt-20">
                            <h6 class="text-uppercase mb-15">Physical Address</h6>
                            <p>Emperor Publishing,<br> 56/8, bir uttam qazi nuruzzaman <br> road, Dhaka - 1205</p>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="address mt-20">
                            <h6 class="text-uppercase mb-15">WEb Contact</h6>
                            <a href="tel:0000">012 (88) 017 25 656 565</a> <br>
                            <a href="tel:0000">012 (88) 017 25 656 565</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 mt-30">
                <form id="myForm" action="mail.php" method="post" class="contact-form">
                    <div class="single-input color-2 mb-10">
                        <input type="text" name="fname" placeholder="Full Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Full Name'" required>
                    </div>
                    <div class="single-input color-2 mb-10">
                        <input type="email" name="email" placeholder="Email Address" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email Address'" required>
                    </div>
                    <div class="single-input color-2 mb-10">
                        <input type="text" name="subject" placeholder="Subject" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Subject'" required>
                    </div>

                    <div class="single-input color-2 mb-10">
                        <textarea name="message" placeholder="Type your message here..." onfocus="this.placeholder = ''" onblur="this.placeholder = 'Type your message here...'" required></textarea>
                    </div>
                    <div class="d-flex justify-content-end"><button class="mt-10 primary-btn d-inline-flex text-uppercase align-items-center">Send Message<span class="lnr lnr-arrow-right"></span></button></div>
                    <div class="alert"></div>
                </form>
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