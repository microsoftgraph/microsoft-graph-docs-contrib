---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ServicePrincipalItemRequestBuilderGetRequestConfiguration();
$queryParameters = ServicePrincipalItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","appId","displayName","appRoles","oauth2PermissionScopes","resourceSpecificApplicationPermissions"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->get($requestConfiguration)->wait();

```