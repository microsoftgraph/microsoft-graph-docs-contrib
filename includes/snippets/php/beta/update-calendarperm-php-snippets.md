---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\CalendarPermission;
use Microsoft\Graph\Beta\Generated\Models\CalendarRoleType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CalendarPermission();
$requestBody->setRole(new CalendarRoleType('write'));

$result = $graphServiceClient->users()->byUserId('user-id')->calendars()->byCalendarId('calendar-id')->calendarPermissions()->byCalendarPermissionId('calendarPermission-id')->patch($requestBody)->wait();

```