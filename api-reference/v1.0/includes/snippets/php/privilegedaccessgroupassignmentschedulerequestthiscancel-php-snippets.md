---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->identityGovernance()->privilegedAccess()->group()->assignmentScheduleRequests()->byPrivilegedAccessGroupAssignmentScheduleRequestId('privilegedAccessGroupAssignmentScheduleRequest-id')->cancel()->post()->wait();

```