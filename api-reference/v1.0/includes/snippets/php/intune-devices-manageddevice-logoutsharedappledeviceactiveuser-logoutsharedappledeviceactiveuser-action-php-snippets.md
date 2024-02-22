---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->deviceManagement()->managedDevices()->byManagedDeviceId('managedDevice-id')->logoutSharedAppleDeviceActiveUser()->post()->wait();

```