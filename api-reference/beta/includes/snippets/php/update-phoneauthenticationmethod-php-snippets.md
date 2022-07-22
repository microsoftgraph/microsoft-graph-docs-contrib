---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PhoneMethod();
$additionalData = [
'phoneNumber' => '+1 2065555554', 
'phoneType' => 'mobile', 
];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->me()->authentication()->phoneMethodsById('phoneAuthenticationMethod-id')->put($requestBody);


```