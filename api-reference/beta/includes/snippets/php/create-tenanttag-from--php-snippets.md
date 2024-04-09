---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\TenantTag;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TenantTag();
$requestBody->setDisplayName('Support');
$requestBody->setDescription('Tenants that have purchased extended support');

$result = $graphServiceClient->tenantRelationships()->managedTenants()->tenantTags()->post($requestBody)->wait();

```