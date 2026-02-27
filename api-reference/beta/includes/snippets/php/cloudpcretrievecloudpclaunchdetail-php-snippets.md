---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->me()->cloudPCs()->byCloudPCId('cloudPC-id')->retrieveCloudPcLaunchDetail()->get()->wait();

```