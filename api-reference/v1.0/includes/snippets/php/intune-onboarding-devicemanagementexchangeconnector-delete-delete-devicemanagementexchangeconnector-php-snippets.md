---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->deviceManagement()->exchangeConnectors()->byDeviceManagementExchangeConnectorId('deviceManagementExchangeConnector-id')->delete()->wait();

```