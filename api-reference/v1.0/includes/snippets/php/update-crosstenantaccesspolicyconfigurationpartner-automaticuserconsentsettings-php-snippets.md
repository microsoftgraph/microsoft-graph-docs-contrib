---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CrossTenantAccessPolicyConfigurationPartner();
$automaticUserConsentSettings = new InboundOutboundPolicyConfiguration();
$automaticUserConsentSettings->setInboundAllowed(true);

$automaticUserConsentSettings->setOutboundAllowed(true);


$requestBody->setAutomaticUserConsentSettings($automaticUserConsentSettings);


$result = $graphServiceClient->policies()->crossTenantAccessPolicy()->partners()->byCrossTenantAccessPolicyConfigurationPartnerId('crossTenantAccessPolicyConfigurationPartner-tenantId')->patch($requestBody);


```