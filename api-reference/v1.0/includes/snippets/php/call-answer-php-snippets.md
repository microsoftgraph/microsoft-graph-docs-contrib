---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AnswerPostRequestBody;
use Microsoft\Graph\Generated\Models\AppHostedMediaConfig;
use Microsoft\Graph\Generated\Models\Modality;
use Microsoft\Graph\Generated\Models\IncomingCallOptions;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AnswerPostRequestBody();
$requestBody->setCallbackUri('callbackUri-value');
$mediaConfig = new AppHostedMediaConfig();
$mediaConfig->setOdataType('#microsoft.graph.appHostedMediaConfig');
$mediaConfig->setBlob('<Media Session Configuration Blob>');
$requestBody->setMediaConfig($mediaConfig);
$requestBody->setAcceptedModalities([new Modality('audio'),	]);
$callOptions = new IncomingCallOptions();
$callOptions->setOdataType('#microsoft.graph.incomingCallOptions');
$callOptions->setIsContentSharingNotificationEnabled(true);
$requestBody->setCallOptions($callOptions);
$requestBody->setParticipantCapacity(200);

$graphServiceClient->communications()->calls()->byCallId('call-id')->answer()->post($requestBody)->wait();

```