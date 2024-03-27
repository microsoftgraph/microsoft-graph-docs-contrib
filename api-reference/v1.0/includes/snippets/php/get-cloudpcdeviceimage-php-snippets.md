---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->deviceImages()->byCloudPcDeviceImageId('cloudPcDeviceImage-id')->get()->wait();

```