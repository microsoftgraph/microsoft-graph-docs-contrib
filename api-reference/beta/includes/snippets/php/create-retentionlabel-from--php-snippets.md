---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RetentionLabel();
$requestBody->setOdataType('#microsoft.graph.security.retentionLabel');

$requestBody->setDisplayName('String');

$requestBody->setBehaviorDuringRetentionPeriod(new BehaviorDuringRetentionPeriod('string'));

$requestBody->setActionAfterRetentionPeriod(new ActionAfterRetentionPeriod('string'));

$requestBody->setRetentionTrigger(new RetentionTrigger('string'));

$retentionDuration = new RetentionDuration();
$retentionDuration->setOdataType('microsoft.graph.security.retentionDuration');


$requestBody->setRetentionDuration($retentionDuration);
$requestBody->setIsInUse(boolean);

$requestBody->setDescriptionForAdmins('String');

$requestBody->setDescriptionForUsers('String');

$createdBy = new IdentitySet();
$createdBy->setOdataType('microsoft.graph.identitySet');


$requestBody->setCreatedBy($createdBy);
$requestBody->setLabelToBeApplied('String');

$requestBody->setDefaultRecordBehavior(new DefaultRecordBehavior('string'));

$descriptors = new FilePlanDescriptor();
$additionalData = [
		'authorityTemplate@odata.bind' => 'https://graph.microsoft.com/beta/security/labels/authorities(\'fie3f4fc-b966-4c40-94de-fb8a383658e4\')', 
		'categoryTemplate@odata.bind' => 'https://graph.microsoft.com/beta/security/labels/categories(\'0bjk8-b966-4c40-94de-fb8a383658e4\')', 
		'citationTemplate@odata.bind' => 'https://graph.microsoft.com/beta/security/labels/citations(\'0e23f4fc-b966-4c40-94de-fb8a383658e4\')', 
		'departmentTemplate@odata.bind' => 'https://graph.microsoft.com/beta/security/labels/departments(\'p99ef4fc-b966-4c40-94de-fb8a383658e4\')', 
		'filePlanReferenceTemplate@odata.bind' => 'https://graph.microsoft.com/beta/security/labels/filePlanReferences(\'e095f4fc-b966-4c40-94de-fb8a383658e4\')', 
];
$descriptors->setAdditionalData($additionalData);



$requestBody->setDescriptors($descriptors);


$result = $graphServiceClient->security()->labels()->retentionLabels()->post($requestBody);


```