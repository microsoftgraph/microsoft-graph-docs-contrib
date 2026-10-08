---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\CrossTenantMigrationJob;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CrossTenantMigrationJob();
$requestBody->setCompleteAfterDateTime(new \DateTime('2025-05-22T17:14:52Z'));

$result = $graphServiceClient->solutions()->migrations()->crossTenantMigrationJobs()->byCrossTenantMigrationJobId('crossTenantMigrationJob-id')->patch($requestBody)->wait();

```