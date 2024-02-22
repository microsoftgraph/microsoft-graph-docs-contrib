---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AuthenticationStrengthPolicy();
$requestBody->setOdataType('#microsoft.graph.authenticationStrengthPolicy');
$requestBody->setDisplayName('Contoso authentication level');
$requestBody->setDescription('The only authentication level allowed to access our secret apps');
$requestBody->setAllowedCombinations([new AuthenticationMethodModes('password, hardwareOath'),new AuthenticationMethodModes('password, sms'),	]);

$result = $graphServiceClient->policies()->authenticationStrengthPolicies()->post($requestBody)->wait();

```