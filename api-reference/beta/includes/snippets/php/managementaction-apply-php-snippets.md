---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ApplyPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ApplyPostRequestBody();
$requestBody->setTenantId('String');
$requestBody->setTenantGroupId('String');
$requestBody->setManagementTemplateId('String');

$result = $graphServiceClient->tenantRelationships()->managedTenants()->managementActions()->byManagementActionId('managementAction-id')->microsoftGraphManagedTenantsApply()->post($requestBody)->wait();

```