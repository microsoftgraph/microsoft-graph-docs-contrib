---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->users()->byUserId('user-id')->onlineMeetings()->byOnlineMeetingId('onlineMeeting-id')->registration()->registrants()->byMeetingRegistrantBaseId('meetingRegistrantBase-id')->delete()->wait();

```