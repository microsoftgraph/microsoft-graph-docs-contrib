---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CalendarPermission();
$requestBody->setRole(new CalendarRoleType('write'));



$result = $graphServiceClient->usersById('user-id')->calendar()->calendarPermissionsById('calendarPermission-id')->patch($requestBody);


```