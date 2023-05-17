---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PersonInterest();
$requestBody->setCategories(['Sports', ]);



$result = $graphServiceClient->me()->profile()->interestsById('personInterest-id')->patch($requestBody);


```