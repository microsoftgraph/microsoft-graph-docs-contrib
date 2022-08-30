---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Microsoft\Graph\Security\Alert
use Microsoft\Graph\Beta\Generated\Models\Security\Classification;
use Microsoft\Graph\Beta\Generated\Models\Security\Determination;
use Microsoft\Graph\Beta\Generated\Models\Security\Status;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Alert();
$requestBody->setAssignedTo('secAdmin@contoso.com');
$requestBody->setClassification(new AlertClassification('truePositive'));
$requestBody->setDetermination(new AlertDetermination('malware'));
$requestBody->setStatus(new AlertStatus('inProgress'));

$result = $graphServiceClient->security()->alerts_v2()->byAlertId('alert-id')->patch($requestBody)->wait();

```