---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->solutions()->backupRestore()->exchangeRestoreSessions()->byExchangeRestoreSessionId('exchangeRestoreSession-id')->mailboxRestoreArtifactsBulkAdditionRequests()->byMailboxRestoreArtifactsBulkAdditionRequestId('mailboxRestoreArtifactsBulkAdditionRequest-id')->delete()->wait();

```