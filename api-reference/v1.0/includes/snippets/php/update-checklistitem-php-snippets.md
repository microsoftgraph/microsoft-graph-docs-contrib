---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ChecklistItem();
$requestBody->setDisplayName('buy cake');



$result = $graphServiceClient->me()->todo()->lists()->byTodoTaskListId('todoTaskList-id')->tasks()->byTodoTaskId('todoTask-id')->checklistItems()->byChecklistItemId('checklistItem-id')->patch($requestBody);


```