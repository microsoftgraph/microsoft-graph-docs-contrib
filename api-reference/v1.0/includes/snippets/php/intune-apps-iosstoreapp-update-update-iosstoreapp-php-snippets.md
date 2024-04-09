---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\IosStoreApp;
use Microsoft\Graph\Generated\Models\MimeContent;
use Microsoft\Graph\Generated\Models\IosDeviceType;
use Microsoft\Graph\Generated\Models\IosMinimumOperatingSystem;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new IosStoreApp();
$requestBody->setOdataType('#microsoft.graph.iosStoreApp');
$requestBody->setDisplayName('Display Name value');
$requestBody->setDescription('Description value');
$requestBody->setPublisher('Publisher value');
$largeIcon = new MimeContent();
$largeIcon->setOdataType('microsoft.graph.mimeContent');
$largeIcon->setType('Type value');
$largeIcon->setValue(\GuzzleHttp\Psr7\Utils::streamFor(base64_decode('dmFsdWU=')));
$requestBody->setLargeIcon($largeIcon);
$requestBody->setIsFeatured(true);
$requestBody->setPrivacyInformationUrl('https://example.com/privacyInformationUrl/');
$requestBody->setInformationUrl('https://example.com/informationUrl/');
$requestBody->setOwner('Owner value');
$requestBody->setDeveloper('Developer value');
$requestBody->setNotes('Notes value');
$requestBody->setPublishingState(new MobileAppPublishingState('processing'));
$requestBody->setBundleId('Bundle Id value');
$requestBody->setAppStoreUrl('https://example.com/appStoreUrl/');
$applicableDeviceType = new IosDeviceType();
$applicableDeviceType->setOdataType('microsoft.graph.iosDeviceType');
$applicableDeviceType->setIPad(true);
$applicableDeviceType->setIPhoneAndIPod(true);
$requestBody->setApplicableDeviceType($applicableDeviceType);
$minimumSupportedOperatingSystem = new IosMinimumOperatingSystem();
$minimumSupportedOperatingSystem->setOdataType('microsoft.graph.iosMinimumOperatingSystem');
$minimumSupportedOperatingSystem->setV80(true);
$minimumSupportedOperatingSystem->setV90(true);
$minimumSupportedOperatingSystem->setV100(true);
$minimumSupportedOperatingSystem->setV110(true);
$minimumSupportedOperatingSystem->setV120(true);
$minimumSupportedOperatingSystem->setV130(true);
$minimumSupportedOperatingSystem->setV140(true);
$minimumSupportedOperatingSystem->setV150(true);
$requestBody->setMinimumSupportedOperatingSystem($minimumSupportedOperatingSystem);

$result = $graphServiceClient->deviceAppManagement()->mobileApps()->byMobileAppId('mobileApp-id')->patch($requestBody)->wait();

```