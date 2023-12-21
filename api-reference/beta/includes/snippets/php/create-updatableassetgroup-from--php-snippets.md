---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UpdatableAssetGroup();
$requestBody->setOdataType('#microsoft.graph.windowsUpdates.updatableAssetGroup');

$result = $graphServiceClient->admin()->windows()->updates()->updatableAssets()->post($requestBody)->wait();

```