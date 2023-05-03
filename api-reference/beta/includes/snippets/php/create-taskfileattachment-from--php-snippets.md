---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AttachmentBase();
$requestBody->set@odatatype('#microsoft.graph.taskFileAttachment');

$requestBody->setName('smile');

$requestBody->setContentType('image/gif');

$additionalData = [
		'contentBytes' => 'a0b1c76de9f7=', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->me()->todo()->listsById('todoTaskList-id')->tasksById('todoTask-id')->attachments()->post($requestBody);


```