---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new IosLobApp();
$requestBody->setOdataType('#microsoft.graph.iosLobApp');
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
$requestBody->setCommittedContentVersion('Committed Content Version value');
$requestBody->setFileName('File Name value');
$requestBody->setSize(4);
$requestBody->setBundleId('Bundle Id value');
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
$requestBody->setExpirationDateTime(new \DateTime('2016-12-31T23:57:57.2481234-08:00'));
$requestBody->setVersionNumber('Version Number value');
$requestBody->setBuildNumber('Build Number value');

$result = $graphServiceClient->deviceAppManagement()->mobileApps()->byMobileAppId('mobileApp-id')->patch($requestBody)->wait();

```