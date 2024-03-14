---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ChecklistItem();
$requestBody->setDisplayName('buy cake');

$result = $graphServiceClient->me()->todo()->lists()->byTodoTaskListId('todoTaskList-id')->tasks()->byTodoTaskId('todoTask-id')->checklistItems()->byChecklistItemId('checklistItem-id')->patch($requestBody)->wait();

```