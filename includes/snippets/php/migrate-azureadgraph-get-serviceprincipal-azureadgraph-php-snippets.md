---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new ServicePrincipalsRequestBuilderGetRequestConfiguration();

$queryParameters = new ServicePrincipalsRequestBuilderGetQueryParameters();
$queryParameters->filter = "appId eq '00000002-0000-0000-c000-000000000000'";

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->servicePrincipals()->get($requestConfiguration);


```