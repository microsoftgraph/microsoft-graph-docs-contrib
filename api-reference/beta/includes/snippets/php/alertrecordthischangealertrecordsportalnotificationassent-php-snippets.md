---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ChangeAlertRecordsPortalNotificationAsSentPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ChangeAlertRecordsPortalNotificationAsSentPostRequestBody();
$requestBody->setAlertRecordIds(['1d2b92e3-539a-481f-b38a-c2c050b422ad', '4bf624c4-a801-4631-989c-7f1a3a0d1d83', 	]);

$graphServiceClient->deviceManagement()->monitoring()->alertRecords()->microsoftGraphDeviceManagementChangeAlertRecordsPortalNotificationAsSent()->post($requestBody)->wait();

```