---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UpdatableAssetGroup();
$requestBody->setOdataType('#microsoft.graph.windowsUpdates.updatableAssetGroup');

$result = $graphServiceClient->admin()->windows()->updates()->updatableAssets()->post($requestBody)->wait();

```