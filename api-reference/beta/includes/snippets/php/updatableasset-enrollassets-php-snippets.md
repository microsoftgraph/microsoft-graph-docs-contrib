---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Admin\Windows\Updates\UpdatableAssets\MicrosoftGraphWindowsUpdatesEnrollAssets\EnrollAssetsPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\WindowsUpdates\UpdateCategory;
use Microsoft\Graph\Beta\Generated\Models\WindowsUpdates\UpdatableAsset;
use Microsoft\Graph\Beta\Generated\Models\WindowsUpdates\AzureADDevice;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EnrollAssetsPostRequestBody();
$requestBody->setUpdateCategory(new UpdateCategory('string'));
$assetsUpdatableAsset1 = new AzureADDevice();
$assetsUpdatableAsset1->setOdataType('#microsoft.graph.windowsUpdates.azureADDevice');
$assetsUpdatableAsset1->setId('String (identifier)');
$assetsArray []= $assetsUpdatableAsset1;
$requestBody->setAssets($assetsArray);


$graphServiceClient->admin()->windows()->updates()->updatableAssets()->microsoftGraphWindowsUpdatesEnrollAssets()->post($requestBody)->wait();

```