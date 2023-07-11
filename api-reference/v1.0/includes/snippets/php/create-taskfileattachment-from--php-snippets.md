---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new TaskFileAttachment();
$requestBody->set@odatatype('#microsoft.graph.taskFileAttachment');

$requestBody->setName('smile');

$requestBody->setContentBytes(base64_decode('a0b1c76de9f7='));

$requestBody->setContentType('image/gif');



$result = $graphServiceClient->me()->todo()->lists()->byListId('todoTaskList-id')->tasks()->byTaskId('todoTask-id')->attachments()->post($requestBody);


```