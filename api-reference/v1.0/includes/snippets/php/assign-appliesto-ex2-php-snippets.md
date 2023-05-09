---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AppManagementPolicie();
$additionalData = [
		'@odata.id' => 'https://graph.microsoft.com/v1.0/policies/appManagementPolicies/{id}', 
];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->servicePrincipalsById('servicePrincipal-id')->appManagementPoliciesById('appManagementPolicy-id')->post($requestBody);


```