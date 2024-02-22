---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UnassignTagPostRequestBody();
$requestBody->setTenantIds(['String', 	]);

$result = $graphServiceClient->tenantRelationships()->managedTenants()->tenantTags()->byTenantTagId('tenantTag-id')->microsoftGraphManagedTenantsUnassignTag()->post($requestBody)->wait();

```