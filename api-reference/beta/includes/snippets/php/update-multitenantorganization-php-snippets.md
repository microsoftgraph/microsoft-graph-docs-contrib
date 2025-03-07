---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\MultiTenantOrganization;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MultiTenantOrganization();
$requestBody->setDisplayName('Contoso organization');
$requestBody->setDescription('Multi-tenant organization between Contoso, Fabrikam, and Woodgrove Bank');

$result = $graphServiceClient->tenantRelationships()->multiTenantOrganization()->patch($requestBody)->wait();

```