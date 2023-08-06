---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GetAllSitesRequestBuilderGetRequestConfiguration();
$queryParameters = GetAllSitesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->skiptoken = "U1BHZW9EYXRhTG9jYXRpb25Db2RlYU5BTQ";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->sites()->getAllSites()->get($requestConfiguration);


```