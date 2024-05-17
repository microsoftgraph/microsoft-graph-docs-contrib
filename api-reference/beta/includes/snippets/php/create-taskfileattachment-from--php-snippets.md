---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\TaskFileAttachment;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TaskFileAttachment();
$requestBody->setOdataType('#microsoft.graph.taskFileAttachment');
$requestBody->setName('smile');
$requestBody->setContentBytes(\GuzzleHttp\Psr7\Utils::streamFor(base64_decode('a0b1c76de9f7=')));
$requestBody->setContentType('image/gif');

$result = $graphServiceClient->me()->todo()->lists()->byTodoTaskListId('todoTaskList-id')->tasks()->byTodoTaskId('todoTask-id')->attachments()->post($requestBody)->wait();

```