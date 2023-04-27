---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new $refPatchRequestBody();
$additionalData = [
		'@odata.id' => 'https://graph.microsoft.com/beta/identity/identityProviders/B2X_1_Test', 
		'@odata.type' => '#microsoft.graph.identityProvider', 
];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->identity()->b2xUserFlowsById('b2xIdentityUserFlow-id')->userFlowIdentityProviders()->ref()->patch($requestBody);


```