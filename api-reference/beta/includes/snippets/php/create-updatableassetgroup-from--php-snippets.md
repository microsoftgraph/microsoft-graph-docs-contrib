---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UpdatableAsset();
$requestBody->set@odatatype('#microsoft.graph.windowsUpdates.updatableAssetGroup');



$result = $graphServiceClient->admin()->windows()->updates()->updatableAssets()->post($requestBody);


```