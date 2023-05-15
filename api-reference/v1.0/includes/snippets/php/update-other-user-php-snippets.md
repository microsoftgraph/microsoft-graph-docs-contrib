---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new User();
$requestBody->setBusinessPhones(['+1 425 555 0109', ]);

$requestBody->setOfficeLocation('18/2111');



$result = $graphServiceClient->usersById('user-id')->patch($requestBody);


```