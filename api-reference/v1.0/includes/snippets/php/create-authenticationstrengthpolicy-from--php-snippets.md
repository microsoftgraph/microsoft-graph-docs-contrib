---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AuthenticationStrengthPolicy();
$requestBody->set@odatatype('#microsoft.graph.authenticationStrengthPolicy');

$requestBody->setDisplayName('Contoso authentication level');

$requestBody->setDescription('The only authentication level allowed to access our secret apps');

$requestBody->setAllowedCombinations([$requestBody->setAuthenticationMethodModes(new AuthenticationMethodModes('password, hardwareoath'));
$requestBody->setAuthenticationMethodModes(new AuthenticationMethodModes('password, sms'));
]);



$result = $graphServiceClient->policies()->authenticationStrengthPolicies()->post($requestBody);


```