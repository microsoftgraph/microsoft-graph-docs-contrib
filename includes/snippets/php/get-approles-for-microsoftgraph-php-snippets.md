---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new ServicePrincipalsRequestBuilderGetRequestConfiguration();

$queryParameters = new ServicePrincipalsRequestBuilderGetQueryParameters();
$queryParameters->filter = "displayName eq 'Microsoft Graph'";
$queryParameters->select = ["id","displayName","appId","appRoles"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->servicePrincipals()->get($requestConfiguration);


```