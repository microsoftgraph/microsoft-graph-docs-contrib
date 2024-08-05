---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->identityGovernance()->privilegedAccess()->group()->assignmentScheduleRequests()->byPrivilegedAccessGroupAssignmentScheduleRequestId('privilegedAccessGroupAssignmentScheduleRequest-id')->cancel()->post()->wait();

```