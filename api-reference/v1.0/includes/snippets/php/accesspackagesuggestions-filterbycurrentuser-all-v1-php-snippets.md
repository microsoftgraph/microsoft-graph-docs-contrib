---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\IdentityGovernance\EntitlementManagement\AccessPackageSuggestions\Item\AccessPackageSuggestionItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AccessPackageSuggestionItemRequestBuilderGetRequestConfiguration();
$queryParameters = AccessPackageSuggestionItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["accessPackage"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageSuggestions()->byAccessPackageSuggestionId('accessPackageSuggestion-id')->get($requestConfiguration)->wait();

```