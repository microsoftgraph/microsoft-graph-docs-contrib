---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->roleManagement()->directory()->roleAssignmentScheduleInstances()->byUnifiedRoleAssignmentScheduleInstanceId('unifiedRoleAssignmentScheduleInstance-id')->get()->wait();

```