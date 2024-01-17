---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Invitation();
$requestBody->setInvitedUserDisplayName('John Doe (Tailspin Toys)');
$requestBody->setInvitedUserEmailAddress('john@tailspintoys.com');
$requestBody->setSendInvitationMessage(false);
$requestBody->setInviteRedirectUrl('https://myapps.microsoft.com');

$result = $graphServiceClient->invitations()->post($requestBody)->wait();

```