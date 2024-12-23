---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->solutions()->backupRestore()->sharePointProtectionPolicies()->bySharePointProtectionPolicyId('sharePointProtectionPolicy-id')->siteProtectionUnitsBulkAdditionJobs()->bySiteProtectionUnitsBulkAdditionJobId('siteProtectionUnitsBulkAdditionJob-id')->get()->wait();

```