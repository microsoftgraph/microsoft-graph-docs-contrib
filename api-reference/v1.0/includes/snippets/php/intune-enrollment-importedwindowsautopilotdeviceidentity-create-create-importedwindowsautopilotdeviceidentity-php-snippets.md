---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ImportedWindowsAutopilotDeviceIdentity();
$requestBody->setOdataType('#microsoft.graph.importedWindowsAutopilotDeviceIdentity');

$requestBody->setGroupTag('Group Tag value');

$requestBody->setSerialNumber('Serial Number value');

$requestBody->setProductKey('Product Key value');

$requestBody->setImportId('Import Id value');

$requestBody->setHardwareIdentifier(base64_decode('aGFyZHdhcmVJZGVudGlmaWVy'));

$state = new ImportedWindowsAutopilotDeviceIdentityState();
$state->setOdataType('microsoft.graph.importedWindowsAutopilotDeviceIdentityState');

$state->setDeviceImportStatus(new ImportedWindowsAutopilotDeviceIdentityImportStatus('pending'));

$state->setDeviceRegistrationId('Device Registration Id value');

$state->setDeviceErrorCode(15);

$state->setDeviceErrorName('Device Error Name value');


$requestBody->setState($state);
$requestBody->setAssignedUserPrincipalName('Assigned User Principal Name value');



$result = $graphServiceClient->deviceManagement()->importedWindowsAutopilotDeviceIdentities()->post($requestBody);


```