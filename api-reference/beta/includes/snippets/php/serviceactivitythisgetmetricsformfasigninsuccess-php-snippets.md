---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->reports()->serviceActivity()->getMetricsForMfaSignInSuccessWithInclusiveIntervalStartDateTimeWithExclusiveIntervalEndDateTime(new \DateTime('{exclusiveIntervalEndDateTime}'),new \DateTime('{inclusiveIntervalStartDateTime}'))->get()->wait();

```