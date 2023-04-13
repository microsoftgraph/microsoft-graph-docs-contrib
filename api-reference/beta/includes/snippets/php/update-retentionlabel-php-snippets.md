---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new RetentionLabel();
$requestBody->set@odatatype('#microsoft.graph.security.retentionLabel');

$retentionDuration = new RetentionDuration();
$retentionDuration->set@odatatype('microsoft.graph.security.retentionDuration');


$requestBody->setRetentionDuration($retentionDuration);
$requestBody->setDescriptionForAdmins('String');

$requestBody->setDescriptionForUsers('String');

$requestBody->setLabelToBeApplied('String');

$requestBody->setDefaultRecordBehavior(new DefaultRecordBehavior('string'));



$result = $graphServiceClient->security()->labels()->retentionLabelsById('retentionLabel-id')->patch($requestBody);


```