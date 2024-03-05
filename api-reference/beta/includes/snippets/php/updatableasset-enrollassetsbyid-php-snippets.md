---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EnrollAssetsByIdPostRequestBody();
$requestBody->setUpdateCategory(new UpdateCategory('feature'));
$requestBody->setMemberEntityType('#microsoft.graph.windowsUpdates.azureADDevice');
$requestBody->setIds(['String', 'String', 'String', 	]);

$graphServiceClient->admin()->windows()->updates()->updatableAssets()->microsoftGraphWindowsUpdatesEnrollAssetsById()->post($requestBody)->wait();

```