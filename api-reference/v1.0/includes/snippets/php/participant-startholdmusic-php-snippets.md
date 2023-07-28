---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new StartHoldMusicPostRequestBody();
$customPrompt = new MediaPrompt();
$customPrompt->setOdataType('#microsoft.graph.mediaPrompt');

$customPromptMediaInfo = new MediaInfo();
$customPromptMediaInfo->setOdataType('#microsoft.graph.mediaInfo');

$customPromptMediaInfo->setUri('https://bot.contoso.com/onHold.wav');


$customPrompt->setMediaInfo($customPromptMediaInfo);

$requestBody->setCustomPrompt($customPrompt);
$requestBody->setClientContext('d45324c1-fcb5-430a-902c-f20af696537c');



$result = $graphServiceClient->communications()->calls()->byCallId('call-id')->participants()->byParticipantId('participant-id')->startHoldMusic()->post($requestBody);


```