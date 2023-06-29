---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ValidatePasswordPostRequestBody();
$requestBody->setPassword('1234567890');



$result = $graphServiceClient->users()->validatePassword()->post($requestBody);


```