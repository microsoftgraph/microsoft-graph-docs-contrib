---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new B2cIdentityUserFlow();
$requestBody->setId('Customer');

$requestBody->setUserFlowType(new UserFlowType('signUpOrSignIn'));

$requestBody->setUserFlowTypeVersion(3);



$result = $graphServiceClient->identity()->b2cUserFlows()->post($requestBody);


```