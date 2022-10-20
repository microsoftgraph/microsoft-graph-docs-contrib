---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new ServicePrincipalRequestBuilderGetRequestConfiguration();

$queryParameters = new ServicePrincipalRequestBuilderGetQueryParameters();
$queryParameters->select = ["id","appId","displayName","appRoles","oauth2PermissionScopes"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->servicePrincipalsById('servicePrincipal-id')->get($requestConfiguration);


```