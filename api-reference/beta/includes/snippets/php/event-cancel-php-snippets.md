---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CancelPostRequestBody();
$requestBody->setComment('Cancelling for this week due to all hands');

$graphServiceClient->me()->events()->byEventId('event-id')->cancel()->post($requestBody)->wait();

```