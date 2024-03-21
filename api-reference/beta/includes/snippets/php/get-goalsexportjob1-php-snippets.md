---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->employeeExperience()->goals()->exportJobs()->byGoalsExportJobId('goalsExportJob-id')->get()->wait();

```