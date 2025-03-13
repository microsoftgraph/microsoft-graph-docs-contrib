---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\Messages\Item\MarkAsNotJunk\MarkAsNotJunkPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MarkAsNotJunkPostRequestBody();
$requestBody->setMoveToInbox(true);

$result = $graphServiceClient->me()->messages()->byMessageId('message-id')->markAsNotJunk()->post($requestBody)->wait();

```