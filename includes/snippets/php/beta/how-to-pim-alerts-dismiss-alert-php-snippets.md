---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\UnifiedRoleManagementAlert;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UnifiedRoleManagementAlert();
$requestBody->setIsActive(false);

$result = $graphServiceClient->identityGovernance()->roleManagementAlerts()->alerts()->byUnifiedRoleManagementAlertId('unifiedRoleManagementAlert-id')->patch($requestBody)->wait();

```