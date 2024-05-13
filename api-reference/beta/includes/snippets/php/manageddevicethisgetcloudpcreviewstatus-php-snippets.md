---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->deviceManagement()->managedDevices()->byManagedDeviceId('managedDevice-id')->getCloudPcReviewStatus()->get()->wait();

```