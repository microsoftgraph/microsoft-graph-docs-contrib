---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ReplyPostRequestBody();
$post = new Post();
$postBody = new ItemBody();
$postBody->setContentType(new BodyType('text'));

$postBody->setContent('I attached a reference to a file on OneDrive.');


$post->setBody($postBody);
$attachmentsAttachment1 = new Attachment();
$attachmentsAttachment1->set@odatatype('#microsoft.graph.referenceAttachment');

$attachmentsAttachment1->setName('Personal pictures');

$additionalData = [
		'sourceUrl' => 'https://contoso.com/personal/mario_contoso_net/Documents/Pics', 
		'providerType' => 'oneDriveConsumer', 
		'permission' => 'Edit', 
		'isFolder' => 'True', 
];
$attachmentsAttachment1->setAdditionalData($additionalData);



$attachmentsArray []= $attachmentsAttachment1;
$post->setAttachments($attachmentsArray);



$requestBody->setPost($post);


$graphServiceClient->groupsById('group-id')->threadsById('conversationThread-id')->reply()->post($requestBody);


```