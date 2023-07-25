---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new WindowsAppX();
$requestBody->set@odatatype('#microsoft.graph.windowsAppX');

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

$requestBody->setApplicableArchitectures(new WindowsArchitecture('x86'));

$requestBody->setIdentityName('Identity Name value');

$requestBody->setIdentityPublisherHash('Identity Publisher Hash value');

$requestBody->setIdentityResourceIdentifier('Identity Resource Identifier value');

$requestBody->setIsBundle(true);

$minimumSupportedOperatingSystem = new WindowsMinimumOperatingSystem();
$minimumSupportedOperatingSystem->set@odatatype('microsoft.graph.windowsMinimumOperatingSystem');

$minimumSupportedOperatingSystem->setV8_0(true);

$minimumSupportedOperatingSystem->setV8_1(true);

$minimumSupportedOperatingSystem->setV10_0(true);


$requestBody->setMinimumSupportedOperatingSystem($minimumSupportedOperatingSystem);
$requestBody->setIdentityVersion('Identity Version value');



$result = $graphServiceClient->deviceAppManagement()->mobileApps()->post($requestBody);


```