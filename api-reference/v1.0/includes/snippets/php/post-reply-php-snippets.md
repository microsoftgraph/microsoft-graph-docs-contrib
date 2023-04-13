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

$postBody->setContent('content-value');


$post->setBody($postBody);
$post->setReceivedDateTime(new DateTime('datetime-value'));

$post->setHasAttachments(true);

$postFrom = new Recipient();
$postFromEmailAddress = new EmailAddress();
$postFromEmailAddress->setName('name-value');

$postFromEmailAddress->setAddress('address-value');


$postFrom->setEmailAddress($postFromEmailAddress);

$post->setFrom($postFrom);
$postSender = new Recipient();
$postSenderEmailAddress = new EmailAddress();
$postSenderEmailAddress->setName('name-value');

$postSenderEmailAddress->setAddress('address-value');


$postSender->setEmailAddress($postSenderEmailAddress);

$post->setSender($postSender);
$post->setConversationThreadId('conversationThreadId-value');

$newParticipantsRecipient1 = new Recipient();
$newParticipantsRecipient1EmailAddress = new EmailAddress();
$newParticipantsRecipient1EmailAddress->setName('name-value');

$newParticipantsRecipient1EmailAddress->setAddress('address-value');


$newParticipantsRecipient1->setEmailAddress($newParticipantsRecipient1EmailAddress);

$newParticipantsArray []= $newParticipantsRecipient1;
$post->setNewParticipants($newParticipantsArray);


$post->setConversationId('conversationId-value');

$post->setCreatedDateTime(new DateTime('datetime-value'));

$post->setLastModifiedDateTime(new DateTime('datetime-value'));

$post->setChangeKey('changeKey-value');

$post->setCategories(['categories-value', ]);

$post->setId('id-value');

$postInReplyTo = new Post();

$post->setInReplyTo($postInReplyTo);
$attachmentsAttachment1 = new Attachment();
$attachmentsAttachment1->set@odatatype('#microsoft.graph.fileAttachment');

$attachmentsAttachment1->setLastModifiedDateTime(new DateTime('datetime-value'));

$attachmentsAttachment1->setName('name-value');

$attachmentsAttachment1->setContentType('contentType-value');

$attachmentsAttachment1->setSize(99);

$attachmentsAttachment1->setIsInline(true);

$attachmentsAttachment1->setId('id-value');


$attachmentsArray []= $attachmentsAttachment1;
$post->setAttachments($attachmentsArray);



$requestBody->setPost($post);


$graphServiceClient->groupsById('group-id')->threadsById('conversationThread-id')->postsById('post-id')->reply()->post($requestBody);


```