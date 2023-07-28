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

$postBody->setContent('I attached a reference to a file on OneDrive.');


$post->setBody($postBody);
$attachmentsAttachment1 = new ReferenceAttachment();
$attachmentsAttachment1->setOdataType('#microsoft.graph.referenceAttachment');

$attachmentsAttachment1->setName('Personal pictures');

$attachmentsAttachment1->setSourceUrl('https://contoso.com/personal/mario_contoso_net/Documents/Pics');

$attachmentsAttachment1->setProviderType(new ReferenceAttachmentProvider('oneDriveConsumer'));

$attachmentsAttachment1->setPermission(new ReferenceAttachmentPermission('edit'));

$attachmentsAttachment1->setIsFolder(true);


$attachmentsArray []= $attachmentsAttachment1;
$post->setAttachments($attachmentsArray);



$requestBody->setPost($post);


$graphServiceClient->groups()->byGroupId('group-id')->threads()->byConversationThreadId('conversationThread-id')->reply()->post($requestBody);


```