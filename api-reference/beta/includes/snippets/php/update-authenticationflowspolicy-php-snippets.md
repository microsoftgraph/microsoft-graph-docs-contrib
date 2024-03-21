---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AuthenticationFlowsPolicy();
$selfServiceSignUp = new SelfServiceSignUpAuthenticationFlowConfiguration();
$selfServiceSignUp->setIsEnabled(true);
$requestBody->setSelfServiceSignUp($selfServiceSignUp);

$result = $graphServiceClient->policies()->authenticationFlowsPolicy()->patch($requestBody)->wait();

```