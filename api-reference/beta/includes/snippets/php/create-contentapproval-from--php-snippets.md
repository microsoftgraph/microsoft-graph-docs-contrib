---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ComplianceChange();
$requestBody->set@odatatype('#microsoft.graph.windowsUpdates.contentApproval');

$additionalData = [
		'content' => $requestBody = new Content();
$		requestBody->set@odatatype('#microsoft.graph.windowsUpdates.catalogContent');

$catalogEntry = new CatalogEntry();
$		catalogEntry->set@odatatype('#microsoft.graph.windowsUpdates.featureUpdateCatalogEntry');

$		catalogEntry->setId('6b7e60db-a8e4-426a-9aed-bd12b5c0b9d4');


$requestBody->setCatalogEntry($catalogEntry);

$requestBody->setContent($content);

		'deploymentSettings' => $requestBody = new DeploymentSettings();

$requestBody->setDeploymentSettings($deploymentSettings);

		'schedule' => $requestBody = new Schedule();
$		requestBody->setStartDateTime('String (timestamp)');

$gradualRollout = new GradualRollout();
$		gradualRollout->set@odatatype('#microsoft.graph.windowsUpdates.dateDrivenRolloutSettings');

$		gradualRollout->setEndDateTime('String (timestamp)');


$requestBody->setGradualRollout($gradualRollout);

$requestBody->setSchedule($schedule);

];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->admin()->windows()->updates()->updatePoliciesById('updatePolicy-id')->complianceChanges()->post($requestBody);


```