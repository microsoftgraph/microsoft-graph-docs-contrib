---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AuthenticationCombinationConfiguration();
$requestBody->set@odatatype('#microsoft.graph.fido2CombinationConfiguration');

$requestBody->setAppliesToCombinations([$requestBody->setAuthenticationMethodModes(new AuthenticationMethodModes('fido2'));
]);

$additionalData = [
	'allowedAAGUIDs' => ['486c3b50-889c-480a-abc5-c04ef7c873e0', 'c042882f-a621-40c8-94d3-9cde3a826fed', 'ec454c08-4c77-4012-9d48-45f7f0fccdfb', ],
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->identity()->conditionalAccess()->authenticationStrengths()->policiesById('authenticationStrengthPolicy-id')->combinationConfigurations()->post($requestBody);


```