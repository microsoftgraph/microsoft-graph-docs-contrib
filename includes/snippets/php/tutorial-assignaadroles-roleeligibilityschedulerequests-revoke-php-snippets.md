---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UnifiedRoleEligibilityScheduleRequest();
$requestBody->setAction(new UnifiedRoleScheduleRequestActions('adminremove'));

$requestBody->setPrincipalId('e77cbb23-0ff2-4e18-819c-690f58269752');

$requestBody->setRoleDefinitionId('fe930be7-5e62-47db-91af-98c3a49a38b1');

$requestBody->setDirectoryScopeId('/');



$result = $graphServiceClient->roleManagement()->directory()->roleEligibilityScheduleRequests()->post($requestBody);


```