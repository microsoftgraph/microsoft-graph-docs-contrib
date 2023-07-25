---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new WindowsWebApp();
$requestBody->set@odatatype('#microsoft.graph.windowsWebApp');

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

$requestBody->setAppUrl('https://example.com/appUrl/');



$result = $graphServiceClient->deviceAppManagement()->mobileApps()->post($requestBody);


```