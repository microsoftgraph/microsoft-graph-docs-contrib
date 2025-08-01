---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->solutions()->backupRestore()->sharePointRestoreSessions()->bySharePointRestoreSessionId('sharePointRestoreSession-id')->siteRestoreArtifactsBulkAdditionRequests()->bySiteRestoreArtifactsBulkAdditionRequestId('siteRestoreArtifactsBulkAdditionRequest-id')->get()->wait();

```