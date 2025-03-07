---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\OpenIdConnectIdentityProvider;
use Microsoft\Graph\Beta\Generated\Models\OpenIdConnectResponseTypes;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OpenIdConnectIdentityProvider();
$requestBody->setOdataType('#microsoft.graph.openIdConnectIdentityProvider');
$requestBody->setResponseType(new OpenIdConnectResponseTypes('id_token'));

$result = $graphServiceClient->identity()->identityProviders()->byIdentityProviderBaseId('identityProviderBase-id')->patch($requestBody)->wait();

```