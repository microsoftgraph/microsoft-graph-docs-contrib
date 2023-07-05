---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new MacOSLobApp();
$requestBody->set@odatatype('#microsoft.graph.macOSLobApp');

$requestBody->setDisplayName('Display Name value');

$requestBody->setDescription('Description value');

$requestBody->setPublisher('Publisher value');

$largeIcon = new MimeContent();
$largeIcon->set@odatatype('microsoft.graph.mimeContent');

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

$requestBody->setCommittedContentVersion('Committed Content Version value');

$requestBody->setFileName('File Name value');

$requestBody->setSize(4);

$requestBody->setBundleId('Bundle Id value');

$minimumSupportedOperatingSystem = new MacOSMinimumOperatingSystem();
$minimumSupportedOperatingSystem->set@odatatype('microsoft.graph.macOSMinimumOperatingSystem');

$minimumSupportedOperatingSystem->setV10_7(true);

$minimumSupportedOperatingSystem->setV10_8(true);

$minimumSupportedOperatingSystem->setV10_9(true);

$minimumSupportedOperatingSystem->setV10_10(true);

$minimumSupportedOperatingSystem->setV10_11(true);

$minimumSupportedOperatingSystem->setV10_12(true);

$minimumSupportedOperatingSystem->setV10_13(true);

$minimumSupportedOperatingSystem->setV10_14(true);

$minimumSupportedOperatingSystem->setV10_15(true);

$minimumSupportedOperatingSystem->setV11_0(true);

$minimumSupportedOperatingSystem->setV12_0(true);

$minimumSupportedOperatingSystem->setV13_0(true);


$requestBody->setMinimumSupportedOperatingSystem($minimumSupportedOperatingSystem);
$requestBody->setBuildNumber('Build Number value');

$requestBody->setVersionNumber('Version Number value');

$childAppsMacOSLobChildApp1 = new MacOSLobChildApp();
$childAppsMacOSLobChildApp1->set@odatatype('microsoft.graph.macOSLobChildApp');

$childAppsMacOSLobChildApp1->setBundleId('Bundle Id value');

$childAppsMacOSLobChildApp1->setBuildNumber('Build Number value');

$childAppsMacOSLobChildApp1->setVersionNumber('Version Number value');


$childAppsArray []= $childAppsMacOSLobChildApp1;
$requestBody->setChildApps($childAppsArray);


$requestBody->setMd5HashChunkSize(0);

$requestBody->setMd5Hash(['Md5Hash value', ]);

$requestBody->setIgnoreVersionDetection(true);

$requestBody->setInstallAsManaged(true);



$result = $graphServiceClient->deviceAppManagement()->mobileApps()->byMobileAppId('mobileApp-id')->patch($requestBody);


```