---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RecordResponsePostRequestBody();
$requestBody->setBargeInAllowed(true);

$requestBody->setClientContext('d45324c1-fcb5-430a-902c-f20af696537c');

$promptsPrompt1 = new MediaPrompt();
$promptsPrompt1->setOdataType('#microsoft.graph.mediaPrompt');

$promptsPrompt1MediaInfo = new MediaInfo();
$promptsPrompt1MediaInfo->setUri('https://cdn.contoso.com/beep.wav');

$promptsPrompt1MediaInfo->setResourceId('1D6DE2D4-CD51-4309-8DAA-70768651088E');


$promptsPrompt1->setMediaInfo($promptsPrompt1MediaInfo);

$promptsArray []= $promptsPrompt1;
$requestBody->setPrompts($promptsArray);


$requestBody->setMaxRecordDurationInSeconds(10);

$requestBody->setInitialSilenceTimeoutInSeconds(5);

$requestBody->setMaxSilenceTimeoutInSeconds(2);

$requestBody->setPlayBeep(true);

$requestBody->setStopTones(['#', '1', '*', ]);



$result = $graphServiceClient->communications()->calls()->byCallId('call-id')->recordResponse()->post($requestBody);


```