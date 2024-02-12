---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


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