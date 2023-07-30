---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new IosVppApp();
$requestBody->setOdataType('#microsoft.graph.iosVppApp');

$requestBody->setDisplayName('Display Name value');

$requestBody->setDescription('Description value');

$requestBody->setPublisher('Publisher value');

$largeIcon = new MimeContent();
$largeIcon->setOdataType('microsoft.graph.mimeContent');

$largeIcon->setType('Type value');

$LargeIcon->setValue(base64_decode('dmFsdWU='));


$requestBody->setLargeIcon($largeIcon);
$requestBody->setIsFeatured(true);

$requestBody->setPrivacyInformationUrl('https://example.com/privacyInformationUrl/');

$requestBody->setInformationUrl('https://example.com/informationUrl/');

$requestBody->setOwner('Owner value');

$requestBody->setDeveloper('Developer value');

$requestBody->setNotes('Notes value');

$requestBody->setPublishingState(new MobileAppPublishingState('processing'));

$requestBody->setUsedLicenseCount(0);

$requestBody->setTotalLicenseCount(1);

$requestBody->setReleaseDateTime(new \DateTime('2017-01-01T00:01:34.7470482-08:00'));

$requestBody->setAppStoreUrl('https://example.com/appStoreUrl/');

$licensingType = new VppLicensingType();
$licensingType->setOdataType('microsoft.graph.vppLicensingType');

$licensingType->setSupportsUserLicensing(true);

$licensingType->setSupportsDeviceLicensing(true);


$requestBody->setLicensingType($licensingType);
$applicableDeviceType = new IosDeviceType();
$applicableDeviceType->setOdataType('microsoft.graph.iosDeviceType');

$applicableDeviceType->setIPad(true);

$applicableDeviceType->setIPhoneAndIPod(true);


$requestBody->setApplicableDeviceType($applicableDeviceType);
$requestBody->setVppTokenOrganizationName('Vpp Token Organization Name value');

$requestBody->setVppTokenAccountType(new VppTokenAccountType('education'));

$requestBody->setVppTokenAppleId('Vpp Token Apple Id value');

$requestBody->setBundleId('Bundle Id value');



$result = $graphServiceClient->deviceAppManagement()->mobileApps()->byMobileAppId('mobileApp-id')->patch($requestBody);


```