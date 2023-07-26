---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AssignPostRequestBody();
$assignmentsCloudPcUserSettingAssignment1 = new CloudPcUserSettingAssignment();
$assignmentsCloudPcUserSettingAssignment1->setId('b0c2d35f-3385-46c8-a6f5-6c3dfad7708b_64ff06de-9c00-4a5a-98b5-7f5abe26ffff');

$assignmentsCloudPcUserSettingAssignment1Target = new CloudPcManagementGroupAssignmentTarget();
$assignmentsCloudPcUserSettingAssignment1Target->setOdataType('microsoft.graph.cloudPcManagementGroupAssignmentTarget');

$assignmentsCloudPcUserSettingAssignment1Target->setGroupId('64ff06de-9c00-4a5a-98b5-7f5abe26ffff');


$assignmentsCloudPcUserSettingAssignment1->setTarget($assignmentsCloudPcUserSettingAssignment1Target);

$assignmentsArray []= $assignmentsCloudPcUserSettingAssignment1;
$requestBody->setAssignments($assignmentsArray);




$graphServiceClient->deviceManagement()->virtualEndpoint()->userSettings()->byCloudPcUserSettingId('cloudPcUserSetting-id')->assign()->post($requestBody);


```