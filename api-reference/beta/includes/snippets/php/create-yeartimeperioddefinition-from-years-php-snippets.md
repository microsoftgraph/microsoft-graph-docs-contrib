---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new YearTimePeriodDefinition();
$requestBody->setDisplayName('Fiscal Year 2022');

$requestBody->setEndDate(new Date('2023-06-15'));

$requestBody->setStartDate(new Date('2022-09-01'));

$year = new YearReferenceValue();
$year->setCode('2022');


$requestBody->setYear($year);


$result = $graphServiceClient->external()->industryData()->years()->post($requestBody);


```