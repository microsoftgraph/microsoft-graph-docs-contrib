---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CrossTenantAccessPolicyConfigurationPartner();
$inboundTrust = new CrossTenantAccessPolicyInboundTrust();
$inboundTrust->setIsMfaAccepted(true);
$inboundTrust->setIsCompliantDeviceAccepted(true);
$inboundTrust->setIsHybridAzureADJoinedDeviceAccepted(true);
$requestBody->setInboundTrust($inboundTrust);

$result = $graphServiceClient->policies()->crossTenantAccessPolicy()->partners()->byCrossTenantAccessPolicyConfigurationPartnerTenantId('crossTenantAccessPolicyConfigurationPartner-tenantId')->patch($requestBody)->wait();

```