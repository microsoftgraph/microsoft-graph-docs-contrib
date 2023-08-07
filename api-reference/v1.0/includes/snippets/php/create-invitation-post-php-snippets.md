---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Invitation();
$requestBody->setInvitedUserEmailAddress('admin@fabrikam.com');

$requestBody->setInviteRedirectUrl('https://myapp.contoso.com');



$result = $graphServiceClient->invitations()->post($requestBody);


```