---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Invitation();
$requestBody->setInvitedUserDisplayName('John Doe (Tailspin Toys)');

$requestBody->setInvitedUserEmailAddress('john@tailspintoys.com');

$requestBody->setSendInvitationMessage(false);

$requestBody->setInviteRedirectUrl('https://myapps.microsoft.com');



$result = $graphServiceClient->invitations()->post($requestBody);


```