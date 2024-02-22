---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CalendarGroup();
$requestBody->setName('name-value');

$result = $graphServiceClient->me()->calendarGroups()->byCalendarGroupId('calendarGroup-id')->patch($requestBody)->wait();

```