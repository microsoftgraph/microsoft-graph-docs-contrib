---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->tenantRelationships()->managedTenants()->cloudPcsOverview()->byCloudPcOverviewTenantId('cloudPcOverview-tenantId')->get()->wait();

```