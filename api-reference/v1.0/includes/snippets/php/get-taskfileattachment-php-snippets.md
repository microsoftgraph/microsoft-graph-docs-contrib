---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->me()->todo()->lists()->byTodoTaskListId('todoTaskList-id')->tasks()->byTodoTaskId('todoTask-id')->attachments()->byAttachmentBaseId('attachmentBase-id')->get()->wait();

```