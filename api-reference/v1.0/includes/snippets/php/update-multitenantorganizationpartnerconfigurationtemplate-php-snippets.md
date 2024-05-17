---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\MultiTenantOrganizationPartnerConfigurationTemplate;
use Microsoft\Graph\Generated\Models\CrossTenantAccessPolicyInboundTrust;
use Microsoft\Graph\Generated\Models\InboundOutboundPolicyConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MultiTenantOrganizationPartnerConfigurationTemplate();
$inboundTrust = new CrossTenantAccessPolicyInboundTrust();
$inboundTrust->setIsMfaAccepted(true);
$inboundTrust->setIsCompliantDeviceAccepted(true);
$inboundTrust->setIsHybridAzureADJoinedDeviceAccepted(true);
$requestBody->setInboundTrust($inboundTrust);
$automaticUserConsentSettings = new InboundOutboundPolicyConfiguration();
$automaticUserConsentSettings->setInboundAllowed(true);
$automaticUserConsentSettings->setOutboundAllowed(true);
$requestBody->setAutomaticUserConsentSettings($automaticUserConsentSettings);
$requestBody->setTemplateApplicationLevel(new TemplateApplicationLevel('newPartners,existingPartners'));

$result = $graphServiceClient->policies()->crossTenantAccessPolicy()->templates()->multiTenantOrganizationPartnerConfiguration()->patch($requestBody)->wait();

```