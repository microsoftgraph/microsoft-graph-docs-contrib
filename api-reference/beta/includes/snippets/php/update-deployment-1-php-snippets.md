---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Deployment();
$requestBody->set@odatatype('#microsoft.graph.windowsUpdates.deployment');

$state = new DeploymentState();
$state->set@odatatype('microsoft.graph.windowsUpdates.deploymentState');

$state->setRequestedValue(new RequestedDeploymentStateValue('paused'));


$requestBody->setState($state);


$result = $graphServiceClient->admin()->windows()->updates()->deploymentsById('deployment-id')->patch($requestBody);


```