---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TenantTag();
$requestBody->setDisplayName('Onboarding');
$requestBody->setDescription('Tenants that we are currently onboarding');

$result = $graphServiceClient->tenantRelationships()->managedTenants()->tenantTags()->byTenantTagId('tenantTag-id')->patch($requestBody)->wait();

```