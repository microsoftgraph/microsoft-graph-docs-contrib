---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MultiTenantOrganizationIdentitySyncPolicyTemplate();
$requestBody->setTemplateApplicationLevel(new TemplateApplicationLevel('newPartners,existingPartners'));
$userSyncInbound = new CrossTenantUserSyncInbound();
$userSyncInbound->setIsSyncAllowed(true);
$requestBody->setUserSyncInbound($userSyncInbound);

$result = $graphServiceClient->policies()->crossTenantAccessPolicy()->templates()->multiTenantOrganizationIdentitySynchronization()->patch($requestBody)->wait();

```