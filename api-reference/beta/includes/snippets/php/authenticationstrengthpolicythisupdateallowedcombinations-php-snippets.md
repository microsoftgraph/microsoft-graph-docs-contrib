---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Policies\AuthenticationStrengthPolicies\Item\UpdateAllowedCombinations\UpdateAllowedCombinationsPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\AuthenticationMethodModes;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UpdateAllowedCombinationsPostRequestBody();
$requestBody->setAllowedCombinations([new AuthenticationMethodModes('password, voice'),	]);

$result = $graphServiceClient->policies()->authenticationStrengthPolicies()->byAuthenticationStrengthPolicyId('authenticationStrengthPolicy-id')->updateAllowedCombinations()->post($requestBody)->wait();

```