---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->reports()->exportJobs()->byCloudPcExportJobId('cloudPcExportJob-id')->get()->wait();

```