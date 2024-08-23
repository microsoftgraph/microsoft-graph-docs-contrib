---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\IndustryData\YearTimePeriodDefinition;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new YearTimePeriodDefinition();
$requestBody->setDisplayName('Fiscal Year 2022');
$requestBody->setId('ebf18762-ab92-487e-21d1-08daddab28bb');

$result = $graphServiceClient->external()->industryData()->years()->byYearTimePeriodDefinitionId('yearTimePeriodDefinition-id')->patch($requestBody)->wait();

```