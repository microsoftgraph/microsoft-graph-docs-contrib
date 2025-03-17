---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->roleManagement()->directory()->roleAssignmentScheduleRequests()->byUnifiedRoleAssignmentScheduleRequestId('unifiedRoleAssignmentScheduleRequest-id')->cancel()->post()->wait();

```