---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new RetentionLabel();
$requestBody->set@odatatype('#microsoft.graph.security.retentionLabel');

$requestBody->setDisplayName('String');

$requestBody->setBehaviorDuringRetentionPeriod(new BehaviorDuringRetentionPeriod('string'));

$requestBody->setActionAfterRetentionPeriod(new ActionAfterRetentionPeriod('string'));

$requestBody->setRetentionTrigger(new RetentionTrigger('string'));

$retentionDuration = new RetentionDuration();
$retentionDuration->set@odatatype('microsoft.graph.security.retentionDuration');


$requestBody->setRetentionDuration($retentionDuration);
$requestBody->setIsInUse(boolean);

$requestBody->setDescriptionForAdmins('String');

$requestBody->setDescriptionForUsers('String');

$createdBy = new IdentitySet();
$createdBy->set@odatatype('microsoft.graph.identitySet');


$requestBody->setCreatedBy($createdBy);
$requestBody->setLabelToBeApplied('String');

$requestBody->setDefaultRecordBehavior(new DefaultRecordBehavior('string'));



$result = $graphServiceClient->security()->labels()->retentionLabels()->post($requestBody);


```