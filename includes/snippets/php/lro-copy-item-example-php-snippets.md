---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CopyPostRequestBody();
$parentReference = new ItemReference();
$parentReference->setPath('/drive/root:/Documents');


$requestBody->setParentReference($parentReference);
$requestBody->setName('Copy of LargeFolder1');



$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->copy()->post($requestBody);


```