---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MacOSLobApp();
$requestBody->setOdataType('#microsoft.graph.macOSLobApp');
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
$minimumSupportedOperatingSystem = new MacOSMinimumOperatingSystem();
$minimumSupportedOperatingSystem->setOdataType('microsoft.graph.macOSMinimumOperatingSystem');
$minimumSupportedOperatingSystem->setV107(true);
$minimumSupportedOperatingSystem->setV108(true);
$minimumSupportedOperatingSystem->setV109(true);
$minimumSupportedOperatingSystem->setV1010(true);
$minimumSupportedOperatingSystem->setV1011(true);
$minimumSupportedOperatingSystem->setV1012(true);
$minimumSupportedOperatingSystem->setV1013(true);
$minimumSupportedOperatingSystem->setV1014(true);
$minimumSupportedOperatingSystem->setV1015(true);
$minimumSupportedOperatingSystem->setV110(true);
$minimumSupportedOperatingSystem->setV120(true);
$minimumSupportedOperatingSystem->setV130(true);
$requestBody->setMinimumSupportedOperatingSystem($minimumSupportedOperatingSystem);
$requestBody->setBuildNumber('Build Number value');
$requestBody->setVersionNumber('Version Number value');
$childAppsMacOSLobChildApp1 = new MacOSLobChildApp();
$childAppsMacOSLobChildApp1->setOdataType('microsoft.graph.macOSLobChildApp');
$childAppsMacOSLobChildApp1->setBundleId('Bundle Id value');
$childAppsMacOSLobChildApp1->setBuildNumber('Build Number value');
$childAppsMacOSLobChildApp1->setVersionNumber('Version Number value');
$childAppsArray []= $childAppsMacOSLobChildApp1;
$requestBody->setChildApps($childAppsArray);

$requestBody->setMd5HashChunkSize(0);
$requestBody->setMd5Hash(['Md5Hash value', ]);
$requestBody->setIgnoreVersionDetection(true);
$requestBody->setInstallAsManaged(true);

$result = $graphServiceClient->deviceAppManagement()->mobileApps()->post($requestBody)->wait();

```