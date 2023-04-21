---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new IdentityApiConnector();
$requestBody->setDisplayName('New Test API');

$requestBody->setTargetUrl('https://otherapi.com/api/endpoint');

$authenticationConfiguration = new ApiAuthenticationConfigurationBase();
$authenticationConfiguration->set@odatatype('microsoft.graph.basicAuthentication');

$additionalData = [
		'username' => '<NEW_USERNAME>', 
		'password' => '<NEW_PASSWORD>', 
];
$authenticationConfiguration->setAdditionalData($additionalData);



$requestBody->setAuthenticationConfiguration($authenticationConfiguration);


$result = $graphServiceClient->identity()->apiConnectorsById('identityApiConnector-id')->patch($requestBody);


```