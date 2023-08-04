---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PersonAward();
$requestBody->setDescription('Lifetime Achievement award from the International Association of Branding Managers');

$requestBody->setDisplayName('Lifetime Achievement Award For Excellence in Branding');

$requestBody->setIssuedDate(new Date('Date'));

$requestBody->setIssuingAuthority('International Association of Branding Management');

$requestBody->setThumbnailUrl('https://iabm.io/sdhdfhsdhshsd.jpg');

$requestBody->setWebUrl('https://www.iabm.io');



$result = $graphServiceClient->me()->profile()->awards()->post($requestBody);


```