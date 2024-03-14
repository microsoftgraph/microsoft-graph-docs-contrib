---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->deviceManagement()->virtualEndpoint()->reports()->getRealTimeRemoteConnectionStatusWithCloudPcId('{cloudPcId}', )->get()->wait();

```