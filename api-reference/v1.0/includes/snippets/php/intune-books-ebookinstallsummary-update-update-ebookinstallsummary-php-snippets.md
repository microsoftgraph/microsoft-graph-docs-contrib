---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\EBookInstallSummary;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EBookInstallSummary();
$requestBody->setOdataType('#microsoft.graph.eBookInstallSummary');
$requestBody->setInstalledDeviceCount(4);
$requestBody->setFailedDeviceCount(1);
$requestBody->setNotInstalledDeviceCount(7);
$requestBody->setInstalledUserCount(2);
$requestBody->setFailedUserCount(15);
$requestBody->setNotInstalledUserCount(5);

$result = $graphServiceClient->deviceAppManagement()->managedEBooks()->byManagedEBookId('managedEBook-id')->installSummary()->patch($requestBody)->wait();

```