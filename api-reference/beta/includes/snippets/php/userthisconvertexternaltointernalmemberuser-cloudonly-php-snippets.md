---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\ConvertExternalToInternalMemberUser\ConvertExternalToInternalMemberUserPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\PasswordProfile;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ConvertExternalToInternalMemberUserPostRequestBody();
$requestBody->setUserPrincipalName('AdeleVance@contoso.com');
$passwordProfile = new PasswordProfile();
$passwordProfile->setPassword('Zdi087#2jhkahf');
$passwordProfile->setForceChangePasswordNextSignIn(true);
$requestBody->setPasswordProfile($passwordProfile);

$result = $graphServiceClient->users()->byUserId('user-id')->convertExternalToInternalMemberUser()->post($requestBody)->wait();

```