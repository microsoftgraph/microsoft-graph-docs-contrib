---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Calendar();
$requestBody->setName('Marketing calendar');

$result = $graphServiceClient->me()->calendarGroups()->byCalendarGroupId('calendarGroup-id')->calendars()->post($requestBody)->wait();

```