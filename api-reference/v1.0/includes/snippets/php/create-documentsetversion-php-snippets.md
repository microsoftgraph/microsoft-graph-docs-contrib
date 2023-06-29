---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new DocumentSetVersion();
$requestBody->setComment('v1');

$requestBody->setShouldCaptureMinorVersion(false);



$result = $graphServiceClient->sites()->bySiteId('site-id')->lists()->byListId('list-id')->items()->byItemId('listItem-id')->documentSetVersions()->post($requestBody);


```