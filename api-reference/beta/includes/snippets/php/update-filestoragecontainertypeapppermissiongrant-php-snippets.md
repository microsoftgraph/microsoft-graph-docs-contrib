---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\FileStorageContainerTypeAppPermissionGrant;
use Microsoft\Graph\Beta\Generated\Models\FileStorageContainerTypeAppPermission;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new FileStorageContainerTypeAppPermissionGrant();
$requestBody->setApplicationPermissions([new FileStorageContainerTypeAppPermission('full'),	]);

$result = $graphServiceClient->storage()->fileStorage()->containerTypeRegistrations()->byFileStorageContainerTypeRegistrationId('fileStorageContainerTypeRegistration-id')->applicationPermissionGrants()->byFileStorageContainerTypeAppPermissionGrantAppId('fileStorageContainerTypeAppPermissionGrant-appId')->patch($requestBody)->wait();

```