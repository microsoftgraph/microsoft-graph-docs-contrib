---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RetentionLabel();
$requestBody->setOdataType('#microsoft.graph.security.retentionLabel');

$retentionDuration = new RetentionDuration();
$retentionDuration->setOdataType('microsoft.graph.security.retentionDuration');


$requestBody->setRetentionDuration($retentionDuration);
$requestBody->setDescriptionForAdmins('String');

$requestBody->setDescriptionForUsers('String');

$requestBody->setLabelToBeApplied('String');

$requestBody->setDefaultRecordBehavior(new DefaultRecordBehavior('string'));



$result = $graphServiceClient->security()->labels()->retentionLabels()->byRetentionLabelId('retentionLabel-id')->patch($requestBody);


```