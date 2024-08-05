---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->identityGovernance()->privilegedAccess()->group()->eligibilityScheduleRequests()->byPrivilegedAccessGroupEligibilityScheduleRequestId('privilegedAccessGroupEligibilityScheduleRequest-id')->cancel()->post()->wait();

```