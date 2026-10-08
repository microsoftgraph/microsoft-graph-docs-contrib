---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\MultiTenantOrganizationMember;
use Microsoft\Graph\Generated\Models\MultiTenantOrganizationMemberRole;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MultiTenantOrganizationMember();
$requestBody->setRole(new MultiTenantOrganizationMemberRole('owner'));

$result = $graphServiceClient->tenantRelationships()->multiTenantOrganization()->tenants()->byMultiTenantOrganizationMemberId('multiTenantOrganizationMember-id')->patch($requestBody)->wait();

```