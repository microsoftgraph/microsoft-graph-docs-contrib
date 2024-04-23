---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ReplyPostRequestBody;
use Microsoft\Graph\Generated\Models\Post;
use Microsoft\Graph\Generated\Models\ItemBody;
use Microsoft\Graph\Generated\Models\Attachment;
use Microsoft\Graph\Generated\Models\ReferenceAttachment;


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

$graphServiceClient->groups()->byGroupId('group-id')->threads()->byConversationThreadId('conversationThread-id')->reply()->post($requestBody)->wait();

```