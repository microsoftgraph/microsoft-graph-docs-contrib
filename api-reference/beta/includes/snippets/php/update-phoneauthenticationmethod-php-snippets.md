---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\PhoneAuthenticationMethod;
use Microsoft\Graph\Beta\Generated\Models\AuthenticationPhoneType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PhoneAuthenticationMethod();
$requestBody->setPhoneNumber('+1 2065555554');
$requestBody->setPhoneType(new AuthenticationPhoneType('mobile'));

$result = $graphServiceClient->users()->byUserId('user-id')->authentication()->phoneMethods()->byPhoneAuthenticationMethodId('phoneAuthenticationMethod-id')->patch($requestBody)->wait();

```