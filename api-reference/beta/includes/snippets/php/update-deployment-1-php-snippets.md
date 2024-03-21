---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Deployment();
$requestBody->setOdataType('#microsoft.graph.windowsUpdates.deployment');
$state = new DeploymentState();
$state->setOdataType('microsoft.graph.windowsUpdates.deploymentState');
$state->setRequestedValue(new RequestedDeploymentStateValue('paused'));
$requestBody->setState($state);

$result = $graphServiceClient->admin()->windows()->updates()->deployments()->byDeploymentId('deployment-id')->patch($requestBody)->wait();

```