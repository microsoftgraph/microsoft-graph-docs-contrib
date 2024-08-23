---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\SignInPreferences;
use Microsoft\Graph\Beta\Generated\Models\UserDefaultAuthenticationMethodType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SignInPreferences();
$requestBody->setUserPreferredMethodForSecondaryAuthentication(new UserDefaultAuthenticationMethodType('oath'));

$result = $graphServiceClient->users()->byUserId('user-id')->authentication()->signInPreferences()->patch($requestBody)->wait();

```