---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

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


$graphServiceClient->drives()->byDriveId('drive-id')->items()->byItemId('driveItem-id')->workbook()->worksheets()->byWorksheetId('workbookWorksheet-id')->protection()->protect()->post($requestBody);


```