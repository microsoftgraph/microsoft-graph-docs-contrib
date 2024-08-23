---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\WindowsUpdates\UpdatableAssetGroup;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UpdatableAssetGroup();
$requestBody->setOdataType('#microsoft.graph.windowsUpdates.updatableAssetGroup');

$result = $graphServiceClient->admin()->windows()->updates()->updatableAssets()->post($requestBody)->wait();

```