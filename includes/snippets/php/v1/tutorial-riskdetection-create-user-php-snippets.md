---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new User();
$requestBody->setAccountEnabled(true);
$requestBody->setDisplayName('MyTestUser1');
$requestBody->setMailNickname('MyTestUser1');
$requestBody->setUserPrincipalName('MyTestUser1@contoso.com');
$passwordProfile = new PasswordProfile();
$passwordProfile->setForceChangePasswordNextSignIn(true);
$passwordProfile->setPassword('Contoso1234');
$requestBody->setPasswordProfile($passwordProfile);

$result = $graphServiceClient->users()->post($requestBody)->wait();

```