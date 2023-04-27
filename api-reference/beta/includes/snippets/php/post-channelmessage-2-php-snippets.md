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
$fromUser->setId('id-value');

$fromUser->setDisplayName('Joh Doe');

$additionalData = [
		'userIdentityType' => 'aadUser', 
];
$fromUser->setAdditionalData($additionalData);



$from->setUser($fromUser);

$requestBody->setFrom($from);
$body = new ItemBody();
$body->setContentType(new BodyType('html'));

$body->setContent('Hello World');


$requestBody->setBody($body);


$result = $graphServiceClient->teamsById('team-id')->channelsById('channel-id')->messages()->post($requestBody);


```