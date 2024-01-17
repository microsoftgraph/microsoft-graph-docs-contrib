---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new RecoveryKeysRequestBuilderGetRequestConfiguration();
$headers = [
		'User-Agent' => 'Dsreg/10.0',
		'ocp-client-name' => 'My Friendly Client',
		'ocp-client-version' => '1.2',
	];
$requestConfiguration->headers = $headers;

$queryParameters = RecoveryKeysRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "deviceId eq '1ab40ab2-32a8-4b00-b6b5-ba724e407de9'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->informationProtection()->bitlocker()->recoveryKeys()->get($requestConfiguration)->wait();

```