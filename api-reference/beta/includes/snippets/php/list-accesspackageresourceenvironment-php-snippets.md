---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\IdentityGovernance\EntitlementManagement\AccessPackageResourceEnvironments\AccessPackageResourceEnvironmentsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AccessPackageResourceEnvironmentsRequestBuilderGetRequestConfiguration();
$queryParameters = AccessPackageResourceEnvironmentsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "originSystem eq 'SharePointOnline'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageResourceEnvironments()->get($requestConfiguration)->wait();

```