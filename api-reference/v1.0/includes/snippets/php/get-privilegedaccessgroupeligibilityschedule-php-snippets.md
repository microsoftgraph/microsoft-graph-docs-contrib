---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->identityGovernance()->privilegedAccess()->group()->eligibilitySchedules()->byPrivilegedAccessGroupEligibilityScheduleId('privilegedAccessGroupEligibilitySchedule-id')->get()->wait();

```