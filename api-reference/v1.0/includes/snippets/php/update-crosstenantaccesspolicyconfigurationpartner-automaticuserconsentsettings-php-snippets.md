---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\CrossTenantAccessPolicyConfigurationPartner;
use Microsoft\Graph\Generated\Models\InboundOutboundPolicyConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CrossTenantAccessPolicyConfigurationPartner();
$automaticUserConsentSettings = new InboundOutboundPolicyConfiguration();
$automaticUserConsentSettings->setInboundAllowed(true);
$automaticUserConsentSettings->setOutboundAllowed(true);
$requestBody->setAutomaticUserConsentSettings($automaticUserConsentSettings);

$result = $graphServiceClient->policies()->crossTenantAccessPolicy()->partners()->byCrossTenantAccessPolicyConfigurationPartnerTenantId('crossTenantAccessPolicyConfigurationPartner-tenantId')->patch($requestBody)->wait();

```