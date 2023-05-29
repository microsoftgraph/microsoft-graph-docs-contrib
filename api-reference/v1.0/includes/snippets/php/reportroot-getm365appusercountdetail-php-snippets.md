---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new GetM365AppUserDetailWithPeriodRequestBuilderGetRequestConfiguration();
$queryParameters = GetM365AppUserDetailWithPeriodRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->format = "application/json";
$requestConfiguration->queryParameters = $queryParameters;


$graphServiceClient->reports()->getM365AppUserDetail(period='{period}')()->get($requestConfiguration);


```