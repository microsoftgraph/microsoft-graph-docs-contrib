---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CopyPostRequestBody();
$parentReference = new ItemReference();
$parentReference->setPath('/drive/root:/Documents');


$requestBody->setParentReference($parentReference);
$requestBody->setName('Copy of LargeFolder1');



$result = $graphServiceClient->drivesById('drive-id')->itemsById('driveItem-id')->copy()->post($requestBody);


```