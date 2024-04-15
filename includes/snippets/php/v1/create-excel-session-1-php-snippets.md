---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\CreateSessionPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CreateSessionPostRequestBody();
$requestBody->setPersistChanges(true);

$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->workbook()->createSession()->post($requestBody)->wait();

```