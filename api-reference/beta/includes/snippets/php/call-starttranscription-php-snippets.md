---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Communications\Calls\Item\StartTranscription\StartTranscriptionPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new StartTranscriptionPostRequestBody();
$requestBody->setLanguage('en-us');

$result = $graphServiceClient->communications()->calls()->byCallId('call-id')->startTranscription()->post($requestBody)->wait();

```