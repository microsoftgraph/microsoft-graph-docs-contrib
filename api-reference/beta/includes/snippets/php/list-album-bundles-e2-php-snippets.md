---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new BundlesRequestBuilderGetRequestConfiguration();
$queryParameters = BundlesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "bundle/album ne null";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->drivesById('drive-id')->bundles()->get($requestConfiguration);


```