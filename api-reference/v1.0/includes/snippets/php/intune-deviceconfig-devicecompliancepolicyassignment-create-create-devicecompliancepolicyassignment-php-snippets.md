---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new DeviceCompliancePolicyAssignment();
$requestBody->set@odatatype('#microsoft.graph.deviceCompliancePolicyAssignment');

$target = new ConfigurationManagerCollectionAssignmentTarget();
$target->set@odatatype('microsoft.graph.configurationManagerCollectionAssignmentTarget');

$target->setCollectionId('Collection Id value');


$requestBody->setTarget($target);


$result = $graphServiceClient->deviceManagement()->deviceCompliancePolicies()->byDeviceCompliancePolicieId('deviceCompliancePolicy-id')->assignments()->post($requestBody);


```