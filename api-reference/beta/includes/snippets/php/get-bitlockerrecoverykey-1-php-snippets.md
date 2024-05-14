---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\InformationProtection\Bitlocker\RecoveryKeys\RecoveryKeysRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new RecoveryKeysRequestBuilderGetRequestConfiguration();
$headers = [
		'User-Agent' => 'Dsreg/10.0',
		'ocp-client-name' => 'My Friendly Client',
		'ocp-client-version' => '1.2',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->informationProtection()->bitlocker()->recoveryKeys()->get($requestConfiguration)->wait();

```