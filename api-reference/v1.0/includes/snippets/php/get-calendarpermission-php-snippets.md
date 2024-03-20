---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->users()->byUserId('user-id')->calendar()->calendarPermissions()->byCalendarPermissionId('calendarPermission-id')->get()->wait();

```