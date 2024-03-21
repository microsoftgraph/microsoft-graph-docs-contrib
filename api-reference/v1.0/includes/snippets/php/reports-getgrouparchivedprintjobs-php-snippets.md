---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->reports()->getGroupArchivedPrintJobsWithGroupIdWithStartDateTimeWithEndDateTime(new \DateTime('{endDateTime}'),'{groupId}', new \DateTime('{startDateTime}'))->get()->wait();

```