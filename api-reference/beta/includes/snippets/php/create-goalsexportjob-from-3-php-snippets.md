---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\GoalsExportJob;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GoalsExportJob();
$requestBody->setGoalsOrganizationId('String');
$requestBody->setExplorerViewId('String');

$result = $graphServiceClient->employeeExperience()->goals()->exportJobs()->post($requestBody)->wait();

```