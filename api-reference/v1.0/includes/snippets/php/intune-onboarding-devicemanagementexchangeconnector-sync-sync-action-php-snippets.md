---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SyncPostRequestBody();
$requestBody->setSyncType(new DeviceManagementExchangeConnectorSyncType('deltaSync'));

$graphServiceClient->deviceManagement()->exchangeConnectors()->byDeviceManagementExchangeConnectorId('deviceManagementExchangeConnector-id')->sync()->post($requestBody)->wait();

```