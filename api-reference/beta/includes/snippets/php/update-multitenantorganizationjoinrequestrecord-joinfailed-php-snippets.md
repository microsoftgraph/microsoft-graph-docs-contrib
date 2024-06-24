---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\MultiTenantOrganizationJoinRequestRecord;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MultiTenantOrganizationJoinRequestRecord();
$requestBody->setAddedByTenantId('00000000-0000-0000-0000-000000000000');

$result = $graphServiceClient->tenantRelationships()->multiTenantOrganization()->joinRequest()->patch($requestBody)->wait();

```