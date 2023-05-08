---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new ContentRequestBuilderGetRequestConfiguration();
$headers = [
		'Accept' => 'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
	];
$requestConfiguration->headers = $headers;

$queryParameters = ContentRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->format = "text/vtt";
$requestConfiguration->queryParameters = $queryParameters;


$graphServiceClient->usersById('user-id')->onlineMeetingsById('onlineMeeting-id')->transcriptsById('callTranscript-id')->content()->get($requestConfiguration);


```