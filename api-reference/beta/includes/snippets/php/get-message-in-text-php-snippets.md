---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new MessageItemRequestBuilderGetRequestConfiguration();
$headers = [
		'Prefer' => 'outlook.body-content-type="text"',
	];
$requestConfiguration->headers = $headers;

$queryParameters = MessageItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["subject","body","bodyPreview","uniqueBody"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->messages()->byMessageId('message-id')->get($requestConfiguration)->wait();

```