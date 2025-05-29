---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->copilot()->users()->byAiUserId('aiUser-id')->onlineMeetings()->byAiOnlineMeetingId('aiOnlineMeeting-id')->aiInsights()->byCallAiInsightId('callAiInsight-id')->get()->wait();

```