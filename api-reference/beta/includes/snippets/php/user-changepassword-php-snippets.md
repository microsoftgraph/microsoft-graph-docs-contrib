---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ChangePasswordPostRequestBody();
$requestBody->setCurrentPassword('xWwvJ]6NMw+bWH-d');

$requestBody->setNewPassword('0eM85N54wFxWwvJ]');



$graphServiceClient->me()->changePassword()->post($requestBody);


```