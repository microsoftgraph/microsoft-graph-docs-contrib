---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AssignPostRequestBody();
$assignmentsCloudPcProvisioningPolicyAssignment1 = new CloudPcProvisioningPolicyAssignment();
$assignmentsCloudPcProvisioningPolicyAssignment1->setId('b0c2d35f-3385-46c8-a6f5-6c3dfad7708b_64ff06de-9c00-4a5a-98b5-7f5abe26ffff');

$assignmentsCloudPcProvisioningPolicyAssignment1Target = new CloudPcManagementGroupAssignmentTarget();
$assignmentsCloudPcProvisioningPolicyAssignment1Target->setOdataType('microsoft.graph.cloudPcManagementGroupAssignmentTarget');

$assignmentsCloudPcProvisioningPolicyAssignment1Target->setGroupId('64ff06de-9c00-4a5a-98b5-7f5abe26ffff');


$assignmentsCloudPcProvisioningPolicyAssignment1->setTarget($assignmentsCloudPcProvisioningPolicyAssignment1Target);

$assignmentsArray []= $assignmentsCloudPcProvisioningPolicyAssignment1;
$requestBody->setAssignments($assignmentsArray);




$graphServiceClient->deviceManagement()->virtualEndpoint()->provisioningPolicies()->byCloudPcProvisioningPolicyId('cloudPcProvisioningPolicy-id')->assign()->post($requestBody);


```