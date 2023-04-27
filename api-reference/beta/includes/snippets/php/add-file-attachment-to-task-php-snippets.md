---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Attachment();
$requestBody->set@odatatype('#microsoft.graph.fileAttachment');

$requestBody->setName('menu.txt');

$additionalData = [
		'contentBytes' => 'bWFjIGFuZCBjaGVlc2UgdG9kYXk=', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->me()->outlook()->tasksById('outlookTask-id')->attachments()->post($requestBody);


```