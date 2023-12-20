---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ServicePrincipalItemRequestBuilderGetRequestConfiguration();
$queryParameters = ServicePrincipalItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","appId","displayName","appRoles","oauth2PermissionScopes","resourceSpecificApplicationPermissions"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->get($requestConfiguration)->wait();

```