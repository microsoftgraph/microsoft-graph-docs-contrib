---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\TenantRelationships\ManagedTenants\TenantGroups\MicrosoftGraphManagedTenantsTenantSearch\TenantSearchPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TenantSearchPostRequestBody();
$requestBody->setTenantId('String');

$result = $graphServiceClient->tenantRelationships()->managedTenants()->tenantGroups()->microsoftGraphManagedTenantsTenantSearch()->post($requestBody)->wait();

```