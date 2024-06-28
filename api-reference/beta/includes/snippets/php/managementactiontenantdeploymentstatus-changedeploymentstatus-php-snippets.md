---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\TenantRelationships\ManagedTenants\ManagementActionTenantDeploymentStatuses\MicrosoftGraphManagedTenantsChangeDeploymentStatus\ChangeDeploymentStatusPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ChangeDeploymentStatusPostRequestBody();
$requestBody->setTenantGroupId('String');
$requestBody->setTenantId('String');
$requestBody->setManagementActionId('String');
$requestBody->setManagementTemplateId('String');
$requestBody->setStatus('String');

$result = $graphServiceClient->tenantRelationships()->managedTenants()->managementActionTenantDeploymentStatuses()->microsoftGraphManagedTenantsChangeDeploymentStatus()->post($requestBody)->wait();

```