---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PersonAward();
$requestBody->setIssuingAuthority('International Association of Branding Management');

$requestBody->setThumbnailUrl('https://iabm.io/sdhdfhsdhshsd.jpg');



$result = $graphServiceClient->usersById('user-id')->profile()->awardsById('personAward-id')->patch($requestBody);


```