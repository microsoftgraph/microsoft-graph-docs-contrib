---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GoalsExportJob();
$requestBody->setGoalsOrganizationId('String');
$requestBody->setExplorerViewId('String');

$result = $graphServiceClient->employeeExperience()->goals()->exportJobs()->post($requestBody)->wait();

```