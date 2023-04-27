---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CreateReplyAllPostRequestBody();
$message = new Message();
$attachmentsAttachment1 = new Attachment();
$attachmentsAttachment1->set@odatatype('#microsoft.graph.fileAttachment');

$attachmentsAttachment1->setName('guidelines.txt');

$additionalData = [
		'contentBytes' => 'bWFjIGFuZCBjaGVlc2UgdG9kYXk=', 
];
$attachmentsAttachment1->setAdditionalData($additionalData);



$attachmentsArray []= $attachmentsAttachment1;
$message->setAttachments($attachmentsArray);



$requestBody->setMessage($message);
$requestBody->setComment('if the project gets approved, please take a look at the attached guidelines before you decide on the name.');



$result = $graphServiceClient->me()->messagesById('message-id')->createReplyAll()->post($requestBody);


```