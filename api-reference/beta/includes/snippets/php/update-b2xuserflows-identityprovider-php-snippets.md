---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new IdentityProvider();
$additionalData = [
		'@odata.id' => 'https://graph.microsoft.com/beta/identityProviders/{id}', 
];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->identity()->b2xUserFlowsById('b2xIdentityUserFlow-id')->identityProvidersById('identityProvider-id')->post($requestBody);


```