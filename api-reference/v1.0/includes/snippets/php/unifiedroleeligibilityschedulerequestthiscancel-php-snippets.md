---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->roleManagement()->directory()->roleEligibilityScheduleRequests()->byUnifiedRoleEligibilityScheduleRequestId('unifiedRoleEligibilityScheduleRequest-id')->cancel()->post()->wait();

```