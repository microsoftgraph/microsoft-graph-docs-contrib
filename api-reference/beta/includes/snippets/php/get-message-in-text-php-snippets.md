---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new MessageRequestBuilderGetRequestConfiguration();
$headers = [
		'Prefer' => 'outlook.body-content-type="text"',
	];
$requestConfiguration->headers = $headers;

$queryParameters = MessageRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["subject","body","bodyPreview","uniqueBody"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->messages()->byMessageId('message-id')->get($requestConfiguration);


```