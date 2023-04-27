---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AnswerPostRequestBody();
$requestBody->setCallbackUri('https://bot.contoso.com/api/calls');

$requestBody->setAcceptedModalities([$requestBody->setModality(new Modality('audio'));
]);

$mediaConfig = new MediaConfig();
$mediaConfig->set@odatatype('#microsoft.graph.serviceHostedMediaConfig');

$additionalData = [
	'preFetchMedia' => $preFetchMedia1 = new ();
$	preFetchMedia1->setUri('https://cdn.contoso.com/beep.wav');

$	preFetchMedia1->setResourceId('1D6DE2D4-CD51-4309-8DAA-70768651088E');


$preFetchMediaArray []= $preFetchMedia1;
$preFetchMedia2 = new ();
$	preFetchMedia2->setUri('https://cdn.contoso.com/cool.wav');

$	preFetchMedia2->setResourceId('1D6DE2D4-CD51-4309-8DAA-70768651088F');


$preFetchMediaArray []= $preFetchMedia2;
$mediaConfig->setPreFetchMedia($preFetchMediaArray);


];
$mediaConfig->setAdditionalData($additionalData);



$requestBody->setMediaConfig($mediaConfig);


$graphServiceClient->communications()->callsById('call-id')->answer()->post($requestBody);


```