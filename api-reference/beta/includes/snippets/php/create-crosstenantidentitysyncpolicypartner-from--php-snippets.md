---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new IdentitySynchronizationPutRequestBody();
$additionalData = [
		'displayName' => 'Fabrikam', 
		'userSyncInbound' => $requestBody = new UserSyncInbound();
		$requestBody->setIsSyncAllowed(true);


$requestBody->setUserSyncInbound($userSyncInbound);

];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->policies()->crossTenantAccessPolicy()->partnersById('crossTenantAccessPolicyConfigurationPartner-tenantId')->identitySynchronization()->put($requestBody);


```