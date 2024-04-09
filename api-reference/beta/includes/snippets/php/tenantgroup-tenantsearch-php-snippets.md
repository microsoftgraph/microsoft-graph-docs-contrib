---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\TenantSearchPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TenantSearchPostRequestBody();
$requestBody->setTenantId('String');

$result = $graphServiceClient->tenantRelationships()->managedTenants()->tenantGroups()->microsoftGraphManagedTenantsTenantSearch()->post($requestBody)->wait();

```