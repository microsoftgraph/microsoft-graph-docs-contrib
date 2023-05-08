---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UserFlowIdentityProvider();
$additionalData = [
		'@odata.id' => 'https://graph.microsoft.com/beta/identity/identityProviders/{id}', 
		'@odata.type' => '#microsoft.graph.identityProvider', 
];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->identity()->b2cUserFlowsById('b2cIdentityUserFlow-id')->userFlowIdentityProvidersById('identityProviderBase-id')->patch($requestBody);


```