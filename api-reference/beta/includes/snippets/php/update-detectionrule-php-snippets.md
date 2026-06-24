---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Security\DetectionRule;
use Microsoft\Graph\Beta\Generated\Models\Security\QueryCondition;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DetectionRule();
$queryCondition = new QueryCondition();
$queryCondition->setQueryText('DeviceProcessEvents | where InitiatingProcessFileName in~ (\'winword.exe\',\'excel.exe\',\'outlook.exe\') | where FileName == \'powershell.exe\' | where ProcessCommandLine has \'-enc\'');
$requestBody->setQueryCondition($queryCondition);
$additionalData = [
	'status' => 'disabled',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->security()->rules()->detectionRules()->byDetectionRuleId('detectionRule-id')->patch($requestBody)->wait();

```