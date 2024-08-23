---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\WindowsUpdates\Deployment;
use Microsoft\Graph\Beta\Generated\Models\WindowsUpdates\DeploymentState;
use Microsoft\Graph\Beta\Generated\Models\WindowsUpdates\RequestedDeploymentStateValue;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Deployment();
$requestBody->setOdataType('#microsoft.graph.windowsUpdates.deployment');
$state = new DeploymentState();
$state->setOdataType('microsoft.graph.windowsUpdates.deploymentState');
$state->setRequestedValue(new RequestedDeploymentStateValue('paused'));
$requestBody->setState($state);

$result = $graphServiceClient->admin()->windows()->updates()->deployments()->byDeploymentId('deployment-id')->patch($requestBody)->wait();

```