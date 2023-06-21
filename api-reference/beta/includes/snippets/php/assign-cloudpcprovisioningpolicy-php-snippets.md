---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CloudPcProvisioningPolicyAssignment();
$requestBody->set@odatatype('#microsoft.graph.cloudPcProvisioningPolicyAssignment');

$additionalData = [
		'assignments' => $assignments1 = new ();
$		assignments1->setId('b0c2d35f-3385-46c8-a6f5-6c3dfad7708b_64ff06de-9c00-4a5a-98b5-7f5abe26ffff');

$assignments1Target = new Target();
$		assignments1Target->set@odatatype('microsoft.graph.cloudPcManagementGroupAssignmentTarget');

$		assignments1Target->setGroupId('64ff06de-9c00-4a5a-98b5-7f5abe26ffff');


$assignments1->setTarget($assignments1Target);

$assignmentsArray []= $assignments1;
$requestBody->setAssignments($assignmentsArray);


];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->deviceManagement()->virtualEndpoint()->provisioningPolicies()->byProvisioningPolicieId('cloudPcProvisioningPolicy-id')->assign()->post($requestBody);


```