---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeleteUserFromSharedAppleDevicePostRequestBody();
$requestBody->setUserPrincipalName('User Principal Name value');

$graphServiceClient->deviceManagement()->managedDevices()->byManagedDeviceId('managedDevice-id')->deleteUserFromSharedAppleDevice()->post($requestBody)->wait();

```