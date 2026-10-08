---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->solutions()->backupRestore()->sharePointRestoreSessions()->bySharePointRestoreSessionId('sharePointRestoreSession-id')->siteRestoreArtifactsBulkAdditionRequests()->bySiteRestoreArtifactsBulkAdditionRequestId('siteRestoreArtifactsBulkAdditionRequest-id')->delete()->wait();

```