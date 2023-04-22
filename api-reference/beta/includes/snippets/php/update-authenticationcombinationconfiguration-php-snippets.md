---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AuthenticationCombinationConfiguration();
$requestBody->setAppliesToCombinations([$requestBody->setAuthenticationMethodModes(new AuthenticationMethodModes('fido2'));
]);



$requestResult = $graphServiceClient->identity()->conditionalAccess()->authenticationStrength()->policiesById('authenticationStrengthPolicy-id')->combinationConfigurationsById('authenticationCombinationConfiguration-id')->patch($requestBody);


```