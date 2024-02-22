---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->communications()->callRecords()->microsoftGraphCallRecordsGetPstnBlockedUsersLogWithFromDateTimeWithToDateTime(new \DateTime('{fromDateTime}'),new \DateTime('{toDateTime}'))->get()->wait();

```