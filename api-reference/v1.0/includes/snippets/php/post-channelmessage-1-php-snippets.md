---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ChatMessage();
$body = new ItemBody();
$body->setContent('Hello World');


$requestBody->setBody($body);


$requestResult = $graphServiceClient->teamsById('team-id')->channelsById('channel-id')->messages()->post($requestBody);


```