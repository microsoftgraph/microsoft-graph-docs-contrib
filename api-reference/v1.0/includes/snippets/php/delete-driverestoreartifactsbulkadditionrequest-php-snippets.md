---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->solutions()->backupRestore()->oneDriveForBusinessRestoreSessions()->byOneDriveForBusinessRestoreSessionId('oneDriveForBusinessRestoreSession-id')->driveRestoreArtifactsBulkAdditionRequests()->byDriveRestoreArtifactsBulkAdditionRequestId('driveRestoreArtifactsBulkAdditionRequest-id')->delete()->wait();

```