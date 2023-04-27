---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EmailAuthenticationMethod();
$requestBody->setEmailAddress('kim@contoso.com');



$result = $graphServiceClient->usersById('user-id')->authentication()->emailMethods()->post($requestBody);


```