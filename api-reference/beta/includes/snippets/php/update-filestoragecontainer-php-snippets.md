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
$requestBody->setDisplayName('Updated Name');
$requestBody->setDescription('Updated Description');
$settings = new FileStorageContainerSettings();
$settings->setIsOcrEnabled(false);
$settings->setItemDefaultSensitivityLabelId('3d8789ae-7375-4ded-8eeb-d6bc226e42fb');
$requestBody->setSettings($settings);

$result = $graphServiceClient->storage()->fileStorage()->containers()->byFileStorageContainerId('fileStorageContainer-id')->patch($requestBody)->wait();

```