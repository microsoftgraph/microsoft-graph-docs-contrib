---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->deviceManagement()->iosUpdateStatuses()->byIosUpdateDeviceStatusId('iosUpdateDeviceStatus-id')->get()->wait();

```