---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ResetPasswordPostRequestBody();
$requestBody->setNewPassword('Cuyo5459');



$result = $graphServiceClient->users()->byUserId('user-id')->authentication()->methods()->byMethodId('authenticationMethod-id')->resetPassword()->post($requestBody);


```