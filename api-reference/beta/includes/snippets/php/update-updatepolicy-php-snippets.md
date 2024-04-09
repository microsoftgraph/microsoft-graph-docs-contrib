---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\UpdatePolicy;
use Microsoft\Graph\Generated\Models\DeploymentSettings;
use Microsoft\Graph\Generated\Models\ScheduleSettings;
use Microsoft\Graph\Generated\Models\RateDrivenRolloutSettings;


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

$result = $graphServiceClient->admin()->windows()->updates()->updatePolicies()->byUpdatePolicyId('updatePolicy-id')->patch($requestBody)->wait();

```