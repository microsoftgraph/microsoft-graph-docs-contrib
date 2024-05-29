---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\Messages\Item\Copy\CopyPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CopyPostRequestBody();
$requestBody->setDestinationId('destinationId-value');

$result = $graphServiceClient->me()->messages()->byMessageId('message-id')->copy()->post($requestBody)->wait();

```