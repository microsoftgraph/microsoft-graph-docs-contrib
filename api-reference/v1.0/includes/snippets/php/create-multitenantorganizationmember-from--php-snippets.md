---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\MultiTenantOrganizationMember;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MultiTenantOrganizationMember();
$requestBody->setTenantId('4a12efe6-aa14-4d03-8dff-88fc89e2e2ad');
$requestBody->setDisplayName('Fabrikam');

$result = $graphServiceClient->tenantRelationships()->multiTenantOrganization()->tenants()->post($requestBody)->wait();

```