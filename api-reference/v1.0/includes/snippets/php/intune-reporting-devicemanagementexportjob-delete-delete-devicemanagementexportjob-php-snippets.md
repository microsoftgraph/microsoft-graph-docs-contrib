---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->deviceManagement()->reports()->exportJobs()->byDeviceManagementExportJobId('deviceManagementExportJob-id')->delete()->wait();

```