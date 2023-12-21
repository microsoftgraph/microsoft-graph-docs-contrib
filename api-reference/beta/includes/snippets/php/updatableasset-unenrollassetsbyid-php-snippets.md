---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UnenrollAssetsByIdPostRequestBody();
$requestBody->setUpdateCategory(new UpdateCategory('feature'));
$requestBody->setMemberEntityType('#microsoft.graph.windowsUpdates.azureADDevice');
$requestBody->setIds(['String', 'String', 'String', 	]);

$graphServiceClient->admin()->windows()->updates()->updatableAssets()->microsoftGraphWindowsUpdatesUnenrollAssetsById()->post($requestBody)->wait();

```