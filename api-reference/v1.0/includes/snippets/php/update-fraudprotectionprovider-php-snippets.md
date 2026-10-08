---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ArkoseFraudProtectionProvider;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ArkoseFraudProtectionProvider();
$requestBody->setOdataType('#microsoft.graph.arkoseFraudProtectionProvider');
$requestBody->setDisplayName('Arkose Sign-Up Protection Updated');

$result = $graphServiceClient->identity()->riskPrevention()->fraudProtectionProviders()->byFraudProtectionProviderId('fraudProtectionProvider-id')->patch($requestBody)->wait();

```