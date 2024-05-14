---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\SocialIdentityProvider;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SocialIdentityProvider();
$requestBody->setOdataType('#microsoft.graph.socialIdentityProvider');
$additionalData = [
	'responseType' => 'id_token',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->identity()->identityProviders()->byIdentityProviderBaseId('identityProviderBase-id')->patch($requestBody)->wait();

```