---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Drives\Item\Items\Item\Workbook\Tables\Item\Columns\Item\Filter\Apply\ApplyPostRequestBody;
use Microsoft\Graph\Generated\Models\WorkbookFilterCriteria;
use Microsoft\Graph\Generated\Models\WorkbookIcon;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ApplyPostRequestBody();
$criteria = new WorkbookFilterCriteria();
$criteria->setCriterion1('criterion1-value');
$criteria->setCriterion2('criterion2-value');
$criteria->setColor('color-value');
$criteriaOperator = new Operator();
$criteria->setOperator($criteriaOperator);
$criteriaIcon = new WorkbookIcon();
$criteriaIcon->setSet('set-value');
$criteriaIcon->setIndex(99);
$criteria->setIcon($criteriaIcon);
$criteria->setDynamicCriteria('dynamicCriteria-value');
$criteriaValues = new UntypedNode();
$criteria->setValues($criteriaValues);
$criteria->setFilterOn('filterOn-value');
$requestBody->setCriteria($criteria);

$graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->workbook()->tables()->byWorkbookTableId('workbookTable-id')->columns()->byWorkbookTableColumnId('workbookTableColumn-id')->filter()->apply()->post($requestBody)->wait();

```