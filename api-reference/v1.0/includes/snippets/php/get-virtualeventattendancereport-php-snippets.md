---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->solutions()->virtualEvents()->webinars()->byVirtualEventWebinarId('virtualEventWebinar-id')->sessions()->byVirtualEventSessionId('virtualEventSession-id')->attendanceReports()->byMeetingAttendanceReportId('meetingAttendanceReport-id')->get()->wait();

```