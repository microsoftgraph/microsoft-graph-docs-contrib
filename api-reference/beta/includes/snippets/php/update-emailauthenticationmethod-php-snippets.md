---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EmailAuthenticationMethod();
$requestBody->setEmailAddress('kim@contoso.com');

$result = $graphServiceClient->users()->byUserId('user-id')->authentication()->emailMethods()->byEmailAuthenticationMethodId('emailAuthenticationMethod-id')->patch($requestBody)->wait();

```