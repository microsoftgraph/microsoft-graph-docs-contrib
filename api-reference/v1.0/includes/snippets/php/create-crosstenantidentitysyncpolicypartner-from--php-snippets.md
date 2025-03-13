---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\CrossTenantIdentitySyncPolicyPartner;
use Microsoft\Graph\Generated\Models\CrossTenantUserSyncInbound;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CrossTenantIdentitySyncPolicyPartner();
$requestBody->setDisplayName('Fabrikam');
$userSyncInbound = new CrossTenantUserSyncInbound();
$userSyncInbound->setIsSyncAllowed(true);
$requestBody->setUserSyncInbound($userSyncInbound);

$result = $graphServiceClient->policies()->crossTenantAccessPolicy()->partners()->byCrossTenantAccessPolicyConfigurationPartnerTenantId('crossTenantAccessPolicyConfigurationPartner-tenantId')->identitySynchronization()->put($requestBody)->wait();

```