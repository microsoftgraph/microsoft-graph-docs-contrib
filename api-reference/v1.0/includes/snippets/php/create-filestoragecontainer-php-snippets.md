---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\FileStorageContainer;
use Microsoft\Graph\Generated\Models\FileStorageContainerSettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new FileStorageContainer();
$requestBody->setDisplayName('My Application Storage Container');
$requestBody->setDescription('Description of My Application Storage Container');
$requestBody->setContainerTypeId('91710488-5756-407f-9046-fbe5f0b4de73');
$settings = new FileStorageContainerSettings();
$settings->setIsOcrEnabled(true);
$requestBody->setSettings($settings);

$result = $graphServiceClient->storage()->fileStorage()->containers()->post($requestBody)->wait();

```