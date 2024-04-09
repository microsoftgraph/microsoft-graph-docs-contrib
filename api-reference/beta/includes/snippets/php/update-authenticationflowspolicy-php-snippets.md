---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AuthenticationFlowsPolicy;
use Microsoft\Graph\Generated\Models\SelfServiceSignUpAuthenticationFlowConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AuthenticationFlowsPolicy();
$selfServiceSignUp = new SelfServiceSignUpAuthenticationFlowConfiguration();
$selfServiceSignUp->setIsEnabled(true);
$requestBody->setSelfServiceSignUp($selfServiceSignUp);

$result = $graphServiceClient->policies()->authenticationFlowsPolicy()->patch($requestBody)->wait();

```