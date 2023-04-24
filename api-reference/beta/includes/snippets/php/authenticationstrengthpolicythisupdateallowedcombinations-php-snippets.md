---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UpdateAllowedCombinationsPostRequestBody();
$requestBody->setAllowedCombinations([$requestBody->setAuthenticationMethodModes(new AuthenticationMethodModes('password, voice'));
]);



$result = $graphServiceClient->policies()->authenticationStrengthPoliciesById('authenticationStrengthPolicy-id')->updateAllowedCombinations()->post($requestBody);


```