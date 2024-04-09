---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AcceptPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AcceptPostRequestBody();
$requestBody->setComment('comment-value');
$requestBody->setSendResponse(true);

$graphServiceClient->me()->events()->byEventId('event-id')->accept()->post($requestBody)->wait();

```