---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AnswerPostRequestBody();
$requestBody->setCallbackUri('https://bot.contoso.com/api/calls');

$requestBody->setAcceptedModalities([new Modality('audio'),	]);

$mediaConfig = new ServiceHostedMediaConfig();
$mediaConfig->setOdataType('#microsoft.graph.serviceHostedMediaConfig');

$preFetchMediaMediaInfo1 = new MediaInfo();
$preFetchMediaMediaInfo1->setUri('https://cdn.contoso.com/beep.wav');

$preFetchMediaMediaInfo1->setResourceId('1D6DE2D4-CD51-4309-8DAA-70768651088E');


$preFetchMediaArray []= $preFetchMediaMediaInfo1;
$preFetchMediaMediaInfo2 = new MediaInfo();
$preFetchMediaMediaInfo2->setUri('https://cdn.contoso.com/cool.wav');

$preFetchMediaMediaInfo2->setResourceId('1D6DE2D4-CD51-4309-8DAA-70768651088F');


$preFetchMediaArray []= $preFetchMediaMediaInfo2;
$mediaConfig->setPreFetchMedia($preFetchMediaArray);



$requestBody->setMediaConfig($mediaConfig);


$graphServiceClient->communications()->calls()->byCallId('call-id')->answer()->post($requestBody);


```