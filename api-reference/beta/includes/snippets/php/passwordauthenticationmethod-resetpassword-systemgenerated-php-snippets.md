---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ResetPasswordPostRequestBody();

$result = $graphServiceClient->users()->byUserId('user-id')->authentication()->methods()->byAuthenticationMethodId('authenticationMethod-id')->resetPassword()->post($requestBody)->wait();

```