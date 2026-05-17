---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->users()->byUserId('user-id')->adhocCalls()->byAdhocCallId('adhocCall-id')->recordings()->byCallRecordingId('callRecording-id')->content()->get()->wait();

```