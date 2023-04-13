---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new IdentityProviderBase();
$requestBody->set@odatatype('microsoft.graph.appleManagedIdentityProvider');

$requestBody->setDisplayName('Sign in with Apple');

$additionalData = [
		'developerId' => 'UBF8T346G9', 
		'serviceId' => 'com.microsoft.rts.b2c.test.client', 
		'keyId' => '99P6D879C4', 
		'certificateData' => '******', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->identity()->identityProviders()->post($requestBody);


```