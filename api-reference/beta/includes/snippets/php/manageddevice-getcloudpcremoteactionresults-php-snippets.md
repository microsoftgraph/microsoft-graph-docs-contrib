---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->deviceManagement()->managedDevices()->byManagedDeviceId('managedDevice-id')->getCloudPcRemoteActionResults()->get()->wait();

```