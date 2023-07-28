---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CrossTenantAccessPolicyConfigurationPartner();
$inboundTrust = new CrossTenantAccessPolicyInboundTrust();
$inboundTrust->setIsMfaAccepted(true);

$inboundTrust->setIsCompliantDeviceAccepted(true);

$inboundTrust->setIsHybridAzureADJoinedDeviceAccepted(true);


$requestBody->setInboundTrust($inboundTrust);


$result = $graphServiceClient->policies()->crossTenantAccessPolicy()->partners()->byCrossTenantAccessPolicyConfigurationPartnerId('crossTenantAccessPolicyConfigurationPartner-tenantId')->patch($requestBody);


```