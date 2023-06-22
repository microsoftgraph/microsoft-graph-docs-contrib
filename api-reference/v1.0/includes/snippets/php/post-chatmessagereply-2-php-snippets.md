---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ChatMessage();
$requestBody->setCreatedDateTime(new DateTime('2019-02-04T19:58:15.511Z'));

$from = new ChatMessageFromIdentitySet();
$fromUser = new Identity();
$fromUser->setId('8c0a1a67-50ce-4114-bb6c-da9c5dbcf6ca');

$fromUser->setDisplayName('John Doe');


$from->setUser($fromUser);

$requestBody->setFrom($from);
$body = new ItemBody();
$body->setContentType(new BodyType('html'));

$body->setContent('Hello World');


$requestBody->setBody($body);


$result = $graphServiceClient->teamsById('team-id')->channelsById('channel-id')->messagesById('chatMessage-id')->replies()->post($requestBody);


```