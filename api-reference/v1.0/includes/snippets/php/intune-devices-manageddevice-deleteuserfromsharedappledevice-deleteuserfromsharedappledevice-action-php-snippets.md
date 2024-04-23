---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\DeleteUserFromSharedAppleDevicePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeleteUserFromSharedAppleDevicePostRequestBody();
$requestBody->setUserPrincipalName('User Principal Name value');

$graphServiceClient->deviceManagement()->managedDevices()->byManagedDeviceId('managedDevice-id')->deleteUserFromSharedAppleDevice()->post($requestBody)->wait();

```