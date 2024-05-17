---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\UnenrollAssetsPostRequestBody;
use Microsoft\Graph\Generated\Models\UpdatableAsset;
use Microsoft\Graph\Generated\Models\AzureADDevice;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UnenrollAssetsPostRequestBody();
$requestBody->setUpdateCategory(new UpdateCategory('string'));
$assetsUpdatableAsset1 = new AzureADDevice();
$assetsUpdatableAsset1->setOdataType('#microsoft.graph.windowsUpdates.azureADDevice');
$assetsUpdatableAsset1->setId('String (identifier)');
$assetsArray []= $assetsUpdatableAsset1;
$requestBody->setAssets($assetsArray);


$graphServiceClient->admin()->windows()->updates()->updatableAssets()->microsoftGraphWindowsUpdatesUnenrollAssets()->post($requestBody)->wait();

```