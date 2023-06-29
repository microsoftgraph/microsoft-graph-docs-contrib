---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new MeetingAttendanceReportRequestBuilderGetRequestConfiguration();
$queryParameters = MeetingAttendanceReportRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["attendanceRecords"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->onlineMeetings()->byOnlineMeetingId('onlineMeeting-id')->attendanceReports()->byAttendanceReportId('meetingAttendanceReport-id')->get($requestConfiguration);


```