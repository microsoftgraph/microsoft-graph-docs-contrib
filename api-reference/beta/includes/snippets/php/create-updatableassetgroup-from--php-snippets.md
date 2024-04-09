---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\UpdatableAssetGroup;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UpdatableAssetGroup();
$requestBody->setOdataType('#microsoft.graph.windowsUpdates.updatableAssetGroup');

$result = $graphServiceClient->admin()->windows()->updates()->updatableAssets()->post($requestBody)->wait();

```