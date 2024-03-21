---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new B2cAuthenticationMethodsPolicy();
$requestBody->setIsEmailPasswordAuthenticationEnabled(false);
$requestBody->setIsUserNameAuthenticationEnabled(true);
$requestBody->setIsPhoneOneTimePasswordAuthenticationEnabled(true);

$result = $graphServiceClient->policies()->b2cAuthenticationMethodsPolicy()->patch($requestBody)->wait();

```