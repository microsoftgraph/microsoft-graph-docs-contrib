---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ScheduleActionsForRulesPostRequestBody();
$deviceComplianceScheduledActionForRulesDeviceComplianceScheduledActionForRule1 = new DeviceComplianceScheduledActionForRule();
$deviceComplianceScheduledActionForRulesDeviceComplianceScheduledActionForRule1->setOdataType('#microsoft.graph.deviceComplianceScheduledActionForRule');
$deviceComplianceScheduledActionForRulesDeviceComplianceScheduledActionForRule1->setId('f0075d5e-5d5e-f007-5e5d-07f05e5d07f0');
$deviceComplianceScheduledActionForRulesDeviceComplianceScheduledActionForRule1->setRuleName('Rule Name value');
$deviceComplianceScheduledActionForRulesArray []= $deviceComplianceScheduledActionForRulesDeviceComplianceScheduledActionForRule1;
$requestBody->setDeviceComplianceScheduledActionForRules($deviceComplianceScheduledActionForRulesArray);


$graphServiceClient->deviceManagement()->deviceCompliancePolicies()->byDeviceCompliancePolicyId('deviceCompliancePolicy-id')->scheduleActionsForRules()->post($requestBody)->wait();

```