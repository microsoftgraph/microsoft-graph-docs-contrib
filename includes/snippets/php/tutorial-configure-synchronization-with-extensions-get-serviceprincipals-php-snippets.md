---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new ServicePrincipalsRequestBuilderGetRequestConfiguration();

$queryParameters = new ServicePrincipalsRequestBuilderGetQueryParameters();
$queryParameters->select = ["id","appId","displayName"];
$queryParameters->filter = "startswith(displayName,%20'salesforce')";

$headers = [
'Authorization' => 'Bearer {Token}',
];

$requestConfiguration->queryParameters = $queryParameters;
$requestConfiguration->headers = $headers;


$requestResult = $graphServiceClient->servicePrincipals()->get($requestConfiguration);


```