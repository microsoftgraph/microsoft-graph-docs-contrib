---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\RestorePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RestorePostRequestBody();
$requestBody->setCloudPcSnapshotId('A00009UV000_93aff428-61f2-467f-a879-1102af6fd4a8');

$graphServiceClient->deviceManagement()->virtualEndpoint()->cloudPCs()->byCloudPCId('cloudPC-id')->restore()->post($requestBody)->wait();

```