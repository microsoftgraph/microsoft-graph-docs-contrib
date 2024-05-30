---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\WorkbookChartFont;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WorkbookChartFont();
$requestBody->setBold(true);
$requestBody->setColor('color-value');
$requestBody->setItalic(true);
$requestBody->setName('name-value');
$requestBody->setSize(99);
$requestBody->setUnderline('underline-value');

$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->workbook()->worksheets()->byWorkbookWorksheetId('workbookWorksheet-id')->charts()->byWorkbookChartId('workbookChart-id')->axes()->valueAxis()->format()->font()->patch($requestBody)->wait();

```