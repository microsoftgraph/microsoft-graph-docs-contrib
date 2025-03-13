---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->employeeExperience()->goals()->exportJobs()->byGoalsExportJobId('goalsExportJob-id')->content()->get()->wait();

```