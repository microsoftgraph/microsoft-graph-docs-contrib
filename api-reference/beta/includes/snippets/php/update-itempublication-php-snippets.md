---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ItemPublication();
$requestBody->setPublisher('International Association of Branding Management Publishing');

$requestBody->setThumbnailUrl('https://iabm.io/sdhdfhsdhshsd.jpg');



$result = $graphServiceClient->usersById('user-id')->profile()->publicationsById('itemPublication-id')->patch($requestBody);


```