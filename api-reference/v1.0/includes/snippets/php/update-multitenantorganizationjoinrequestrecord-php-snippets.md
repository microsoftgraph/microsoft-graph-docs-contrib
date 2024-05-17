---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\MultiTenantOrganizationJoinRequestRecord;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MultiTenantOrganizationJoinRequestRecord();
$requestBody->setAddedByTenantId('1fd6544e-e994-4de2-9f1b-787b51c7d325');

$result = $graphServiceClient->tenantRelationships()->multiTenantOrganization()->joinRequest()->patch($requestBody)->wait();

```