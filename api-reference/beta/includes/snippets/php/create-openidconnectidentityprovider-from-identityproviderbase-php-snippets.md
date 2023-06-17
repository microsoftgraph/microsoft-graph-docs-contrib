---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new IdentityProviderBase();
$requestBody->set@odatatype('microsoft.graph.openIdConnectIdentityProvider');

$requestBody->setDisplayName('Login with the Contoso identity provider');

$additionalData = [
		'clientId' => '56433757-cadd-4135-8431-2c9e3fd68ae8', 
		'clientSecret' => '12345', 
		'claimsMapping' => $requestBody = new ClaimsMapping();
$		requestBody->setUserId('myUserId');

$		requestBody->setGivenName('myGivenName');

$		requestBody->setSurname('mySurname');

$		requestBody->setEmail('myEmail');

$		requestBody->setDisplayName('myDisplayName');


$requestBody->setClaimsMapping($claimsMapping);

		'domainHint' => 'mycustomoidc', 
		'metadataUrl' => 'https://mycustomoidc.com/.well-known/openid-configuration', 
		'responseMode' => 'form_post', 
		'responseType' => 'code', 
		'scope' => 'openid', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->identity()->identityProviders()->post($requestBody);


```