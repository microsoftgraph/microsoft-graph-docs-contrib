---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\SharePointMigrationJob;
use Microsoft\Graph\Beta\Generated\Models\SharePointMigrationContainerInfo;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SharePointMigrationJob();
$containerInfo = new SharePointMigrationContainerInfo();
$containerInfo->setDataContainerUri('https://spoxxx.blob.core.windows.net/data?sp=rw&sig=');
$containerInfo->setMetadataContainerUri('https://spoxxx.blob.core.windows.net/metadata?sp=rw&sig=');
$containerInfo->setEncryptionKey('base64 encoded key for AES-256-CBC encryption');
$requestBody->setContainerInfo($containerInfo);

$result = $graphServiceClient->storage()->fileStorage()->containers()->byFileStorageContainerId('fileStorageContainer-id')->migrationJobs()->post($requestBody)->wait();

```