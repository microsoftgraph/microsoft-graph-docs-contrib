---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Incident();
$requestBody->setClassification(new AlertClassification('truePositive'));
$requestBody->setDetermination(new AlertDetermination('multiStagedAttack'));
$requestBody->setCustomTags(['Demo', 	]);

$result = $graphServiceClient->security()->incidents()->byIncidentId('incident-id')->patch($requestBody)->wait();

```