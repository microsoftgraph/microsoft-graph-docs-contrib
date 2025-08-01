---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\UnifiedRoleEligibilityScheduleRequest;
use Microsoft\Graph\Generated\Models\UnifiedRoleScheduleRequestActions;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UnifiedRoleEligibilityScheduleRequest();
$requestBody->setAction(new UnifiedRoleScheduleRequestActions('adminRemove'));
$requestBody->setPrincipalId('1189bbdd-1268-4a72-8c6d-6fe77d28f2e3');
$requestBody->setRoleDefinitionId('fe930be7-5e62-47db-91af-98c3a49a38b1');
$requestBody->setDirectoryScopeId('/');

$result = $graphServiceClient->roleManagement()->directory()->roleEligibilityScheduleRequests()->post($requestBody)->wait();

```