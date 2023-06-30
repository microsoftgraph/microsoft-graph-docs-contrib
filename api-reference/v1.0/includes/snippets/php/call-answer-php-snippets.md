---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AnswerPostRequestBody();
$requestBody->setCallbackUri('callbackUri-value');

$mediaConfig = new AppHostedMediaConfig();
$mediaConfig->set@odatatype('#microsoft.graph.appHostedMediaConfig');

$mediaConfig->setBlob('<Media Session Configuration Blob>');


$requestBody->setMediaConfig($mediaConfig);
$requestBody->setAcceptedModalities([$requestBody->setModality(new Modality('audio'));
]);

$callOptions = new IncomingCallOptions();
$callOptions->set@odatatype('#microsoft.graph.incomingCallOptions');

$callOptions->setIsContentSharingNotificationEnabled(true);


$requestBody->setCallOptions($callOptions);
$requestBody->setParticipantCapacity(200);



$graphServiceClient->communications()->calls()->byCallId('call-id')->answer()->post($requestBody);


```