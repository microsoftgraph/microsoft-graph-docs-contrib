---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Deployment();
$requestBody->setOdataType('#microsoft.graph.windowsUpdates.deployment');

$settings = new DeploymentSettings();
$settings->setOdataType('microsoft.graph.windowsUpdates.deploymentSettings');

$settingsMonitoring = new MonitoringSettings();
$monitoringRulesMonitoringRule1 = new MonitoringRule();
$monitoringRulesMonitoringRule1->setSignal(new MonitoringSignal('rollback'));

$monitoringRulesMonitoringRule1->setThreshold(5);

$monitoringRulesMonitoringRule1->setAction(new MonitoringAction('pauseDeployment'));


$monitoringRulesArray []= $monitoringRulesMonitoringRule1;
$settingsMonitoring->setMonitoringRules($monitoringRulesArray);



$settings->setMonitoring($settingsMonitoring);

$requestBody->setSettings($settings);


$result = $graphServiceClient->admin()->windows()->updates()->deployments()->byDeploymentId('deployment-id')->patch($requestBody);


```