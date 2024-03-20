---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ApplyPostRequestBody();
$requestBody->setTenantId('String');
$requestBody->setTenantGroupId('String');
$requestBody->setManagementTemplateId('String');

$result = $graphServiceClient->tenantRelationships()->managedTenants()->managementActions()->byManagementActionId('managementAction-id')->microsoftGraphManagedTenantsApply()->post($requestBody)->wait();

```