---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\WindowsUpdates\UpdatePolicy;
use Microsoft\Graph\Beta\Generated\Models\WindowsUpdates\DeploymentAudience;
use Microsoft\Graph\Beta\Generated\Models\WindowsUpdates\ComplianceChange;
use Microsoft\Graph\Beta\Generated\Models\WindowsUpdates\ContentApproval;
use Microsoft\Graph\Beta\Generated\Models\WindowsUpdates\ComplianceChangeRule;
use Microsoft\Graph\Beta\Generated\Models\WindowsUpdates\ContentApprovalRule;
use Microsoft\Graph\Beta\Generated\Models\WindowsUpdates\DriverUpdateFilter;
use Microsoft\Graph\Beta\Generated\Models\WindowsUpdates\DeploymentSettings;
use Microsoft\Graph\Beta\Generated\Models\WindowsUpdates\ScheduleSettings;
use Microsoft\Graph\Beta\Generated\Models\WindowsUpdates\RateDrivenRolloutSettings;


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