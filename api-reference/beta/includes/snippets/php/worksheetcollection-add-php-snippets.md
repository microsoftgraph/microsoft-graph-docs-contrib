---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Drives\Item\Items\Item\Workbook\Worksheets\Add\AddPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AddPostRequestBody();
$requestBody->setName('name-value');

$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->workbook()->worksheets()->add()->post($requestBody)->wait();

```