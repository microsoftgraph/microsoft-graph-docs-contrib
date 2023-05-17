---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PlayPromptPostRequestBody();
$requestBody->setClientContext('d45324c1-fcb5-430a-902c-f20af696537c');

$promptsPrompt1 = new Prompt();
$promptsPrompt1->set@odatatype('#microsoft.graph.mediaPrompt');

$additionalData = [
		'mediaInfo' => $promptsPrompt1 = new MediaInfo();
$		promptsPrompt1->set@odatatype('#microsoft.graph.mediaInfo');

$		promptsPrompt1->setUri('https://cdn.contoso.com/beep.wav');

$		promptsPrompt1->setResourceId('1D6DE2D4-CD51-4309-8DAA-70768651088E');


$promptsPrompt1->setMediaInfo($mediaInfo);

];
$promptsPrompt1->setAdditionalData($additionalData);



$promptsArray []= $promptsPrompt1;
$requestBody->setPrompts($promptsArray);




$result = $graphServiceClient->communications()->callsById('call-id')->playPrompt()->post($requestBody);


```