---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new ServicePrincipalsRequestBuilderGetRequestConfiguration();
$queryParameters = ServicePrincipalsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "displayName eq 'Microsoft Graph'";
$queryParameters->select = ["id","displayName","appId","oauth2PermissionScopes"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->servicePrincipals()->get($requestConfiguration);


```