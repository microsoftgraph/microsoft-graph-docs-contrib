---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UpdatePolicy();
$requestBody->setOdataType('#microsoft.graph.windowsUpdates.updatePolicy');

$deploymentSettings = new DeploymentSettings();
$deploymentSettings->setOdataType('microsoft.graph.windowsUpdates.deploymentSettings');

$deploymentSettingsSchedule = new ScheduleSettings();
$deploymentSettingsScheduleGradualRollout = new RateDrivenRolloutSettings();
$deploymentSettingsScheduleGradualRollout->setOdataType('#microsoft.graph.windowsUpdates.rateDrivenRolloutSettings');

$deploymentSettingsScheduleGradualRollout->setDurationBetweenOffers(new \DateInterval('P1D'));

$additionalData = [
		'devicePerOffer' => 1000,
];
$deploymentSettingsScheduleGradualRollout->setAdditionalData($additionalData);



$deploymentSettingsSchedule->setGradualRollout($deploymentSettingsScheduleGradualRollout);

$deploymentSettings->setSchedule($deploymentSettingsSchedule);

$requestBody->setDeploymentSettings($deploymentSettings);


$result = $graphServiceClient->admin()->windows()->updates()->updatePolicies()->byUpdatePolicyId('updatePolicy-id')->patch($requestBody);


```