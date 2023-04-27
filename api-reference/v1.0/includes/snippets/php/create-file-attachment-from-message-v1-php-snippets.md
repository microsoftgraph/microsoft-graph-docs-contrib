---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Attachment();
$requestBody->set@odatatype('#microsoft.graph.fileAttachment');

$requestBody->setName('smile');

$additionalData = [
		'contentBytes' => 'R0lGODdhEAYEAA7', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->me()->messagesById('message-id')->attachments()->post($requestBody);


```