---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ChatMessage();
$body = new ItemBody();
$body->setContentType(new BodyType('html'));

$body->setContent('Hello World');


$requestBody->setBody($body);


$result = $graphServiceClient->teamsById('team-id')->channelsById('channel-id')->messagesById('chatMessage-id')->replies()->post($requestBody);


```