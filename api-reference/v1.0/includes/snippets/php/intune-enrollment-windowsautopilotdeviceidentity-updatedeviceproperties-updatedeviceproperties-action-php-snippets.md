---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\UpdateDevicePropertiesPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UpdateDevicePropertiesPostRequestBody();
$requestBody->setUserPrincipalName('User Principal Name value');
$requestBody->setAddressableUserName('Addressable User Name value');
$requestBody->setGroupTag('Group Tag value');
$requestBody->setDisplayName('Display Name value');

$graphServiceClient->deviceManagement()->windowsAutopilotDeviceIdentities()->byWindowsAutopilotDeviceIdentityId('windowsAutopilotDeviceIdentity-id')->updateDeviceProperties()->post($requestBody)->wait();

```