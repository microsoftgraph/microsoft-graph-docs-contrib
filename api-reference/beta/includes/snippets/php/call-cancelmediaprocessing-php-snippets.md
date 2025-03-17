---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Communications\Calls\Item\CancelMediaProcessing\CancelMediaProcessingPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CancelMediaProcessingPostRequestBody();
$requestBody->setClientContext('clientContext-value');

$result = $graphServiceClient->communications()->calls()->byCallId('call-id')->cancelMediaProcessing()->post($requestBody)->wait();

```