---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new MicrosoftStoreForBusinessApp();
$requestBody->set@odatatype('#microsoft.graph.microsoftStoreForBusinessApp');

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

$requestBody->setUsedLicenseCount(0);

$requestBody->setTotalLicenseCount(1);

$requestBody->setProductKey('Product Key value');

$requestBody->setLicenseType(new MicrosoftStoreForBusinessLicenseType('online'));

$requestBody->setPackageIdentityName('Package Identity Name value');



$result = $graphServiceClient->deviceAppManagement()->mobileApps()->byMobileAppId('mobileApp-id')->patch($requestBody);


```