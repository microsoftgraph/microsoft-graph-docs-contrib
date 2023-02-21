---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CrossTenantIdentitySyncPolicyPartner();
$additionalData = [
'userSyncInbound' => $requestBody = new UserSyncInbound();
		$requestBody->setIsSyncAllowed(true);


$requestBody->setUserSyncInbound($userSyncInbound);

];
$requestBody->setAdditionalData($additionalData);




$requestResult = $graphServiceClient->policies()->crossTenantAccessPolicy()->partnersById('crossTenantAccessPolicyConfigurationPartner-tenantId')->identitySynchronization()->patch($requestBody);


```