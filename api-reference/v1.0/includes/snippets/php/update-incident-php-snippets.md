---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Microsoft\Graph\Security\Incident
use Microsoft\Graph\Generated\Models\Security\Classification;
use Microsoft\Graph\Generated\Models\Security\Determination;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Incident();
$requestBody->setClassification(new AlertClassification('truePositive'));
$requestBody->setDetermination(new AlertDetermination('multiStagedAttack'));
$requestBody->setCustomTags(['Demo', 	]);

$result = $graphServiceClient->security()->incidents()->byIncidentId('incident-id')->patch($requestBody)->wait();

```