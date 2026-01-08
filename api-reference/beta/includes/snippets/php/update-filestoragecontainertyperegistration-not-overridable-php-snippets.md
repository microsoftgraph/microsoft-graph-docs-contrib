---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\FileStorageContainerTypeRegistration;
use Microsoft\Graph\Beta\Generated\Models\FileStorageContainerTypeRegistrationSettings;
use Microsoft\Graph\Beta\Generated\Models\FileStorageContainerTypeAppPermissionGrant;
use Microsoft\Graph\Beta\Generated\Models\FileStorageContainerTypeAppPermission;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new FileStorageContainerTypeRegistration();
$settings = new FileStorageContainerTypeRegistrationSettings();
$settings->setUrlTemplate('https://fabrikam.example.com/{0}');
$requestBody->setSettings($settings);
$applicationPermissionGrantsFileStorageContainerTypeAppPermissionGrant1 = new FileStorageContainerTypeAppPermissionGrant();
$applicationPermissionGrantsFileStorageContainerTypeAppPermissionGrant1->setAppId('33225700-9a00-4c00-84dd-0c210f203f01');
$applicationPermissionGrantsFileStorageContainerTypeAppPermissionGrant1->setDelegatedPermissions([new FileStorageContainerTypeAppPermission('full'),	]);
$applicationPermissionGrantsFileStorageContainerTypeAppPermissionGrant1->setApplicationPermissions([new FileStorageContainerTypeAppPermission('none'),	]);
$applicationPermissionGrantsArray []= $applicationPermissionGrantsFileStorageContainerTypeAppPermissionGrant1;
$requestBody->setApplicationPermissionGrants($applicationPermissionGrantsArray);


$result = $graphServiceClient->storage()->fileStorage()->containerTypeRegistrations()->byFileStorageContainerTypeRegistrationId('fileStorageContainerTypeRegistration-id')->patch($requestBody)->wait();

```