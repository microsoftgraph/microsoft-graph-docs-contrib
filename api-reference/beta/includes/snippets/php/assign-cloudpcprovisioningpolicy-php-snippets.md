---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AssignPostRequestBody();
$assignmentsCloudPcProvisioningPolicyAssignment1 = new CloudPcProvisioningPolicyAssignment();
$assignmentsCloudPcProvisioningPolicyAssignment1->setId('b0c2d35f-3385-46c8-a6f5-6c3dfad7708b_64ff06de-9c00-4a5a-98b5-7f5abe26ffff');

$assignmentsCloudPcProvisioningPolicyAssignment1Target = new CloudPcManagementAssignmentTarget();
$assignmentsCloudPcProvisioningPolicyAssignment1Target->set@odatatype('microsoft.graph.cloudPcManagementGroupAssignmentTarget');

$additionalData = [
		'groupId' => '64ff06de-9c00-4a5a-98b5-7f5abe26ffff', 
];
$assignmentsCloudPcProvisioningPolicyAssignment1Target->setAdditionalData($additionalData);



$assignmentsCloudPcProvisioningPolicyAssignment1->setTarget($assignmentsCloudPcProvisioningPolicyAssignment1Target);

$assignmentsArray []= $assignmentsCloudPcProvisioningPolicyAssignment1;
$requestBody->setAssignments($assignmentsArray);


$additionalData = [
	'@odata.type' => '#microsoft.graph.cloudPcProvisioningPolicyAssignment', 
];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->deviceManagement()->virtualEndpoint()->provisioningPoliciesById('cloudPcProvisioningPolicy-id')->assign()->post($requestBody);


```