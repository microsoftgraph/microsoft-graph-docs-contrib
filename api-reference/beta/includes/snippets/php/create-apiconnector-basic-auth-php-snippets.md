---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new IdentityApiConnector();
$requestBody->setDisplayName('Test API');

$requestBody->setTargetUrl('https://someapi.com/api');

$authenticationConfiguration = new ApiAuthenticationConfigurationBase();
$authenticationConfiguration->set@odatatype('#microsoft.graph.basicAuthentication');

$additionalData = [
		'username' => '<USERNAME>', 
		'password' => '<PASSWORD>', 
];
$authenticationConfiguration->setAdditionalData($additionalData);



$requestBody->setAuthenticationConfiguration($authenticationConfiguration);


$result = $graphServiceClient->identity()->apiConnectors()->post($requestBody);


```