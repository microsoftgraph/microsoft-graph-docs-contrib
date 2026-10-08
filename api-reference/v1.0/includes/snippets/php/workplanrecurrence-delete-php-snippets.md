---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->me()->settings()->workHoursAndLocations()->recurrences()->byWorkPlanRecurrenceId('workPlanRecurrence-id')->delete()->wait();

```