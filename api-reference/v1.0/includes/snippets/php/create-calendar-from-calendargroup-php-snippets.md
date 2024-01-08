---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Calendar();
$requestBody->setName('Marketing calendar');

$result = $graphServiceClient->me()->calendarGroups()->byCalendarGroupId('calendarGroup-id')->calendars()->post($requestBody)->wait();

```