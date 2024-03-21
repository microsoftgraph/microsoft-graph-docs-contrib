---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->tenantRelationships()->managedTenants()->deviceCompliancePolicySettingStateSummaries()->byDeviceCompliancePolicySettingStateSummaryId('deviceCompliancePolicySettingStateSummary-id')->get()->wait();

```