---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AccessPackageResourceEnvironmentsRequestBuilderGetRequestConfiguration();
$queryParameters = AccessPackageResourceEnvironmentsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "originSystem eq 'SharePointOnline'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageResourceEnvironments()->get($requestConfiguration)->wait();

```