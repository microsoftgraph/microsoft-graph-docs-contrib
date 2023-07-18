---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ItemPublication();
$requestBody->setPublisher('International Association of Branding Management Publishing');

$requestBody->setThumbnailUrl('https://iabm.io/sdhdfhsdhshsd.jpg');



$result = $graphServiceClient->users()->byUserId('user-id')->profile()->publications()->byItemPublicationId('itemPublication-id')->patch($requestBody);


```