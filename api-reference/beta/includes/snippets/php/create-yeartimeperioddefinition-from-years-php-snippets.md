---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\IndustryData\YearTimePeriodDefinition;
use Microsoft\Kiota\Abstractions\Types\Date;
use Microsoft\Graph\Beta\Generated\Models\IndustryData\YearReferenceValue;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new YearTimePeriodDefinition();
$requestBody->setDisplayName('Fiscal Year 2022');
$requestBody->setEndDate(new Date('2023-06-15'));
$requestBody->setStartDate(new Date('2022-09-01'));
$year = new YearReferenceValue();
$year->setCode('2022');
$requestBody->setYear($year);

$result = $graphServiceClient->external()->industryData()->years()->post($requestBody)->wait();

```