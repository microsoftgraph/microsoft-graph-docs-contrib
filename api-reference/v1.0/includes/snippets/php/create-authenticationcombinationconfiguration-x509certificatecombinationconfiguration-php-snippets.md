---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\X509CertificateCombinationConfiguration;
use Microsoft\Graph\Generated\Models\AuthenticationMethodModes;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new X509CertificateCombinationConfiguration();
$requestBody->setOdataType('#microsoft.graph.x509CertificateCombinationConfiguration');
$requestBody->setAllowedIssuerSkis(['9A4248C6AC8C2931AB2A86537818E92E7B6C97B6', 	]);
$requestBody->setAllowedPolicyOIDs([	]);
$requestBody->setAppliesToCombinations([new AuthenticationMethodModes('x509CertificateSingleFactor '),	]);

$result = $graphServiceClient->identity()->conditionalAccess()->authenticationStrength()->policies()->byAuthenticationStrengthPolicyId('authenticationStrengthPolicy-id')->combinationConfigurations()->post($requestBody)->wait();

```