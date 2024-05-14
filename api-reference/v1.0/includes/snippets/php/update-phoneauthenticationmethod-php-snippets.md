---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\PhoneAuthenticationMethod;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PhoneAuthenticationMethod();
$requestBody->setPhoneNumber('+1 2065555554');
$requestBody->setPhoneType(new AuthenticationPhoneType('mobile'));

$result = $graphServiceClient->users()->byUserId('user-id')->authentication()->phoneMethods()->byPhoneAuthenticationMethodId('phoneAuthenticationMethod-id')->patch($requestBody)->wait();

```