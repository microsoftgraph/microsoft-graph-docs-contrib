---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PersonAnnualEvent();
$requestBody->setType(new PersonAnnualEventType('birthday'));

$requestBody->setDate('1980-01-08');



$requestResult = $graphServiceClient->me()->profile()->anniversaries()->post($requestBody);


```