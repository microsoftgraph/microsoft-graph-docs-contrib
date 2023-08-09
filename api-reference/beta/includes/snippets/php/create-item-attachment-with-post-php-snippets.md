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

$postBody->setContent('I attached an event.');


$post->setBody($postBody);
$attachmentsAttachment1 = new ItemAttachment();
$attachmentsAttachment1->setOdataType('#microsoft.graph.itemAttachment');

$attachmentsAttachment1->setName('Holiday event');

$attachmentsAttachment1Item = new Event();
$attachmentsAttachment1Item->setOdataType('microsoft.graph.event');

$attachmentsAttachment1Item->setSubject('Discuss gifts for children');

$attachmentsAttachment1ItemBody = new ItemBody();
$attachmentsAttachment1ItemBody->setContentType(new BodyType('hTML'));

$attachmentsAttachment1ItemBody->setContent('Let\'s look for funding!');


$attachmentsAttachment1Item->setBody($attachmentsAttachment1ItemBody);
$attachmentsAttachment1ItemStart = new DateTimeTimeZone();
$attachmentsAttachment1ItemStart->setDateTime('2019-12-02T18:00:00');

$attachmentsAttachment1ItemStart->setTimeZone('Pacific Standard Time');


$attachmentsAttachment1Item->setStart($attachmentsAttachment1ItemStart);
$attachmentsAttachment1ItemEnd = new DateTimeTimeZone();
$attachmentsAttachment1ItemEnd->setDateTime('2019-12-02T19:00:00');

$attachmentsAttachment1ItemEnd->setTimeZone('Pacific Standard Time');


$attachmentsAttachment1Item->setEnd($attachmentsAttachment1ItemEnd);

$attachmentsAttachment1->setItem($attachmentsAttachment1Item);

$attachmentsArray []= $attachmentsAttachment1;
$post->setAttachments($attachmentsArray);



$requestBody->setPost($post);


$graphServiceClient->groups()->byGroupId('group-id')->threads()->byConversationThreadId('conversationThread-id')->reply()->post($requestBody);


```