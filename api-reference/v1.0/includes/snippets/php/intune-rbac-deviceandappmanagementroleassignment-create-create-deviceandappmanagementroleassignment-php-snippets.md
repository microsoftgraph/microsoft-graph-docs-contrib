---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new DeviceAndAppManagementRoleAssignment();
$requestBody->set@odatatype('#microsoft.graph.deviceAndAppManagementRoleAssignment');

$requestBody->setDisplayName('Display Name value');

$requestBody->setDescription('Description value');

$requestBody->setResourceScopes(['Resource Scopes value', ]);

$requestBody->setMembers(['Members value', ]);



$result = $graphServiceClient->deviceManagement()->roleAssignments()->post($requestBody);


```