---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\Messages\Item\MarkAsJunk\MarkAsJunkPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MarkAsJunkPostRequestBody();
$requestBody->setMoveToJunk(true);

$result = $graphServiceClient->me()->messages()->byMessageId('message-id')->markAsJunk()->post($requestBody)->wait();

```