---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CalendarGroup();
$requestBody->setName('Personal events');

$result = $graphServiceClient->me()->calendarGroups()->post($requestBody)->wait();

```