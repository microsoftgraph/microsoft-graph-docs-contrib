---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Task();
$requestBody->setDescription('Add user to selected groups');

$requestBody->setDisplayName('Update marketing day 1 add users to Group set up');



$result = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflowsById('workflow-id')->tasksById('task-id')->patch($requestBody);


```