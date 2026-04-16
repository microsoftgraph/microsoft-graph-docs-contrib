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
$requestBody->setDisplayName('Updated Name');
$requestBody->setDescription('Updated Description');
$settings = new FileStorageContainerSettings();
$settings->setIsOcrEnabled(false);
$requestBody->setSettings($settings);

$result = $graphServiceClient->storage()->fileStorage()->containers()->byFileStorageContainerId('fileStorageContainer-id')->patch($requestBody)->wait();

```