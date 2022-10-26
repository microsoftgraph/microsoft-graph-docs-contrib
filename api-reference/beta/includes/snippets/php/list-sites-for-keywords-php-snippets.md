---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new SitesRequestBuilderGetRequestConfiguration();

$queryParameters = new SitesRequestBuilderGetQueryParameters();
$queryParameters->select = ["siteCollection","webUrl"];
$queryParameters->filter = "siteCollection/root ne null";

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->sites()->get($requestConfiguration);


```