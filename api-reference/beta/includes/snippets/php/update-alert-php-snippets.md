---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\HealthMonitoring\Alert;
use Microsoft\Graph\Beta\Generated\Models\HealthMonitoring\AlertState;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Alert();
$requestBody->setState(new AlertState('resolved'));

$result = $graphServiceClient->reports()->healthMonitoring()->alerts()->byAlertId('alert-id')->patch($requestBody)->wait();

```