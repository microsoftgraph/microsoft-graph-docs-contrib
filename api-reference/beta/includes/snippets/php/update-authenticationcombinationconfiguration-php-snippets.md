---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AuthenticationCombinationConfiguration();
$requestBody->setAppliesToCombinations([new AuthenticationMethodModes('fido2'),	]);

$result = $graphServiceClient->identity()->conditionalAccess()->authenticationStrength()->policies()->byAuthenticationStrengthPolicyId('authenticationStrengthPolicy-id')->combinationConfigurations()->byAuthenticationCombinationConfigurationId('authenticationCombinationConfiguration-id')->patch($requestBody)->wait();

```