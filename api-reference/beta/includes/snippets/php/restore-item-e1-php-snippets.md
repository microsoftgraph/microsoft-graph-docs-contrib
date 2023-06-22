---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new RestorePostRequestBody();
$parentReference = new ItemReference();
$parentReference->setId('String');


$requestBody->setParentReference($parentReference);
$requestBody->setName('String');



$result = $graphServiceClient->drivesById('drive-id')->itemsById('driveItem-id')->restore()->post($requestBody);


```