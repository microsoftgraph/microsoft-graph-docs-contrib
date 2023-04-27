---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PersonName();
$requestBody->setNickname('Kesha');



$result = $graphServiceClient->me()->profile()->namesById('personName-id')->patch($requestBody);


```