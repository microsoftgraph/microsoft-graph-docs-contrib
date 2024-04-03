---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new CatalogsRequestBuilderGetRequestConfiguration();
$queryParameters = CatalogsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "(displayName eq 'General')";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->catalogs()->get($requestConfiguration)->wait();

```