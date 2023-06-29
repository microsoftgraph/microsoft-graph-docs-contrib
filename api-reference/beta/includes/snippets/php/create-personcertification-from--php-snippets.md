---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PersonCertification();
$requestBody->setCertificationId('KB-1235466333663322');

$requestBody->setDescription('Blackbelt in Marketing - Brand Management');

$requestBody->setDisplayName('Marketing Blackbelt - Brand Management');

$requestBody->setThumbnailUrl('https://iame.io/dfhdfdfd334.jpg');

$requestBody->setWebUrl('https://www.iame.io/blackbelt');



$result = $graphServiceClient->me()->profile()->certifications()->post($requestBody);


```