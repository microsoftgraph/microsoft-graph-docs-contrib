---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AccessPackageItemRequestBuilderGetRequestConfiguration();
$queryParameters = AccessPackageItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["accessPackageResourceRoleScopes(\$expand=accessPackageResourceRole,accessPackageResourceScope)"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackages()->byAccessPackageId('accessPackage-id')->get($requestConfiguration)->wait();

```