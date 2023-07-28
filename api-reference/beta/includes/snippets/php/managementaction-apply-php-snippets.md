---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ApplyPostRequestBody();
$requestBody->setTenantId('String');

$requestBody->setTenantGroupId('String');

$requestBody->setManagementTemplateId('String');



$result = $graphServiceClient->tenantRelationships()->managedTenants()->managementActions()->byManagementActionId('managementAction-id')->microsoftGraphManagedTenantsApply()->post($requestBody);


```