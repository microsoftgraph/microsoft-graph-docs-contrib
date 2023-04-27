---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EducationClass();
$requestBody->setDescription('History - World History 1');

$requestBody->setDisplayName('World History Level 1');



$result = $graphServiceClient->education()->classesById('educationClass-id')->patch($requestBody);


```