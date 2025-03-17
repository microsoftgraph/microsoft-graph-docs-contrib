---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Invitation;
use Microsoft\Graph\Generated\Models\User;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Invitation();
$requestBody->setInvitedUserEmailAddress('AdeleV@fabrikam.com');
$requestBody->setInviteRedirectUrl('https://myapp.contoso.com');
$invitedUser = new User();
$invitedUser->setId('264e6d50-eaec-461e-b187-873b1bcf855f');
$requestBody->setInvitedUser($invitedUser);
$requestBody->setResetRedemption(true);

$result = $graphServiceClient->invitations()->post($requestBody)->wait();

```