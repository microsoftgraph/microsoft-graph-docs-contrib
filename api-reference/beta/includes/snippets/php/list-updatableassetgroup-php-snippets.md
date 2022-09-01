---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new UpdatableAssetsRequestBuilderGetRequestConfiguration();

$queryParameters = new UpdatableAssetsRequestBuilderGetQueryParameters();
$queryParameters->filter = "isof('microsoft.graph.windowsUpdates.updatableAssetGroup')";

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->admin()->windows()->updates()->updatableAssets()->get($requestConfiguration);


```