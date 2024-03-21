---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->identityGovernance()->privilegedAccess()->group()->eligibilityScheduleInstances()->byPrivilegedAccessGroupEligibilityScheduleInstanceId('privilegedAccessGroupEligibilityScheduleInstance-id')->get()->wait();

```