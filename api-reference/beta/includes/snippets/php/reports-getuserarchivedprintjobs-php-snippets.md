---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->reports()->getUserArchivedPrintJobsWithUserIdWithStartDateTimeWithEndDateTime(new \DateTime('{endDateTime}'),new \DateTime('{startDateTime}'),'{userId}', )->get()->wait();

```