---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->storage()->fileStorage()->containerTypeRegistrations()->byFileStorageContainerTypeRegistrationId('fileStorageContainerTypeRegistration-id')->applicationPermissionGrants()->byFileStorageContainerTypeAppPermissionGrantAppId('fileStorageContainerTypeAppPermissionGrant-appId')->delete()->wait();

```