---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new StartHoldMusicPostRequestBody();
$customPrompt = new Prompt();
$customPrompt->set@odatatype('#microsoft.graph.mediaPrompt');

$additionalData = [
		'mediaInfo' => $customPrompt = new MediaInfo();
$		customPrompt->set@odatatype('#microsoft.graph.mediaInfo');

$		customPrompt->setUri('https://bot.contoso.com/onHold.wav');


$customPrompt->setMediaInfo($mediaInfo);

];
$customPrompt->setAdditionalData($additionalData);



$requestBody->setCustomPrompt($customPrompt);
$requestBody->setClientContext('d45324c1-fcb5-430a-902c-f20af696537c');



$result = $graphServiceClient->communications()->callsById('call-id')->participantsById('participant-id')->startHoldMusic()->post($requestBody);


```