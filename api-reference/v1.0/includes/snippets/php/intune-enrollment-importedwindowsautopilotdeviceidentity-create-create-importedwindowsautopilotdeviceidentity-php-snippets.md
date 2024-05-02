---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ImportedWindowsAutopilotDeviceIdentity;
use Microsoft\Graph\Generated\Models\ImportedWindowsAutopilotDeviceIdentityState;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ImportedWindowsAutopilotDeviceIdentity();
$requestBody->setOdataType('#microsoft.graph.importedWindowsAutopilotDeviceIdentity');
$requestBody->setGroupTag('Group Tag value');
$requestBody->setSerialNumber('Serial Number value');
$requestBody->setProductKey('Product Key value');
$requestBody->setImportId('Import Id value');
$requestBody->setHardwareIdentifier(\GuzzleHttp\Psr7\Utils::streamFor(base64_decode('aGFyZHdhcmVJZGVudGlmaWVy')));
$state = new ImportedWindowsAutopilotDeviceIdentityState();
$state->setOdataType('microsoft.graph.importedWindowsAutopilotDeviceIdentityState');
$state->setDeviceImportStatus(new ImportedWindowsAutopilotDeviceIdentityImportStatus('pending'));
$state->setDeviceRegistrationId('Device Registration Id value');
$state->setDeviceErrorCode(15);
$state->setDeviceErrorName('Device Error Name value');
$requestBody->setState($state);
$requestBody->setAssignedUserPrincipalName('Assigned User Principal Name value');

$result = $graphServiceClient->deviceManagement()->importedWindowsAutopilotDeviceIdentities()->post($requestBody)->wait();

```