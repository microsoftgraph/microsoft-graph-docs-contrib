---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ChecklistItem();
$requestBody->setDisplayName('Final sign-off from the team');



$requestResult = $graphServiceClient->me()->tasks()->listsById('baseTaskList-id')->tasksById('baseTask-id')->checklistItems()->post($requestBody);


```