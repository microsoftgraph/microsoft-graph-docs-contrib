---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\SignInPreferences;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SignInPreferences();
$requestBody->setUserPreferredMethodForSecondaryAuthentication(new UserDefaultAuthenticationMethodType('oath'));

$result = $graphServiceClient->users()->byUserId('user-id')->authentication()->signInPreferences()->patch($requestBody)->wait();

```