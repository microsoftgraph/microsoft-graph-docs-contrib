---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Drives\Item\Items\Item\Workbook\Tables\Item\Columns\Add\AddPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AddPostRequestBody();
$index = new Index();
$requestBody->setIndex($index);
$values1 = new ();
$valuesArray []= $values1;
$requestBody->setValues($valuesArray);


$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->workbook()->tables()->byWorkbookTableId('workbookTable-id')->columns()->add()->post($requestBody)->wait();

```