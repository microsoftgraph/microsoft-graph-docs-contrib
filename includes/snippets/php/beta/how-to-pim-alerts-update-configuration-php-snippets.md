---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TooManyGlobalAdminsAssignedToTenantAlertConfiguration();
$requestBody->setOdataType('#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertConfiguration');
$requestBody->setIsEnabled(true);
$requestBody->setGlobalAdminCountThreshold(4);
$requestBody->setPercentageOfGlobalAdminsOutOfRolesThreshold(10);

$result = $graphServiceClient->identityGovernance()->roleManagementAlerts()->alertConfigurations()->byUnifiedRoleManagementAlertConfigurationId('unifiedRoleManagementAlertConfiguration-id')->patch($requestBody)->wait();

```