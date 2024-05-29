---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Communications\Calls\Item\Answer\AnswerPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\Modality;
use Microsoft\Graph\Beta\Generated\Models\AppHostedMediaConfig;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AnswerPostRequestBody();
$requestBody->setCallbackUri('https://bot.contoso.com/api/calls');
$requestBody->setAcceptedModalities([new Modality('audio'),	]);
$mediaConfig = new AppHostedMediaConfig();
$mediaConfig->setOdataType('#microsoft.graph.appHostedMediaConfig');
$mediaConfig->setBlob('<Media Session Configuration Blob>');
$requestBody->setMediaConfig($mediaConfig);

$graphServiceClient->communications()->calls()->byCallId('call-id')->answer()->post($requestBody)->wait();

```