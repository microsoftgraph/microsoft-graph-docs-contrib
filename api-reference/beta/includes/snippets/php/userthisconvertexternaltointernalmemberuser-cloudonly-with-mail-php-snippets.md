---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ConvertExternalToInternalMemberUserPostRequestBody();
$requestBody->setUserPrincipalName('AdeleVance@contoso.com');
$passwordProfile = new PasswordProfile();
$passwordProfile->setPassword('Zdi087#2jhkahf');
$passwordProfile->setForceChangePasswordNextSignIn(true);
$requestBody->setPasswordProfile($passwordProfile);
$requestBody->setMail('AdeleV@contoso.com');

$result = $graphServiceClient->users()->byUserId('user-id')->convertExternalToInternalMemberUser()->post($requestBody)->wait();

```