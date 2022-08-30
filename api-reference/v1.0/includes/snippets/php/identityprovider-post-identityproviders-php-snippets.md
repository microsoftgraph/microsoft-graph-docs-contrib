---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\IdentityProvider;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new IdentityProvider();
$requestBody->setName('Login with Amazon');
$requestBody->setType('Amazon');
$requestBody->setClientId('56433757-cadd-4135-8431-2c9e3fd68ae8');
$requestBody->setClientSecret('000000000000');

$result = $graphServiceClient->identityProviders()->post($requestBody)->wait();

```