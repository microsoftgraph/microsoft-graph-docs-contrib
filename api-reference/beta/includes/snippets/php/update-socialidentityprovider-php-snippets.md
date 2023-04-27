---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new IdentityProviderBase();
$requestBody->set@odatatype('#microsoft.graph.socialIdentityProvider');

$additionalData = [
		'clientSecret' => '1111111111111', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->identity()->identityProvidersById('identityProviderBase-id')->patch($requestBody);


```