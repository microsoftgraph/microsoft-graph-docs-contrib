---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new B2xIdentityUserFlow();
$requestBody->setId('Partner');

$requestBody->setUserFlowType(new UserFlowType('signUpOrSignIn'));

$requestBody->setUserFlowTypeVersion(1);



$result = $graphServiceClient->identity()->b2xUserFlows()->post($requestBody);


```