---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\FileStorageContainerType;
use Microsoft\Graph\Beta\Generated\Models\FileStorageContainerTypeSettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new FileStorageContainerType();
$requestBody->setOdataType('#microsoft.graph.fileStorageContainerType');
$settings = new FileStorageContainerTypeSettings();
$settings->setUrlTemplate('https://app.contoso.com/redirect?tenant={tenant-id}&drive={drive-id}&folder={folder-id}&item={item-id}');
$settings->setIsItemVersioningEnabled(true);
$settings->setIsSharingRestricted(false);
$requestBody->setSettings($settings);

$result = $graphServiceClient->storage()->fileStorage()->containerTypes()->byFileStorageContainerTypeId('fileStorageContainerType-id')->patch($requestBody)->wait();

```