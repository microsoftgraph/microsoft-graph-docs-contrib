---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->external()->industryData()->runs()->byIndustryDataRunId('industryDataRun-id')->get()->wait();

```