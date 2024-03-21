---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->deviceManagement()->exchangeConnectors()->byDeviceManagementExchangeConnectorId('deviceManagementExchangeConnector-id')->delete()->wait();

```