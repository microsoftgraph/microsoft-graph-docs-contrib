---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OnTokenIssuanceStartCustomExtension();
$requestBody->setOdataType('#microsoft.graph.onTokenIssuanceStartCustomExtension');

$requestBody->setDisplayName('onTokenIssuanceStartCustomExtension');

$requestBody->setDescription('Fetch additional claims from custom user store');

$endpointConfiguration = new HttpRequestEndpoint();
$endpointConfiguration->setOdataType('#microsoft.graph.httpRequestEndpoint');

$endpointConfiguration->setTargetUrl('https://authenticationeventsAPI.contoso.com');


$requestBody->setEndpointConfiguration($endpointConfiguration);
$authenticationConfiguration = new AzureAdTokenAuthentication();
$authenticationConfiguration->setOdataType('#microsoft.graph.azureAdTokenAuthentication');

$authenticationConfiguration->setResourceId('api://authenticationeventsAPI.contoso.com/a13d0fc1-04ab-4ede-b215-63de0174cbb4');


$requestBody->setAuthenticationConfiguration($authenticationConfiguration);
$clientConfiguration = new CustomExtensionClientConfiguration();
$clientConfiguration->setTimeoutInMilliseconds(2000);

$additionalData = [
		'maximumRetries' => 1,
];
$clientConfiguration->setAdditionalData($additionalData);



$requestBody->setClientConfiguration($clientConfiguration);
$claimsForTokenConfigurationOnTokenIssuanceStartReturnClaim1 = new OnTokenIssuanceStartReturnClaim();
$claimsForTokenConfigurationOnTokenIssuanceStartReturnClaim1->setClaimIdInApiResponse('DateOfBirth');


$claimsForTokenConfigurationArray []= $claimsForTokenConfigurationOnTokenIssuanceStartReturnClaim1;
$claimsForTokenConfigurationOnTokenIssuanceStartReturnClaim2 = new OnTokenIssuanceStartReturnClaim();
$claimsForTokenConfigurationOnTokenIssuanceStartReturnClaim2->setClaimIdInApiResponse('CustomRoles');


$claimsForTokenConfigurationArray []= $claimsForTokenConfigurationOnTokenIssuanceStartReturnClaim2;
$requestBody->setClaimsForTokenConfiguration($claimsForTokenConfigurationArray);




$result = $graphServiceClient->identity()->customAuthenticationExtensions()->post($requestBody);


```