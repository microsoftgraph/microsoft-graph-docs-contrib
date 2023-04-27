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

$postBody->setContent('I attached an event.');


$post->setBody($postBody);
$attachmentsAttachment1 = new Attachment();
$attachmentsAttachment1->set@odatatype('#microsoft.graph.itemAttachment');

$attachmentsAttachment1->setName('Holiday event');

$additionalData = [
		'item' => $attachmentsAttachment1 = new Item();
$		attachmentsAttachment1->set@odatatype('microsoft.graph.event');

$		attachmentsAttachment1->setSubject('Discuss gifts for children');

$body = new Body();
$		body->setContentType('HTML');

$		body->setContent('Let\'s look for funding!');


$attachmentsAttachment1->setBody($body);
$start = new Start();
$		start->setDateTime('2019-12-02T18:00:00');

$		start->setTimeZone('Pacific Standard Time');


$attachmentsAttachment1->setStart($start);
$end = new End();
$		end->setDateTime('2019-12-02T19:00:00');

$		end->setTimeZone('Pacific Standard Time');


$attachmentsAttachment1->setEnd($end);

$attachmentsAttachment1->setItem($item);

];
$attachmentsAttachment1->setAdditionalData($additionalData);



$attachmentsArray []= $attachmentsAttachment1;
$post->setAttachments($attachmentsArray);



$requestBody->setPost($post);


$graphServiceClient->groupsById('group-id')->threadsById('conversationThread-id')->reply()->post($requestBody);


```