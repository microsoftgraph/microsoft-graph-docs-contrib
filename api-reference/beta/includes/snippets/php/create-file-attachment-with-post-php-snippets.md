---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReplyPostRequestBody();
$post = new Post();
$postBody = new ItemBody();
$postBody->setContentType(new BodyType('text'));

$postBody->setContent('Which quarter does that file cover? See my attachment.');


$post->setBody($postBody);
$attachmentsAttachment1 = new FileAttachment();
$attachmentsAttachment1->setOdataType('#microsoft.graph.fileAttachment');

$attachmentsAttachment1->setName('Another file as attachment');

$attachmentsAttachment1->setContentBytes(base64_decode('VGhpcyBpcyBhIGZpbGUgdG8gYmUgYXR0YWNoZWQu'));


$attachmentsArray []= $attachmentsAttachment1;
$post->setAttachments($attachmentsArray);



$requestBody->setPost($post);


$graphServiceClient->groups()->byGroupId('group-id')->threads()->byConversationThreadId('conversationThread-id')->reply()->post($requestBody);


```