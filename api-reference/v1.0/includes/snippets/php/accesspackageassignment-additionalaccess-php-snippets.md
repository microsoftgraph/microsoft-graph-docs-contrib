---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\IdentityGovernance\EntitlementManagement\Assignments\AdditionalAccess(accessPackageId='{accessPackageId}',incompatibleAccessPackageId='{incompatibleAccessPackageId}')\AdditionalAccessWithAccessPackageIdWithIncompatibleAccessPackageIdRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AdditionalAccessWithAccessPackageIdWithIncompatibleAccessPackageIdRequestBuilderGetRequestConfiguration();
$queryParameters = AdditionalAccessWithAccessPackageIdWithIncompatibleAccessPackageIdRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["target"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->assignments()->additionalAccessWithAccessPackageIdWithIncompatibleAccessPackageId('{accessPackageId}', '{incompatibleAccessPackageId}', )->get($requestConfiguration)->wait();

```