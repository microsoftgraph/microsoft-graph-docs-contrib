---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AcceptPostRequestBody();
$requestBody->setComment('comment-value');

$requestBody->setSendResponse(true);



$graphServiceClient->me()->eventsById('event-id')->microsoftGraphAccept()->post($requestBody);


```