---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AssignPostRequestBody;
use Microsoft\Graph\Generated\Models\DeviceCompliancePolicyAssignment;
use Microsoft\Graph\Generated\Models\ConfigurationManagerCollectionAssignmentTarget;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AssignPostRequestBody();
$assignmentsDeviceCompliancePolicyAssignment1 = new DeviceCompliancePolicyAssignment();
$assignmentsDeviceCompliancePolicyAssignment1->setOdataType('#microsoft.graph.deviceCompliancePolicyAssignment');
$assignmentsDeviceCompliancePolicyAssignment1->setId('92dc3fef-3fef-92dc-ef3f-dc92ef3fdc92');
$assignmentsDeviceCompliancePolicyAssignment1Target = new ConfigurationManagerCollectionAssignmentTarget();
$assignmentsDeviceCompliancePolicyAssignment1Target->setOdataType('microsoft.graph.configurationManagerCollectionAssignmentTarget');
$assignmentsDeviceCompliancePolicyAssignment1Target->setCollectionId('Collection Id value');
$assignmentsDeviceCompliancePolicyAssignment1->setTarget($assignmentsDeviceCompliancePolicyAssignment1Target);
$assignmentsArray []= $assignmentsDeviceCompliancePolicyAssignment1;
$requestBody->setAssignments($assignmentsArray);


$result = $graphServiceClient->deviceManagement()->deviceCompliancePolicies()->byDeviceCompliancePolicyId('deviceCompliancePolicy-id')->assign()->post($requestBody)->wait();

```