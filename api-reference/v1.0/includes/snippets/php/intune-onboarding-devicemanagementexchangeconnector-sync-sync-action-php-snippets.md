---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\DeviceManagement\ExchangeConnectors\Item\Sync\SyncPostRequestBody;
use Microsoft\Graph\Generated\Models\DeviceManagementExchangeConnectorSyncType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SyncPostRequestBody();
$requestBody->setSyncType(new DeviceManagementExchangeConnectorSyncType('deltaSync'));

$graphServiceClient->deviceManagement()->exchangeConnectors()->byDeviceManagementExchangeConnectorId('deviceManagementExchangeConnector-id')->sync()->post($requestBody)->wait();

```