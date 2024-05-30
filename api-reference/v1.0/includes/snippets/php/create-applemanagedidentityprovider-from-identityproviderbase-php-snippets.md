---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AppleManagedIdentityProvider;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AppleManagedIdentityProvider();
$requestBody->setOdataType('microsoft.graph.appleManagedIdentityProvider');
$requestBody->setDisplayName('Sign in with Apple');
$requestBody->setDeveloperId('UBF8T346G9');
$requestBody->setServiceId('com.microsoft.rts.b2c.test.client');
$requestBody->setKeyId('99P6D879C4');
$requestBody->setCertificateData('******');

$result = $graphServiceClient->identity()->identityProviders()->post($requestBody)->wait();

```