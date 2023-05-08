---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AnswerPostRequestBody();
$requestBody->setCallbackUri('callbackUri-value');

$mediaConfig = new MediaConfig();
$mediaConfig->set@odatatype('#microsoft.graph.appHostedMediaConfig');

$additionalData = [
		'blob' => '<Media Session Configuration Blob>', 
];
$mediaConfig->setAdditionalData($additionalData);



$requestBody->setMediaConfig($mediaConfig);
$requestBody->setAcceptedModalities([$requestBody->setModality(new Modality('audio'));
]);

$callOptions = new IncomingCallOptions();
$callOptions->set@odatatype('#microsoft.graph.incomingCallOptions');

$callOptions->setIsContentSharingNotificationEnabled(true);


$requestBody->setCallOptions($callOptions);
$requestBody->setParticipantCapacity(200);



$graphServiceClient->communications()->callsById('call-id')->answer()->post($requestBody);


```