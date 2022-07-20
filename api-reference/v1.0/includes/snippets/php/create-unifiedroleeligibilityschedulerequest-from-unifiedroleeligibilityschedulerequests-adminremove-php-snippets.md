---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UnifiedRoleEligibilityScheduleRequest();
$requestBody->setAction('adminRemove');

$requestBody->setRoleDefinitionId('8424c6f0-a189-499e-bbd0-26c1753c96d4');

$requestBody->setDirectoryScopeId('/');

$requestBody->setPrincipalId('071cc716-8147-4397-a5ba-b2105951cc0b');



$requestResult = $graphServiceClient->roleManagement()->directory()->roleEligibilityScheduleRequests()->post($requestBody);


```