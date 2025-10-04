---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->users()->byUserId('user-id')->adhocCalls()->byAdhocCallId('adhocCall-id')->transcripts()->byCallTranscriptId('callTranscript-id')->metadataContent()->get()->wait();

```