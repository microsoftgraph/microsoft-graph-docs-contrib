---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TooManyGlobalAdminsAssignedToTenantAlertConfiguration();
$requestBody->setOdataType('#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertConfiguration');
$requestBody->setIsEnabled(true);
$requestBody->setGlobalAdminCountThreshold(7);
$requestBody->setPercentageOfGlobalAdminsOutOfRolesThreshold(70);

$result = $graphServiceClient->identityGovernance()->roleManagementAlerts()->alertConfigurations()->byUnifiedRoleManagementAlertConfigurationId('unifiedRoleManagementAlertConfiguration-id')->patch($requestBody)->wait();

```