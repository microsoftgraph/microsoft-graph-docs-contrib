---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->users()->byUserId('user-id')->onlineMeetings()->byOnlineMeetingId('onlineMeeting-id')->transcripts()->byCallTranscriptId('callTranscript-id')->content()->get()->wait();

```