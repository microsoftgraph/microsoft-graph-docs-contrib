---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\IdentityUserFlow;
use Microsoft\Graph\Beta\Generated\Models\UserFlowType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new IdentityUserFlow();
$requestBody->setId('Pol1');
$requestBody->setUserFlowType(new UserFlowType('signUpOrSignIn'));
$requestBody->setUserFlowTypeVersion(1);

$result = $graphServiceClient->identity()->userFlows()->post($requestBody)->wait();

```