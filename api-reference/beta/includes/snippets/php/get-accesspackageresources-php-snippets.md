---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\IdentityGovernance\EntitlementManagement\AccessPackageCatalogs\Item\AccessPackageResources\AccessPackageResourcesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AccessPackageResourcesRequestBuilderGetRequestConfiguration();
$queryParameters = AccessPackageResourcesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "resourceType eq 'Application'";
$queryParameters->expand = ["accessPackageResourceScopes"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageCatalogs()->byAccessPackageCatalogId('accessPackageCatalog-id')->accessPackageResources()->get($requestConfiguration)->wait();

```