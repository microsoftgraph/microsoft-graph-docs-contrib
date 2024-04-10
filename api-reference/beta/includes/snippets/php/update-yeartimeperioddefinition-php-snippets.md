---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\YearTimePeriodDefinition;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new YearTimePeriodDefinition();
$requestBody->setDisplayName('Fiscal Year 2022');
$requestBody->setId('ebf18762-ab92-487e-21d1-08daddab28bb');

$result = $graphServiceClient->external()->industryData()->years()->byYearTimePeriodDefinitionId('yearTimePeriodDefinition-id')->patch($requestBody)->wait();

```