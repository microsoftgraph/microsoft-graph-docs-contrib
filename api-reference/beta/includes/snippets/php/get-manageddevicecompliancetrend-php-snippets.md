---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->tenantRelationships()->managedTenants()->managedDeviceComplianceTrends()->byManagedDeviceComplianceTrendId('managedDeviceComplianceTrend-id')->get()->wait();

```