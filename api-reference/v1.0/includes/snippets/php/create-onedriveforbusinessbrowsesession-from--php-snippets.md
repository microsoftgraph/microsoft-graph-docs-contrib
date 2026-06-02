---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\OneDriveForBusinessBrowseSession;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OneDriveForBusinessBrowseSession();
$requestBody->setRestorePointId('TXpSbE5HUXpNR1l0TldZMFlpMDBNMk16TFdFeFl6WXRZall3TTJFeFl6Sm1OV000WHpFPV8xNzQ5NTY3MDAwXzE0XzE=');

$result = $graphServiceClient->solutions()->backupRestore()->oneDriveForBusinessBrowseSessions()->post($requestBody)->wait();

```