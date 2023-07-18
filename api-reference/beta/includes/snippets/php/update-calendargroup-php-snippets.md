---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CalendarGroup();
$requestBody->setName('name-value');



$result = $graphServiceClient->me()->calendarGroups()->byCalendarGroupId('calendarGroup-id')->patch($requestBody);


```