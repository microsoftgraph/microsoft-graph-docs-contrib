---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->users()->byUserId('user-id')->calendars()->byCalendarId('calendar-id')->calendarPermissions()->byCalendarPermissionId('calendarPermission-id')->delete()->wait();

```