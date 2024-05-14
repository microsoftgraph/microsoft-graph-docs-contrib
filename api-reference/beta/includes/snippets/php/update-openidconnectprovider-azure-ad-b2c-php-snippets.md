---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\IdentityProvider;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new IdentityProvider();
$additionalData = [
	'responseType' => 'id_token',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->identityProviders()->byIdentityProviderId('identityProvider-id')->patch($requestBody)->wait();

```