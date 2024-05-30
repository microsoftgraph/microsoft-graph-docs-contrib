---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Directory\FederationConfigurations\Item\IdentityProviderBaseItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new IdentityProviderBaseItemRequestBuilderGetRequestConfiguration();
$queryParameters = IdentityProviderBaseItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "domains/any(x: x/id eq 'contoso.com')";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->directory()->federationConfigurations()->byIdentityProviderBaseId('identityProviderBase-id')->get($requestConfiguration)->wait();

```