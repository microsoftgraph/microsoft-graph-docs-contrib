---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Admin\Windows\Updates\UpdatableAssets\MicrosoftGraphWindowsUpdatesUnenrollAssetsById\UnenrollAssetsByIdPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\WindowsUpdates\UpdateCategory;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UnenrollAssetsByIdPostRequestBody();
$requestBody->setUpdateCategory(new UpdateCategory('feature'));
$requestBody->setMemberEntityType('#microsoft.graph.windowsUpdates.azureADDevice');
$requestBody->setIds(['String', 'String', 'String', 	]);

$graphServiceClient->admin()->windows()->updates()->updatableAssets()->microsoftGraphWindowsUpdatesUnenrollAssetsById()->post($requestBody)->wait();

```