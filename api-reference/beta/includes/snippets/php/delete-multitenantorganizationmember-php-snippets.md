---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->tenantRelationships()->multiTenantOrganization()->tenants()->byMultiTenantOrganizationMemberId('multiTenantOrganizationMember-id')->delete()->wait();

```