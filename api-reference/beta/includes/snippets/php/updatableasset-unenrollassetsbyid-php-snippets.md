---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UnenrollAssetsByIdPostRequestBody();
$requestBody->setUpdateCategory(new UpdateCategory('feature'));

$requestBody->setMemberEntityType('#microsoft.graph.windowsUpdates.azureADDevice');

$requestBody->setIds(['String', 'String', 'String', ]);



$graphServiceClient->admin()->windows()->updates()->updatableAssets()->windowsUpdatesUnenrollAssetsById()->post($requestBody);


```