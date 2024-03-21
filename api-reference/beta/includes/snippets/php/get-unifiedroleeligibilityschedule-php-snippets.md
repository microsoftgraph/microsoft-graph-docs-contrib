---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->roleManagement()->directory()->roleEligibilitySchedules()->byUnifiedRoleEligibilityScheduleId('unifiedRoleEligibilitySchedule-id')->get()->wait();

```