---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DriveItem();
$parentReference = new ItemReference();
$parentReference->setId('new-parent-folder-id');


$requestBody->setParentReference($parentReference);
$requestBody->setName('new-item-name.txt');



$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->patch($requestBody);


```