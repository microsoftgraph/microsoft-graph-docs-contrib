---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PersonWebsite();
$requestBody->setDescription('Lyn Damer play in the Women\'s 1st Division (Toppserien) in Norway');



$result = $graphServiceClient->me()->profile()->websitesById('personWebsite-id')->patch($requestBody);


```