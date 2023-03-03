---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new BundlesRequestBuilderGetRequestConfiguration();

$queryParameters = new BundlesRequestBuilderGetQueryParameters();
$queryParameters->filter = "bundle/album ne null";

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->drive()->bundles()->get($requestConfiguration);


```