---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\TenantRelationships\ManagedTenants\TenantTags\Item\MicrosoftGraphManagedTenantsAssignTag\AssignTagPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AssignTagPostRequestBody();
$requestBody->setTenantIds(['String', 	]);

$result = $graphServiceClient->tenantRelationships()->managedTenants()->tenantTags()->byTenantTagId('tenantTag-id')->microsoftGraphManagedTenantsAssignTag()->post($requestBody)->wait();

```