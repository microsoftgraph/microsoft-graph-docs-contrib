---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new User();
$requestBody->setAccountEnabled(true);

$requestBody->setDisplayName('Requestor1');

$requestBody->setMailNickname('Requestor1');

$requestBody->setUserPrincipalName('Requestor1@contoso.onmicrosoft.com');

$passwordProfile = new PasswordProfile();
$passwordProfile->setForceChangePasswordNextSignIn(true);

$passwordProfile->setPassword('Contoso1234');


$requestBody->setPasswordProfile($passwordProfile);


$result = $graphServiceClient->users()->post($requestBody);


```