---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new User();
$passwordProfile = new PasswordProfile();
$passwordProfile->setForceChangePasswordNextSignIn(false);

$passwordProfile->setPassword('xWwvJ]6NMw+bWH-d');


$requestBody->setPasswordProfile($passwordProfile);


$result = $graphServiceClient->users()->byUserId('user-id')->patch($requestBody);


```