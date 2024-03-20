---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new BitlockerRecoveryKeyItemRequestBuilderGetRequestConfiguration();
$headers = [
		'User-Agent' => 'Dsreg/10.0',
		'ocp-client-name' => 'My Friendly Client',
		'ocp-client-version' => '1.2',
	];
$requestConfiguration->headers = $headers;

$queryParameters = BitlockerRecoveryKeyItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["key"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->informationProtection()->bitlocker()->recoveryKeys()->byBitlockerRecoveryKeyId('bitlockerRecoveryKey-id')->get($requestConfiguration)->wait();

```