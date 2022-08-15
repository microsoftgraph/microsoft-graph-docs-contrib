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
$content->set@odatatype('microsoft.graph.windowsUpdates.featureUpdateReference');

$additionalData = [
'version' => '20H2', 
];
$content->setAdditionalData($additionalData);



$requestBody->setContent($content);
$settings = new DeploymentSettings();
$settings->set@odatatype('microsoft.graph.windowsUpdates.windowsDeploymentSettings');

$settingsRollout = new RolloutSettings();
$settingsRollout->setDevicesPerOffer(100);


$settings->setRollout($settingsRollout);
$settingsMonitoring = new MonitoringSettings();
$monitoringRulesMonitoringRule1 = new MonitoringRule();
$monitoringRulesMonitoringRule1->set@odatatype('#microsoft.graph.windowsUpdates.monitoringRule');

$monitoringRulesMonitoringRule1->setSignal(new MonitoringSignal('rollback'));

$monitoringRulesMonitoringRule1->setThreshold(5);

$monitoringRulesMonitoringRule1->setAction(new MonitoringAction('pausedeployment'));


$monitoringRulesArray []= $monitoringRulesMonitoringRule1;
$settingsMonitoring->setMonitoringRules($monitoringRulesArray);



$settings->setMonitoring($settingsMonitoring);

$requestBody->setSettings($settings);


$requestResult = $graphServiceClient->admin()->windows()->updates()->deployments()->post($requestBody);


```