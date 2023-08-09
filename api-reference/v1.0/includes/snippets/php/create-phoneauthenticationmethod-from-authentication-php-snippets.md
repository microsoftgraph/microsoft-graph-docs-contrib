---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PhoneAuthenticationMethod();
$requestBody->setPhoneNumber('+1 2065555555');

$requestBody->setPhoneType(new AuthenticationPhoneType('mobile'));



$result = $graphServiceClient->users()->byUserId('user-id')->authentication()->phoneMethods()->post($requestBody);


```