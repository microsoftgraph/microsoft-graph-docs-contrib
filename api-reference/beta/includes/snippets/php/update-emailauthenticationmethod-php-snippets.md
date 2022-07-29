---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EmailMethod();
$additionalData = [
'emailAddress' => 'kim@contoso.com', 
];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->usersById('user-id')->authentication()->emailMethodsById('emailAuthenticationMethod-id')->put($requestBody);


```