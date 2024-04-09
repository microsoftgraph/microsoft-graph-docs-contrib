---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\UpdatePolicy;
use Microsoft\Graph\Generated\Models\DeploymentAudience;
use Microsoft\Graph\Generated\Models\ComplianceChange;
use Microsoft\Graph\Generated\Models\ContentApproval;
use Microsoft\Graph\Generated\Models\ComplianceChangeRule;
use Microsoft\Graph\Generated\Models\ContentApprovalRule;
use Microsoft\Graph\Generated\Models\DriverUpdateFilter;
use Microsoft\Graph\Generated\Models\DeploymentSettings;
use Microsoft\Graph\Generated\Models\ScheduleSettings;
use Microsoft\Graph\Generated\Models\RateDrivenRolloutSettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UpdatePolicy();
$requestBody->setOdataType('#microsoft.graph.windowsUpdates.updatePolicy');
$audience = new DeploymentAudience();
$audience->setId('8c4eb1eb-d7a3-4633-8e2f-f926e82df08e');
$requestBody->setAudience($audience);
$complianceChangesComplianceChange1 = new ContentApproval();
$complianceChangesComplianceChange1->setOdataType('#microsoft.graph.windowsUpdates.contentApproval');
$complianceChangesArray []= $complianceChangesComplianceChange1;
$requestBody->setComplianceChanges($complianceChangesArray);

$complianceChangeRulesComplianceChangeRule1 = new ContentApprovalRule();
$complianceChangeRulesComplianceChangeRule1->setOdataType('#microsoft.graph.windowsUpdates.contentApprovalRule');
$complianceChangeRulesComplianceChangeRule1ContentFilter = new DriverUpdateFilter();
$complianceChangeRulesComplianceChangeRule1ContentFilter->setOdataType('#microsoft.graph.windowsUpdates.driverUpdateFilter');
$complianceChangeRulesComplianceChangeRule1->setContentFilter($complianceChangeRulesComplianceChangeRule1ContentFilter);
$complianceChangeRulesComplianceChangeRule1->setDurationBeforeDeploymentStart(new \DateInterval('P7D'));
$complianceChangeRulesArray []= $complianceChangeRulesComplianceChangeRule1;
$requestBody->setComplianceChangeRules($complianceChangeRulesArray);

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

$result = $graphServiceClient->admin()->windows()->updates()->updatePolicies()->post($requestBody)->wait();

```