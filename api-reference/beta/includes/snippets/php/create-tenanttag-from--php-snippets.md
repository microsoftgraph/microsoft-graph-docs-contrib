---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ManagedTenants\TenantTag;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TenantTag();
$requestBody->setDisplayName('Support');
$requestBody->setDescription('Tenants that have purchased extended support');

$result = $graphServiceClient->tenantRelationships()->managedTenants()->tenantTags()->post($requestBody)->wait();

```