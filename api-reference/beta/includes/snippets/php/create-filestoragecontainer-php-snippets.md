---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\FileStorageContainer;
use Microsoft\Graph\Beta\Generated\Models\FileStorageContainerSettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new FileStorageContainer();
$requestBody->setDisplayName('My Application Storage Container');
$requestBody->setDescription('Description of My Application Storage Container');
$requestBody->setContainerTypeId('91710488-5756-407f-9046-fbe5f0b4de73');
$settings = new FileStorageContainerSettings();
$settings->setIsOcrEnabled(true);
$settings->setItemMajorVersionLimit(50);
$settings->setIsItemVersioningEnabled(true);
$settings->setItemDefaultSensitivityLabelId('3d8789ae-7375-4ded-8eeb-d6bc226e42fb');
$requestBody->setSettings($settings);

$result = $graphServiceClient->storage()->fileStorage()->containers()->post($requestBody)->wait();

```