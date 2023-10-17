---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->roleManagement()->directory()->roleAssignmentScheduleRequests()->byUnifiedRoleAssignmentScheduleRequestId('unifiedRoleAssignmentScheduleRequest-id')->cancel()->post()->wait();

```