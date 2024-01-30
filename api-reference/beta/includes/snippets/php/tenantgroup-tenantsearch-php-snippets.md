---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TenantSearchPostRequestBody();
$requestBody->setTenantId('String');

$result = $graphServiceClient->tenantRelationships()->managedTenants()->tenantGroups()->microsoftGraphManagedTenantsTenantSearch()->post($requestBody)->wait();

```