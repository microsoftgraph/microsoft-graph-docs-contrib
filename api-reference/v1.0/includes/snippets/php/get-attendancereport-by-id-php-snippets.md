---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new MeetingAttendanceReportItemRequestBuilderGetRequestConfiguration();
$queryParameters = MeetingAttendanceReportItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["attendanceRecords"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->onlineMeetings()->byOnlineMeetingId('onlineMeeting-id')->attendanceReports()->byMeetingAttendanceReportId('meetingAttendanceReport-id')->get($requestConfiguration)->wait();

```