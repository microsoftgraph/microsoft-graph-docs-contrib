---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CreateReplyAllPostRequestBody();
$message = new Message();
$attachmentsAttachment1 = new FileAttachment();
$attachmentsAttachment1->setOdataType('#microsoft.graph.fileAttachment');

$attachmentsAttachment1->setName('guidelines.txt');

$attachmentsAttachment1->setContentBytes(base64_decode('bWFjIGFuZCBjaGVlc2UgdG9kYXk='));


$attachmentsArray []= $attachmentsAttachment1;
$message->setAttachments($attachmentsArray);



$requestBody->setMessage($message);
$requestBody->setComment('if the project gets approved, please take a look at the attached guidelines before you decide on the name.');



$result = $graphServiceClient->me()->messages()->byMessageId('message-id')->createReplyAll()->post($requestBody);


```