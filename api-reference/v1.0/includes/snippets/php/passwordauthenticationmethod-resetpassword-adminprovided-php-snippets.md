---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ResetPasswordPostRequestBody();
$requestBody->setNewPassword('Cuyo5459');



$result = $graphServiceClient->usersById('user-id')->authentication()->methodsById('authenticationMethod-id')->resetPassword()->post($requestBody);


```