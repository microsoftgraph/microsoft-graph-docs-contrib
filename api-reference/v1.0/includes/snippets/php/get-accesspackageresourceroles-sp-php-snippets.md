---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\IdentityGovernance\EntitlementManagement\Catalogs\Item\ResourceRoles\ResourceRolesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ResourceRolesRequestBuilderGetRequestConfiguration();
$queryParameters = ResourceRolesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "(originSystem eq 'SharePointOnline' and resource/id eq 'dcc3f966-a73c-48e2-8c1d-bcac775488c3')";
$queryParameters->expand = ["resource"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->catalogs()->byAccessPackageCatalogId('accessPackageCatalog-id')->resourceRoles()->get($requestConfiguration)->wait();

```