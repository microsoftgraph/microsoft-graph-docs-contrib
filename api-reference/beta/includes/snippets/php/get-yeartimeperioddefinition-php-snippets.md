---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->external()->industryData()->years()->byYearTimePeriodDefinitionId('yearTimePeriodDefinition-id')->get()->wait();

```