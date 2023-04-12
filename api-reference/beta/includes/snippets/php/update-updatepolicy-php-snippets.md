---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UpdatePolicy();
$requestBody->set@odatatype('#microsoft.graph.windowsUpdates.updatePolicy');

$deploymentSettings = new DeploymentSettings();
$deploymentSettings->set@odatatype('microsoft.graph.windowsUpdates.deploymentSettings');

$deploymentSettingsSchedule = new ScheduleSettings();
$deploymentSettingsScheduleGradualRollout = new GradualRolloutSettings();
$deploymentSettingsScheduleGradualRollout->set@odatatype('#microsoft.graph.windowsUpdates.rateDrivenRolloutSettings');

$deploymentSettingsScheduleGradualRollout->setDurationBetweenOffers(new \DateInterval('P1D'));

$additionalData = [
		'devicePerOffer' => 1000,
];
$deploymentSettingsScheduleGradualRollout->setAdditionalData($additionalData);



$deploymentSettingsSchedule->setGradualRollout($deploymentSettingsScheduleGradualRollout);

$deploymentSettings->setSchedule($deploymentSettingsSchedule);

$requestBody->setDeploymentSettings($deploymentSettings);


$result = $graphServiceClient->admin()->windows()->updates()->updatePoliciesById('updatePolicy-id')->patch($requestBody);


```