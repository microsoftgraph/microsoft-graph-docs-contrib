---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\OidcIdentityProvider;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OidcIdentityProvider();
$requestBody->setOdataType('#microsoft.graph.oidcIdentityProvider');
$requestBody->setDisplayName('Contoso');

$result = $graphServiceClient->identity()->identityProviders()->byIdentityProviderBaseId('identityProviderBase-id')->patch($requestBody)->wait();

```