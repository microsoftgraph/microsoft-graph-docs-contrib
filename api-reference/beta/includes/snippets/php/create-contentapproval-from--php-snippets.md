---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ContentApproval();
$requestBody->set@odatatype('#microsoft.graph.windowsUpdates.contentApproval');

$content = new CatalogContent();
$content->set@odatatype('#microsoft.graph.windowsUpdates.catalogContent');

$contentCatalogEntry = new FeatureUpdateCatalogEntry();
$contentCatalogEntry->set@odatatype('#microsoft.graph.windowsUpdates.featureUpdateCatalogEntry');

$contentCatalogEntry->setId('6b7e60db-a8e4-426a-9aed-bd12b5c0b9d4');


$content->setCatalogEntry($contentCatalogEntry);

$requestBody->setContent($content);
$deploymentSettings = new DeploymentSettings();

$requestBody->setDeploymentSettings($deploymentSettings);
$additionalData = [
		'schedule' => $requestBody = new Schedule();
$		requestBody->setStartDateTime('String (timestamp)');

$gradualRollout = new GradualRollout();
$		gradualRollout->set@odatatype('#microsoft.graph.windowsUpdates.dateDrivenRolloutSettings');

$		gradualRollout->setEndDateTime('String (timestamp)');


$requestBody->setGradualRollout($gradualRollout);

$requestBody->setSchedule($schedule);

];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->admin()->windows()->updates()->updatePolicies()->byUpdatePolicieId('updatePolicy-id')->complianceChanges()->post($requestBody);


```