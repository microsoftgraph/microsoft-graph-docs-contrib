---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Deployment();
$requestBody->set@odatatype('#microsoft.graph.windowsUpdates.deployment');

$content = new DeployableContent();
$content->set@odatatype('#microsoft.graph.windowsUpdates.catalogContent');

$additionalData = [
		'catalogEntry' => $content = new CatalogEntry();
$		content->set@odatatype('#microsoft.graph.windowsUpdates.featureUpdateCatalogEntry');

$		content->setId('f341705b-0b15-4ce3-aaf2-6a1681d78606');


$content->setCatalogEntry($catalogEntry);

];
$content->setAdditionalData($additionalData);



$requestBody->setContent($content);
$settings = new DeploymentSettings();
$settings->set@odatatype('microsoft.graph.windowsUpdates.deploymentSettings');

$settingsSchedule = new ScheduleSettings();
$settingsScheduleGradualRollout = new GradualRolloutSettings();
$settingsScheduleGradualRollout->set@odatatype('#microsoft.graph.windowsUpdates.rateDrivenRolloutSettings');

$settingsScheduleGradualRollout->setDurationBetweenOffers(new \DateInterval('P7D'));

$additionalData = [
		'devicePerOffer' => 100,
];
$settingsScheduleGradualRollout->setAdditionalData($additionalData);



$settingsSchedule->setGradualRollout($settingsScheduleGradualRollout);

$settings->setSchedule($settingsSchedule);
$settingsMonitoring = new MonitoringSettings();
$monitoringRulesMonitoringRule1 = new MonitoringRule();
$monitoringRulesMonitoringRule1->setSignal(new MonitoringSignal('rollback'));

$monitoringRulesMonitoringRule1->setThreshold(5);

$monitoringRulesMonitoringRule1->setAction(new MonitoringAction('pausedeployment'));


$monitoringRulesArray []= $monitoringRulesMonitoringRule1;
$settingsMonitoring->setMonitoringRules($monitoringRulesArray);



$settings->setMonitoring($settingsMonitoring);

$requestBody->setSettings($settings);


$result = $graphServiceClient->admin()->windows()->updates()->deployments()->post($requestBody);


```