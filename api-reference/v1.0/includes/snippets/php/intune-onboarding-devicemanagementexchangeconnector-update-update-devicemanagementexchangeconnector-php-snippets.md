---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new DeviceManagementExchangeConnector();
$requestBody->set@odatatype('#microsoft.graph.deviceManagementExchangeConnector');

$requestBody->setLastSyncDateTime(new DateTime('2017-01-01T00:02:49.3205976-08:00'));

$requestBody->setStatus(new DeviceManagementExchangeConnectorStatus('connectionpending'));

$requestBody->setPrimarySmtpAddress('Primary Smtp Address value');

$requestBody->setServerName('Server Name value');

$requestBody->setConnectorServerName('Connector Server Name value');

$requestBody->setExchangeConnectorType(new DeviceManagementExchangeConnectorType('hosted'));

$requestBody->setVersion('Version value');

$requestBody->setExchangeAlias('Exchange Alias value');

$requestBody->setExchangeOrganization('Exchange Organization value');



$result = $graphServiceClient->deviceManagement()->exchangeConnectors()->byExchangeConnectorId('deviceManagementExchangeConnector-id')->patch($requestBody);


```