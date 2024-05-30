---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\Events\Item\Cancel\CancelPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CancelPostRequestBody();
$requestBody->setComment('Cancelling for this week due to all hands');

$graphServiceClient->me()->events()->byEventId('event-id')->cancel()->post($requestBody)->wait();

```