---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RestorePostRequestBody();
$parentReference = new ItemReference();
$parentReference->setId('String');


$requestBody->setParentReference($parentReference);
$requestBody->setName('String');



$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->restore()->post($requestBody);


```