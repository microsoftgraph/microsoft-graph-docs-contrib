---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new User();
$requestBody->setAccountEnabled(true);

$requestBody->setDisplayName('MyTestUser1');

$requestBody->setMailNickname('MyTestUser1');

$requestBody->setUserPrincipalName('MyTestUser1@contoso.com');

$passwordProfile = new PasswordProfile();
$passwordProfile->setForceChangePasswordNextSignIn(true);

$passwordProfile->setPassword('Contoso1234');


$requestBody->setPasswordProfile($passwordProfile);


$result = $graphServiceClient->users()->post($requestBody);


```