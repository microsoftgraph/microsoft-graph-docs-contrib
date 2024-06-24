---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\B2cAuthenticationMethodsPolicy;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new B2cAuthenticationMethodsPolicy();
$requestBody->setIsEmailPasswordAuthenticationEnabled(false);
$requestBody->setIsUserNameAuthenticationEnabled(true);
$requestBody->setIsPhoneOneTimePasswordAuthenticationEnabled(true);

$result = $graphServiceClient->policies()->b2cAuthenticationMethodsPolicy()->patch($requestBody)->wait();

```