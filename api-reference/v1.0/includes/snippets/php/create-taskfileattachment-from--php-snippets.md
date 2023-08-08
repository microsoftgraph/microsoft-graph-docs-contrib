---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TaskFileAttachment();
$requestBody->setOdataType('#microsoft.graph.taskFileAttachment');

$requestBody->setName('smile');

$requestBody->setContentBytes(base64_decode('a0b1c76de9f7='));

$requestBody->setContentType('image/gif');



$result = $graphServiceClient->me()->todo()->lists()->byTodoTaskListId('todoTaskList-id')->tasks()->byTodoTaskId('todoTask-id')->attachments()->post($requestBody);


```