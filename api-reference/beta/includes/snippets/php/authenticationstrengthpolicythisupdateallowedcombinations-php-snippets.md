---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UpdateAllowedCombinationsPostRequestBody();
$requestBody->setAllowedCombinations([new AuthenticationMethodModes('password, voice'),	]);



$result = $graphServiceClient->policies()->authenticationStrengthPolicies()->byAuthenticationStrengthPolicyId('authenticationStrengthPolicy-id')->updateAllowedCombinations()->post($requestBody);


```