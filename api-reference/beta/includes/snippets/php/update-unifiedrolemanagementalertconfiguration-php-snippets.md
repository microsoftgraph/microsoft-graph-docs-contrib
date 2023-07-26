---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new TooManyGlobalAdminsAssignedToTenantAlertConfiguration();
$requestBody->set@odatatype('#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertConfiguration');

$requestBody->setIsEnabled(true);

$requestBody->setGlobalAdminCountThreshold(7);

$requestBody->setPercentageOfGlobalAdminsOutOfRolesThreshold(70);



$result = $graphServiceClient->identityGovernance()->roleManagementAlerts()->alertConfigurations()->byAlertConfigurationId('unifiedRoleManagementAlertConfiguration-id')->patch($requestBody);


```