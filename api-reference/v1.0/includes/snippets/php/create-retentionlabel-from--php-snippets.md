---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Security\RetentionLabel;
use Microsoft\Graph\Generated\Models\Security\BehaviorDuringRetentionPeriod;
use Microsoft\Graph\Generated\Models\Security\ActionAfterRetentionPeriod;
use Microsoft\Graph\Generated\Models\Security\RetentionTrigger;
use Microsoft\Graph\Generated\Models\Security\RetentionDurationInDays;
use Microsoft\Graph\Generated\Models\Security\DispositionReviewStage;
use Microsoft\Graph\Generated\Models\Security\FilePlanDescriptor;
use Microsoft\Graph\Generated\Models\Security\DefaultRecordBehavior;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RetentionLabel();
$requestBody->setOdataType('#microsoft.graph.security.retentionLabel');
$requestBody->setDisplayName('Retention Schedule 10005');
$requestBody->setBehaviorDuringRetentionPeriod(new BehaviorDuringRetentionPeriod('retain'));
$requestBody->setActionAfterRetentionPeriod(new ActionAfterRetentionPeriod('startDispositionReview'));
$requestBody->setRetentionTrigger(new RetentionTrigger('dateOfEvent'));
$retentionDuration = new RetentionDurationInDays();
$retentionDuration->setOdataType('microsoft.graph.security.retentionDurationInDays');
$retentionDuration->setDays(2555);
$requestBody->setRetentionDuration($retentionDuration);
$dispositionReviewStagesDispositionReviewStage1 = new DispositionReviewStage();
$dispositionReviewStagesDispositionReviewStage1->setStageNumber(1);
$dispositionReviewStagesDispositionReviewStage1->setName('Stage1');
$additionalData = [
	'reviewersEmailAddresses ' => [
'Admin@contoso.onmicrosoft.com', ],
];
$dispositionReviewStagesDispositionReviewStage1->setAdditionalData($additionalData);
$dispositionReviewStagesArray []= $dispositionReviewStagesDispositionReviewStage1;
$requestBody->setDispositionReviewStages($dispositionReviewStagesArray);

$requestBody->setDescriptionForAdmins('retain for 7 years');
$requestBody->setDescriptionForUsers('retain for 7 years');
$descriptors = new FilePlanDescriptor();
$additionalData = [
'authorityTemplate@odata.bind' => 'https://graph.microsoft.com/v1.0/security/labels/authorities(\'fie3f4fc-b966-4c40-94de-fb8a383658e4\')',
'categoryTemplate@odata.bind' => 'https://graph.microsoft.com/v1.0/security/labels/categories(\'0bjk8-b966-4c40-94de-fb8a383658e4\')',
'citationTemplate@odata.bind' => 'https://graph.microsoft.com/v1.0/security/labels/citations(\'0e23f4fc-b966-4c40-94de-fb8a383658e4\')',
'departmentTemplate@odata.bind' => 'https://graph.microsoft.com/v1.0/security/labels/departments(\'p99ef4fc-b966-4c40-94de-fb8a383658e4\')',
'filePlanReferenceTemplate@odata.bind' => 'https://graph.microsoft.com/v1.0/security/labels/filePlanReferences(\'e095f4fc-b966-4c40-94de-fb8a383658e4\')',
];
$descriptors->setAdditionalData($additionalData);
$requestBody->setDescriptors($descriptors);
$requestBody->setDefaultRecordBehavior(new DefaultRecordBehavior('startLocked'));
$additionalData = [
'retentionEventType@odata.bind' => 'https://graph.microsoft.com/v1.0/security/triggerTypes/retentionEventTypes(\'e095f4fc-b966-4c40-94de-fb8a383658e4\')',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->security()->labels()->retentionLabels()->post($requestBody)->wait();

```