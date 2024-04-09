---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\WindowsAppX;
use Microsoft\Graph\Generated\Models\MimeContent;
use Microsoft\Graph\Generated\Models\WindowsMinimumOperatingSystem;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WindowsAppX();
$requestBody->setOdataType('#microsoft.graph.windowsAppX');
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
$requestBody->setApplicableArchitectures(new WindowsArchitecture('x86'));
$requestBody->setIdentityName('Identity Name value');
$requestBody->setIdentityPublisherHash('Identity Publisher Hash value');
$requestBody->setIdentityResourceIdentifier('Identity Resource Identifier value');
$requestBody->setIsBundle(true);
$minimumSupportedOperatingSystem = new WindowsMinimumOperatingSystem();
$minimumSupportedOperatingSystem->setOdataType('microsoft.graph.windowsMinimumOperatingSystem');
$minimumSupportedOperatingSystem->setV80(true);
$minimumSupportedOperatingSystem->setV81(true);
$minimumSupportedOperatingSystem->setV100(true);
$requestBody->setMinimumSupportedOperatingSystem($minimumSupportedOperatingSystem);
$requestBody->setIdentityVersion('Identity Version value');

$result = $graphServiceClient->deviceAppManagement()->mobileApps()->byMobileAppId('mobileApp-id')->patch($requestBody)->wait();

```