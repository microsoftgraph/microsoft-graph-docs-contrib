---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\User;
use Microsoft\Graph\Generated\Models\ObjectIdentity;
use Microsoft\Graph\Generated\Models\PasswordProfile;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new User();
$requestBody->setDisplayName('Test User');
$identitiesObjectIdentity1 = new ObjectIdentity();
$identitiesObjectIdentity1->setSignInType('emailAddress');
$identitiesObjectIdentity1->setIssuer('contoso.onmicrosoft.com');
$identitiesObjectIdentity1->setIssuerAssignedId('adelev@adatum.com');
$identitiesArray []= $identitiesObjectIdentity1;
$requestBody->setIdentities($identitiesArray);

$requestBody->setMail('adelev@adatum.com');
$passwordProfile = new PasswordProfile();
$passwordProfile->setPassword('passwordValue');
$passwordProfile->setForceChangePasswordNextSignIn(true);
$requestBody->setPasswordProfile($passwordProfile);
$requestBody->setPasswordPolicies('DisablePasswordExpiration');

$result = $graphServiceClient->users()->post($requestBody)->wait();

```