---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PersonWebsite();
$requestBody->setCategories(['football', ]);

$requestBody->setDisplayName('Lyn Damer');

$requestBody->setWebUrl('www.lyndamer.no');



$result = $graphServiceClient->me()->profile()->websites()->post($requestBody);


```