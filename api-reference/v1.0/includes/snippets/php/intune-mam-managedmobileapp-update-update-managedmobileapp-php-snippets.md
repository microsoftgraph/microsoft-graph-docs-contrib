---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ManagedMobileApp;
use Microsoft\Graph\Generated\Models\AndroidMobileAppIdentifier;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ManagedMobileApp();
$requestBody->setOdataType('#microsoft.graph.managedMobileApp');
$mobileAppIdentifier = new AndroidMobileAppIdentifier();
$mobileAppIdentifier->setOdataType('microsoft.graph.androidMobileAppIdentifier');
$mobileAppIdentifier->setPackageId('Package Id value');
$requestBody->setMobileAppIdentifier($mobileAppIdentifier);
$requestBody->setVersion('Version value');

$result = $graphServiceClient->deviceAppManagement()->iosManagedAppProtections()->byIosManagedAppProtectionId('iosManagedAppProtection-id')->apps()->byManagedMobileAppId('managedMobileApp-id')->patch($requestBody)->wait();

```