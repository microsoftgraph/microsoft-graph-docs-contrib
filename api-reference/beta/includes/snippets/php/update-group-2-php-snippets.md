---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Group;
use Microsoft\Graph\Generated\Models\AssignedLabel;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Group();
$assignedLabelsAssignedLabel1 = new AssignedLabel();
$assignedLabelsAssignedLabel1->setLabelId('45cd0c48-c540-4358-ad79-a3658cdc5b88');
$assignedLabelsArray []= $assignedLabelsAssignedLabel1;
$requestBody->setAssignedLabels($assignedLabelsArray);


$result = $graphServiceClient->groups()->byGroupId('group-id')->patch($requestBody)->wait();

```