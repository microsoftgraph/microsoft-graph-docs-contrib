---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AssignPostRequestBody();
$assignments1 = new ();
$additionalData = [
'id' => 'b0c2d35f-3385-46c8-a6f5-6c3dfad7708b_64ff06de-9c00-4a5a-98b5-7f5abe26ffff', 
'target' => $assignments1 = new ();
$		assignments1->set@odatatype('microsoft.graph.cloudPcManagementGroupAssignmentTarget');

$		assignments1->setGroupId('64ff06de-9c00-4a5a-98b5-7f5abe26ffff');


$assignments1->setTarget($target);

];
$assignments1->setAdditionalData($additionalData);



$assignmentsArray []= $assignments1;
$requestBody->setAssignments($assignmentsArray);




$graphServiceClient->deviceManagement()->virtualEndpoint()->userSettingsById('cloudPcUserSetting-id')->assign()->post($requestBody);


```