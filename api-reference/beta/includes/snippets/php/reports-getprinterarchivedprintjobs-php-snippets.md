---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->reports()->getPrinterArchivedPrintJobsWithPrinterIdWithStartDateTimeWithEndDateTime(new \DateTime('{endDateTime}'),'{printerId}', new \DateTime('{startDateTime}'))->get()->wait();

```