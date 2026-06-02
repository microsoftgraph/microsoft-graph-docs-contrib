---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->deviceManagement()->virtualEndpoint()->cloudPcPools()->byCloudPcPoolId('cloudPcPool-id')->delete()->wait();

```