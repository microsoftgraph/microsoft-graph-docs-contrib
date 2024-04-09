---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\CopyPostRequestBody;
use Microsoft\Graph\Generated\Models\ItemReference;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CopyPostRequestBody();
$parentReference = new ItemReference();
$parentReference->setDriveId('6F7D00BF-FC4D-4E62-9769-6AEA81F3A21B');
$parentReference->setId('DCD0D3AD-8989-4F23-A5A2-2C086050513F');
$requestBody->setParentReference($parentReference);
$requestBody->setName('contoso plan (copy).txt');

$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->copy()->post($requestBody)->wait();

```