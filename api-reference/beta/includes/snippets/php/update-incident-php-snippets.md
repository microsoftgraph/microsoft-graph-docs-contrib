---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Security\Incident;
use Microsoft\Graph\Beta\Generated\Models\Security\AlertClassification;
use Microsoft\Graph\Beta\Generated\Models\Security\AlertDetermination;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Incident();
$requestBody->setClassification(new AlertClassification('truePositive'));
$requestBody->setDetermination(new AlertDetermination('multiStagedAttack'));
$requestBody->setCustomTags(['Demo', 	]);

$result = $graphServiceClient->security()->incidents()->byIncidentId('incident-id')->patch($requestBody)->wait();

```