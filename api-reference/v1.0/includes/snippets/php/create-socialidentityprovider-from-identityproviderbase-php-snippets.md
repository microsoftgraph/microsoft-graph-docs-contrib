---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new IdentityProviderBase();
$requestBody->set@odatatype('microsoft.graph.socialIdentityProvider');

$requestBody->setDisplayName('Login with Amazon');

$additionalData = [
		'identityProviderType' => 'Amazon', 
		'clientId' => '56433757-cadd-4135-8431-2c9e3fd68ae8', 
		'clientSecret' => '000000000000', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->identity()->identityProviders()->post($requestBody);


```