---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Drives\Item\Items\Item\Workbook\Tables\Item\Columns\Add\AddPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AddPostRequestBody();
$requestBody->setIndex(3);
$values1 = new UntypedNode();
$valuesArray []= $values1;
$requestBody->setValues($valuesArray);


$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->workbook()->tables()->byWorkbookTableId('workbookTable-id')->columns()->add()->post($requestBody)->wait();

```