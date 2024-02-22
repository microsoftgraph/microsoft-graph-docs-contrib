---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->roleManagement()->directory()->roleEligibilityScheduleRequests()->byUnifiedRoleEligibilityScheduleRequestId('unifiedRoleEligibilityScheduleRequest-id')->cancel()->post()->wait();

```