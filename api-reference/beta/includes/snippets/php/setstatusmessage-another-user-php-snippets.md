---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new SetStatusMessagePostRequestBody();
$statusMessage = new PresenceStatusMessage();
$statusMessageMessage = new ItemBody();
$statusMessageMessage->setContent('Hey I am available now');

$statusMessageMessage->setContentType(new BodyType('text'));


$statusMessage->setMessage($statusMessageMessage);

$requestBody->setStatusMessage($statusMessage);


$graphServiceClient->usersById('user-id')->presence()->setStatusMessage()->post($requestBody);


```