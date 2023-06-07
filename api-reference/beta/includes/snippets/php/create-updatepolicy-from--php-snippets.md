---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UpdatePolicy();
$requestBody->set@odatatype('#microsoft.graph.windowsUpdates.updatePolicy');

$audience = new DeploymentAudience();
$audience->setId('8c4eb1eb-d7a3-4633-8e2f-f926e82df08e');


$requestBody->setAudience($audience);
$complianceChangesComplianceChange1 = new ComplianceChange();
$complianceChangesComplianceChange1->set@odatatype('#microsoft.graph.windowsUpdates.contentApproval');


$complianceChangesArray []= $complianceChangesComplianceChange1;
$requestBody->setComplianceChanges($complianceChangesArray);


$complianceChangeRulesComplianceChangeRule1 = new ComplianceChangeRule();
$complianceChangeRulesComplianceChangeRule1->set@odatatype('#microsoft.graph.windowsUpdates.contentApprovalRule');

$additionalData = [
	'contentFilter' => $complianceChangeRulesComplianceChangeRule1 = new ContentFilter();
$	complianceChangeRulesComplianceChangeRule1->set@odatatype('#microsoft.graph.windowsUpdates.driverUpdateFilter');


$complianceChangeRulesComplianceChangeRule1->setContentFilter($contentFilter);

	'durationBeforeDeploymentStart' => 'P7D', 
];
$complianceChangeRulesComplianceChangeRule1->setAdditionalData($additionalData);



$complianceChangeRulesArray []= $complianceChangeRulesComplianceChangeRule1;
$requestBody->setComplianceChangeRules($complianceChangeRulesArray);


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


$result = $graphServiceClient->admin()->windows()->updates()->updatePolicies()->post($requestBody);


```