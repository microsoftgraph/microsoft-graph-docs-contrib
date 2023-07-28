---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EmailAuthenticationMethod();
$requestBody->setEmailAddress('kim@contoso.com');



$result = $graphServiceClient->users()->byUserId('user-id')->authentication()->emailMethods()->byEmailAuthenticationMethodId('emailAuthenticationMethod-id')->patch($requestBody);


```