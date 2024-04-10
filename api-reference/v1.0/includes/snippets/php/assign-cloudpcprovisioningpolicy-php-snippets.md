---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AssignPostRequestBody;
use Microsoft\Graph\Generated\Models\CloudPcProvisioningPolicyAssignment;
use Microsoft\Graph\Generated\Models\CloudPcManagementGroupAssignmentTarget;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AssignPostRequestBody();
$assignmentsCloudPcProvisioningPolicyAssignment1 = new CloudPcProvisioningPolicyAssignment();
$assignmentsCloudPcProvisioningPolicyAssignment1Target = new CloudPcManagementGroupAssignmentTarget();
$assignmentsCloudPcProvisioningPolicyAssignment1Target->setOdataType('microsoft.graph.cloudPcManagementGroupAssignmentTarget');
$assignmentsCloudPcProvisioningPolicyAssignment1Target->setGroupId('64ff06de-9c00-4a5a-98b5-7f5abe26ffff');
$assignmentsCloudPcProvisioningPolicyAssignment1->setTarget($assignmentsCloudPcProvisioningPolicyAssignment1Target);
$assignmentsArray []= $assignmentsCloudPcProvisioningPolicyAssignment1;
$requestBody->setAssignments($assignmentsArray);


$graphServiceClient->deviceManagement()->virtualEndpoint()->provisioningPolicies()->byCloudPcProvisioningPolicyId('cloudPcProvisioningPolicy-id')->assign()->post($requestBody)->wait();

```