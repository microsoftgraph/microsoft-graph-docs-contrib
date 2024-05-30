---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\UserInstallStateSummary;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UserInstallStateSummary();
$requestBody->setOdataType('#microsoft.graph.userInstallStateSummary');
$requestBody->setUserName('User Name value');
$requestBody->setInstalledDeviceCount(4);
$requestBody->setFailedDeviceCount(1);
$requestBody->setNotInstalledDeviceCount(7);

$result = $graphServiceClient->deviceAppManagement()->managedEBooks()->byManagedEBookId('managedEBook-id')->userStateSummary()->post($requestBody)->wait();

```