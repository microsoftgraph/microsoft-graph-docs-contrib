---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new DriveItem();
$requestBody->setName('new-file-name.docx');



$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byItemId('driveItem-id')->patch($requestBody);


```