---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new RoleManagementPoliciesRequestBuilderGetRequestConfiguration();
$queryParameters = RoleManagementPoliciesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "scopeId eq '/' and scopeType eq 'DirectoryRole'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->policies()->roleManagementPolicies()->get($requestConfiguration)->wait();

```