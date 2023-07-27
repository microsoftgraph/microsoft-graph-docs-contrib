---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WindowsMobileMSI();
$requestBody->setOdataType('#microsoft.graph.windowsMobileMSI');

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

$requestBody->setCommittedContentVersion('Committed Content Version value');

$requestBody->setFileName('File Name value');

$requestBody->setSize(4);

$requestBody->setCommandLine('Command Line value');

$requestBody->setProductCode('Product Code value');

$requestBody->setProductVersion('Product Version value');

$requestBody->setIgnoreVersionDetection(true);



$result = $graphServiceClient->deviceAppManagement()->mobileApps()->post($requestBody);


```