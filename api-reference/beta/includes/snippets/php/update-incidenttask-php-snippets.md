---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Security\IncidentTask;
use Microsoft\Graph\Beta\Generated\Models\Security\IncidentTaskStatus;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new IncidentTask();
$requestBody->setStatus(new IncidentTaskStatus('completed'));

$result = $graphServiceClient->security()->incidentTasks()->byIncidentTaskId('incidentTask-id')->patch($requestBody)->wait();

```