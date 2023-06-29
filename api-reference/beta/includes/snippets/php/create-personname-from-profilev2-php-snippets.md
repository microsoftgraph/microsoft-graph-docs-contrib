---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PersonName();
$requestBody->setDisplayName('Innocenty Popov');

$requestBody->setFirst('Innocenty');

$requestBody->setInitials('IP');

$requestBody->setLast('Popov');

$requestBody->setLanguageTag('en-US');

$requestBody->setMaiden(null);



$result = $graphServiceClient->me()->profile()->names()->post($requestBody);


```