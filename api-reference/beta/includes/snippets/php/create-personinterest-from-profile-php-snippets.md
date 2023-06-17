---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PersonInterest();
$requestBody->setCategories(['Sports', ]);

$requestBody->setDescription('World\'s greatest football club');

$requestBody->setDisplayName('Chelsea FC');

$requestBody->setWebUrl('https://www.chelseafc.com');



$result = $graphServiceClient->me()->profile()->interests()->post($requestBody);


```