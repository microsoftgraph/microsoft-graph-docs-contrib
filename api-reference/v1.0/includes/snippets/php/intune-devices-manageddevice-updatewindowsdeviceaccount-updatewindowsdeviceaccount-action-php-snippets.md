---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UpdateWindowsDeviceAccountPostRequestBody();
$updateWindowsDeviceAccountActionParameter = new UpdateWindowsDeviceAccountActionParameter();
$updateWindowsDeviceAccountActionParameter->setOdataType('microsoft.graph.updateWindowsDeviceAccountActionParameter');
$updateWindowsDeviceAccountActionParameterDeviceAccount = new WindowsDeviceAccount();
$updateWindowsDeviceAccountActionParameterDeviceAccount->setOdataType('microsoft.graph.windowsDeviceAccount');
$updateWindowsDeviceAccountActionParameterDeviceAccount->setPassword('Password value');
$updateWindowsDeviceAccountActionParameter->setDeviceAccount($updateWindowsDeviceAccountActionParameterDeviceAccount);
$updateWindowsDeviceAccountActionParameter->setPasswordRotationEnabled(true);
$updateWindowsDeviceAccountActionParameter->setCalendarSyncEnabled(true);
$updateWindowsDeviceAccountActionParameter->setDeviceAccountEmail('Device Account Email value');
$updateWindowsDeviceAccountActionParameter->setExchangeServer('Exchange Server value');
$updateWindowsDeviceAccountActionParameter->setSessionInitiationProtocalAddress('Session Initiation Protocal Address value');
$requestBody->setUpdateWindowsDeviceAccountActionParameter($updateWindowsDeviceAccountActionParameter);

$graphServiceClient->deviceManagement()->managedDevices()->byManagedDeviceId('managedDevice-id')->updateWindowsDeviceAccount()->post($requestBody)->wait();

```