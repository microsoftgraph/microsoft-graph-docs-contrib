---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ServicePrincipalsWithAppIdRequestBuilderGetRequestConfiguration();
$queryParameters = ServicePrincipalsWithAppIdRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","appId","displayName","appRoles","publishedPermissionScopes","resourceSpecificApplicationPermissions"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->servicePrincipalsWithAppId('{appId}', )->get($requestConfiguration)->wait();

```