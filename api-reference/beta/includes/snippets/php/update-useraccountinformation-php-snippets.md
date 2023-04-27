---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UserAccountInformation();
$requestBody->setCountryCode('NO');



$result = $graphServiceClient->me()->profile()->accountById('userAccountInformation-id')->patch($requestBody);


```