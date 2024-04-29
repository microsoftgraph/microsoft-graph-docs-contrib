---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\B2cIdentityUserFlow;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new B2cIdentityUserFlow();
$requestBody->setId('Customer');
$requestBody->setUserFlowType(new UserFlowType('signUpOrSignIn'));
$requestBody->setUserFlowTypeVersion(3);

$result = $graphServiceClient->identity()->b2cUserFlows()->post($requestBody)->wait();

```