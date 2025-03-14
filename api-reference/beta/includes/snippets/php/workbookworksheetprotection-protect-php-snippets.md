---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Drives\Item\Items\Item\Workbook\Worksheets\Item\Protection\Protect\ProtectPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\WorkbookWorksheetProtectionOptions;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ProtectPostRequestBody();
$options = new WorkbookWorksheetProtectionOptions();
$options->setAllowFormatCells(true);
$options->setAllowFormatColumns(true);
$options->setAllowFormatRows(true);
$options->setAllowInsertColumns(true);
$options->setAllowInsertRows(true);
$options->setAllowInsertHyperlinks(true);
$options->setAllowDeleteColumns(true);
$options->setAllowDeleteRows(true);
$options->setAllowSort(true);
$options->setAllowAutoFilter(true);
$options->setAllowPivotTables(true);
$requestBody->setOptions($options);

$graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->workbook()->worksheets()->byWorkbookWorksheetId('workbookWorksheet-id')->protection()->protect()->post($requestBody)->wait();

```