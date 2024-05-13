---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->roleManagement()->directory()->roleEligibilityScheduleRequests()->byUnifiedRoleEligibilityScheduleRequestId('unifiedRoleEligibilityScheduleRequest-id')->cancel()->post()->wait();

```