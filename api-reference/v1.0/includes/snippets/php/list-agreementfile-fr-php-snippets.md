---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new FileRequestBuilderGetRequestConfiguration();
$headers = [
		'Accept-Language' => 'fr-FR',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->agreements()->byAgreementId('agreement-id')->file()->get($requestConfiguration)->wait();

```