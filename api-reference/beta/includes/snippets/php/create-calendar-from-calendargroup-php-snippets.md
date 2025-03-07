---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Calendar;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Calendar();
$requestBody->setName('Marketing calendar');

$result = $graphServiceClient->me()->calendarGroups()->byCalendarGroupId('calendarGroup-id')->calendars()->post($requestBody)->wait();

```