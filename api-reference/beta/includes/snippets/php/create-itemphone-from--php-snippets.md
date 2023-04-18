---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ItemPhone();
$requestBody->setDisplayName('Car Phone');

$requestBody->setNumber('+7 499 342 22 13');



$result = $graphServiceClient->me()->profile()->phones()->post($requestBody);


```