---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Communications\Calls\Item\StopTranscription\StopTranscriptionPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new StopTranscriptionPostRequestBody();
$requestBody->setLanguage('en-us');

$result = $graphServiceClient->communications()->calls()->byCallId('call-id')->stopTranscription()->post($requestBody)->wait();

```