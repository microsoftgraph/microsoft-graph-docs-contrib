---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->policies()->crossTenantAccessPolicy()->partners()->byCrossTenantAccessPolicyConfigurationPartnerTenantId('crossTenantAccessPolicyConfigurationPartner-tenantId')->identitySynchronization()->delete()->wait();

```