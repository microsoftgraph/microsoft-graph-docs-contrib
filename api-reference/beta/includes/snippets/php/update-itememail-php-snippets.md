---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ItemEmail();
$requestBody->setDisplayName('Business Email');

$requestBody->setType(new EmailType('work'));



$result = $graphServiceClient->usersById('user-id')->profile()->emailsById('itemEmail-id')->patch($requestBody);


```