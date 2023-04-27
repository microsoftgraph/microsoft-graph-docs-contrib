---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Group();
$assignedLabelsAssignedLabel1 = new AssignedLabel();
$assignedLabelsAssignedLabel1->setLabelId('45cd0c48-c540-4358-ad79-a3658cdc5b88');


$assignedLabelsArray []= $assignedLabelsAssignedLabel1;
$requestBody->setAssignedLabels($assignedLabelsArray);




$result = $graphServiceClient->groupsById('group-id')->patch($requestBody);


```