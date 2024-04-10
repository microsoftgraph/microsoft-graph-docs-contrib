---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AssignUserToDevicePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AssignUserToDevicePostRequestBody();
$requestBody->setUserPrincipalName('User Principal Name value');
$requestBody->setAddressableUserName('Addressable User Name value');

$graphServiceClient->deviceManagement()->windowsAutopilotDeviceIdentities()->byWindowsAutopilotDeviceIdentityId('windowsAutopilotDeviceIdentity-id')->assignUserToDevice()->post($requestBody)->wait();

```