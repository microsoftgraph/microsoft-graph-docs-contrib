---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new B2cAuthenticationMethodsPolicy();
$requestBody->setIsEmailPasswordAuthenticationEnabled(false);

$requestBody->setIsUserNameAuthenticationEnabled(true);

$requestBody->setIsPhoneOneTimePasswordAuthenticationEnabled(true);



$result = $graphServiceClient->policies()->b2cAuthenticationMethodsPolicy()->patch($requestBody);


```