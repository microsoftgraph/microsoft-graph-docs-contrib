---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Invitation();
$requestBody->setInvitedUserEmailAddress('admin@fabrikam.com');
$requestBody->setInviteRedirectUrl('https://myapp.contoso.com');

$result = $graphServiceClient->invitations()->post($requestBody)->wait();

```