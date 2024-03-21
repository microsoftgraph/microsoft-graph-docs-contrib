---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->deviceManagement()->monitoring()->alertRecords()->byAlertRecordId('alertRecord-id')->microsoftGraphDeviceManagementSetPortalNotificationAsSent()->post()->wait();

```