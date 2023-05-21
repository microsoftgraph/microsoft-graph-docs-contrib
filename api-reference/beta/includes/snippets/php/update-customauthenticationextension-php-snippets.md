---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CustomAuthenticationExtension();
$requestBody->set@odatatype('#microsoft.graph.onTokenIssuanceStartCustomExtension');

$requestBody->setDisplayName('onTokenIssuanceStartCustomExtension');

$requestBody->setDescription('Fetch additional claims from custom user store');

$endpointConfiguration = new CustomExtensionEndpointConfiguration();
$endpointConfiguration->set@odatatype('#microsoft.graph.httpRequestEndpoint');

$additionalData = [
		'targetUrl' => 'https://authenticationeventsAPI.contoso.com', 
];
$endpointConfiguration->setAdditionalData($additionalData);



$requestBody->setEndpointConfiguration($endpointConfiguration);
$authenticationConfiguration = new CustomExtensionAuthenticationConfiguration();
$authenticationConfiguration->set@odatatype('#microsoft.graph.azureAdTokenAuthentication');

$additionalData = [
		'resourceId' => 'api://authenticationeventsAPI.contoso.com/a13d0fc1-04ab-4ede-b215-63de0174cbb4', 
];
$authenticationConfiguration->setAdditionalData($additionalData);



$requestBody->setAuthenticationConfiguration($authenticationConfiguration);
$additionalData = [
		'claimsForTokenConfiguration' => $claimsForTokenConfiguration1 = new ();
$		claimsForTokenConfiguration1->setClaimIdInApiResponse('DateOfBirth');


$claimsForTokenConfigurationArray []= $claimsForTokenConfiguration1;
$claimsForTokenConfiguration2 = new ();
$		claimsForTokenConfiguration2->setClaimIdInApiResponse('CustomRoles');


$claimsForTokenConfigurationArray []= $claimsForTokenConfiguration2;
$requestBody->setClaimsForTokenConfiguration($claimsForTokenConfigurationArray);


];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->identity()->customAuthenticationExtensions()->byCustomAuthenticationExtensionId('customAuthenticationExtension-id')->patch($requestBody);


```