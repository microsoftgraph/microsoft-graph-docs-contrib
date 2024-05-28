---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Drives\Item\Items\Item\Workbook\Tables\Item\Rows\RowsRequestBuilderPostRequestConfiguration;
use Microsoft\Graph\Beta\Generated\Models\WorkbookTableRow;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WorkbookTableRow();
$requestBody->setValues([	[1,2,3],	[4,5,6],	]);
$requestConfiguration = new RowsRequestBuilderPostRequestConfiguration();
$headers = [
		'Prefer' => 'respond-async',
		'Workbook-Session-Id' => '{Workbook-Session-Id}',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->workbook()->tables()->byWorkbookTableId('workbookTable-id')->rows()->post($requestBody, $requestConfiguration)->wait();

```