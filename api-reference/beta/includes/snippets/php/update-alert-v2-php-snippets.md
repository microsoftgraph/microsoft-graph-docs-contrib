---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Security\Alert;
use Microsoft\Graph\Beta\Generated\Models\Security\AlertClassification;
use Microsoft\Graph\Beta\Generated\Models\Security\AlertDetermination;
use Microsoft\Graph\Beta\Generated\Models\Security\AlertStatus;
use Microsoft\Graph\Beta\Generated\Models\Security\Dictionary;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Alert();
$requestBody->setAssignedTo('secAdmin@contoso.com');
$requestBody->setClassification(new AlertClassification('truePositive'));
$requestBody->setDetermination(new AlertDetermination('malware'));
$requestBody->setStatus(new AlertStatus('inProgress'));
$customDetails = new Dictionary();
$additionalData = [
	'newKey' => 'newValue',
];
$customDetails->setAdditionalData($additionalData);
$requestBody->setCustomDetails($customDetails);

$result = $graphServiceClient->security()->alerts_v2()->byAlertId('alert-id')->patch($requestBody)->wait();

```