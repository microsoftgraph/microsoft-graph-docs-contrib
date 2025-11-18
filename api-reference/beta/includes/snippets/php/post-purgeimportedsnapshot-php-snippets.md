---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\DeviceManagement\VirtualEndpoint\Snapshots\PurgeImportedSnapshot\PurgeImportedSnapshotPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PurgeImportedSnapshotPostRequestBody();
$requestBody->setSnapshotIds(['7e8c3054-bda1-4e37-81c5-7d1b080a8849', '715c8075-6892-42f3-9550-40b4b48e13d2', 	]);

$graphServiceClient->deviceManagement()->virtualEndpoint()->snapshots()->purgeImportedSnapshot()->post($requestBody)->wait();

```