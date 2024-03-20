---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SignInPreferences();
$requestBody->setUserPreferredMethodForSecondaryAuthentication(new UserDefaultAuthenticationMethodType('oath'));

$result = $graphServiceClient->users()->byUserId('user-id')->authentication()->signInPreferences()->patch($requestBody)->wait();

```