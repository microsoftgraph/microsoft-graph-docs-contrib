---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->identityGovernance()->privilegedAccess()->group()->assignmentScheduleInstances()->byPrivilegedAccessGroupAssignmentScheduleInstanceId('privilegedAccessGroupAssignmentScheduleInstance-id')->get()->wait();

```