---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\DeviceCompliancePolicyAssignment;
use Microsoft\Graph\Generated\Models\ConfigurationManagerCollectionAssignmentTarget;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeviceCompliancePolicyAssignment();
$requestBody->setOdataType('#microsoft.graph.deviceCompliancePolicyAssignment');
$target = new ConfigurationManagerCollectionAssignmentTarget();
$target->setOdataType('microsoft.graph.configurationManagerCollectionAssignmentTarget');
$target->setCollectionId('Collection Id value');
$requestBody->setTarget($target);

$result = $graphServiceClient->deviceManagement()->deviceCompliancePolicies()->byDeviceCompliancePolicyId('deviceCompliancePolicy-id')->assignments()->post($requestBody)->wait();

```