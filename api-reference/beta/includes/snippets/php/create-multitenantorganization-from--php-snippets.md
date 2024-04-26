---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\MultiTenantOrganization;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MultiTenantOrganization();
$requestBody->setDisplayName('Contoso organization');
$requestBody->setDescription('Multi-tenant organization between Contoso, Fabrikam, and Woodgrove Bank');

$result = $graphServiceClient->tenantRelationships()->multiTenantOrganization()->put($requestBody)->wait();

```