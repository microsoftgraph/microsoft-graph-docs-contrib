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
$requestBody->setDisplayName('Arkose Sign-Up Protection');
$requestBody->setPublicKey('A1EE42E0-C88B-47FE-A176-5E9FB8F116FB');
$requestBody->setPrivateKey('19BBE628-7DEF-4E28-AB25-BF129C760B7E');
$requestBody->setClientSubDomain('client-api');
$requestBody->setVerifySubDomain('verify-api');

$result = $graphServiceClient->identity()->riskPrevention()->fraudProtectionProviders()->post($requestBody)->wait();

```