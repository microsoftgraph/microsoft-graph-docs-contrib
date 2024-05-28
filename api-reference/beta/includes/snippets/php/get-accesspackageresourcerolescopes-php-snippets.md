---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\IdentityGovernance\EntitlementManagement\AccessPackages\Item\AccessPackageItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AccessPackageItemRequestBuilderGetRequestConfiguration();
$queryParameters = AccessPackageItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["accessPackageResourceRoleScopes(\$expand=accessPackageResourceRole,accessPackageResourceScope)"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackages()->byAccessPackageId('accessPackage-id')->get($requestConfiguration)->wait();

```