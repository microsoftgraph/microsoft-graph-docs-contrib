---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->cloudPCs()->getProvisionedCloudPCsWithGroupIdWithServicePlanId('{groupId}', '{servicePlanId}', )->get()->wait();

```