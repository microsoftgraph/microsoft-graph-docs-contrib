---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->identityGovernance()->privilegedAccess()->group()->eligibilityScheduleInstances()->byPrivilegedAccessGroupEligibilityScheduleInstanceId('privilegedAccessGroupEligibilityScheduleInstance-id')->get()->wait();

```