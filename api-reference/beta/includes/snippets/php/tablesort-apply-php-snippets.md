---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ApplyPostRequestBody();
$fieldsWorkbookSortField1 = new WorkbookSortField();
$fieldsWorkbookSortField1->setKey(99);

$fieldsWorkbookSortField1->setSortOn('sortOn-value');

$fieldsWorkbookSortField1->setAscending(true);

$fieldsWorkbookSortField1->setColor('color-value');

$fieldsWorkbookSortField1->setDataOption('dataOption-value');

$fieldsWorkbookSortField1Icon = new WorkbookIcon();
$fieldsWorkbookSortField1Icon->setSet('set-value');

$fieldsWorkbookSortField1Icon->setIndex(99);


$fieldsWorkbookSortField1->setIcon($fieldsWorkbookSortField1Icon);

$fieldsArray []= $fieldsWorkbookSortField1;
$requestBody->setFields($fieldsArray);


$requestBody->setMatchCase(true);

$requestBody->setMethod('method-value');



$graphServiceClient->drivesById('drive-id')->itemsById('driveItem-id')->workbook()->tablesById('workbookTable-id')->sort()->apply()->post($requestBody);


```