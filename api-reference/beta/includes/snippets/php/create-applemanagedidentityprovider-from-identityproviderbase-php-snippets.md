---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AppleManagedIdentityProvider;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AppleManagedIdentityProvider();
$requestBody->setOdataType('microsoft.graph.appleManagedIdentityProvider');
$requestBody->setDisplayName('Apple');
$requestBody->setDeveloperId('qazx.1234');
$requestBody->setServiceId('com.contoso.app');
$requestBody->setKeyId('4294967296');
$requestBody->setCertificateData('******');

$result = $graphServiceClient->identity()->identityProviders()->post($requestBody)->wait();

```