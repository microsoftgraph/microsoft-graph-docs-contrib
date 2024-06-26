---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\Messages\Item\Move\MovePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MovePostRequestBody();
$requestBody->setDestinationId('deleteditems');

$result = $graphServiceClient->me()->messages()->byMessageId('message-id')->move()->post($requestBody)->wait();

```