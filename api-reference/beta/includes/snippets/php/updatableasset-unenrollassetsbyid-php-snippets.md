---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\UnenrollAssetsByIdPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UnenrollAssetsByIdPostRequestBody();
$requestBody->setUpdateCategory(new UpdateCategory('feature'));
$requestBody->setMemberEntityType('#microsoft.graph.windowsUpdates.azureADDevice');
$requestBody->setIds(['String', 'String', 'String', 	]);

$graphServiceClient->admin()->windows()->updates()->updatableAssets()->microsoftGraphWindowsUpdatesUnenrollAssetsById()->post($requestBody)->wait();

```