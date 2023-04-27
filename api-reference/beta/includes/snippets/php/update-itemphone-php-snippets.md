---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ItemPhone();
$requestBody->setType(new PhoneType('other'));



$result = $graphServiceClient->usersById('user-id')->profile()->phonesById('itemPhone-id')->patch($requestBody);


```