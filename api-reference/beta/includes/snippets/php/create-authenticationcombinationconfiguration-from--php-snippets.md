---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Fido2CombinationConfiguration();
$requestBody->setOdataType('#microsoft.graph.fido2CombinationConfiguration');

$requestBody->setAllowedAAGUIDs(['486c3b50-889c-480a-abc5-c04ef7c873e0', 'c042882f-a621-40c8-94d3-9cde3a826fed', 'ec454c08-4c77-4012-9d48-45f7f0fccdfb', 	]);

$requestBody->setAppliesToCombinations([new AuthenticationMethodModes('fido2'),	]);



$result = $graphServiceClient->identity()->conditionalAccess()->authenticationStrength()->policies()->byAuthenticationStrengthPolicyId('authenticationStrengthPolicy-id')->combinationConfigurations()->post($requestBody);


```