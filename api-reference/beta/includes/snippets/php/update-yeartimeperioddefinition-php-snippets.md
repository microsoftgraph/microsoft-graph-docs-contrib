---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new YearTimePeriodDefinition();
$requestBody->setDisplayName('Fiscal Year 2022');

$requestBody->setId('ebf18762-ab92-487e-21d1-08daddab28bb');



$result = $graphServiceClient->external()->industryData()->yearsById('yearTimePeriodDefinition-id')->patch($requestBody);


```