---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PersonAward();
$requestBody->setDescription('Lifetime Achievement award from the International Association of Branding Managers');

$requestBody->setDisplayName('Lifetime Achievement Award For Excellence in Branding');

$requestBody->setIssuedDate('Date');

$requestBody->setIssuingAuthority('International Association of Branding Management');

$requestBody->setThumbnailUrl('https://iabm.io/sdhdfhsdhshsd.jpg');

$requestBody->setWebUrl('https://www.iabm.io');



$requestResult = $graphServiceClient->me()->profile()->awards()->post($requestBody);


```