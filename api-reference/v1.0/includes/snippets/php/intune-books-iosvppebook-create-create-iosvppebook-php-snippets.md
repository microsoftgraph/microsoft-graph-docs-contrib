---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new IosVppEBook();
$requestBody->setOdataType('#microsoft.graph.iosVppEBook');

$requestBody->setDisplayName('Display Name value');

$requestBody->setDescription('Description value');

$requestBody->setPublisher('Publisher value');

$requestBody->setPublishedDateTime(new \DateTime('2016-12-31T23:58:16.1180489-08:00'));

$largeCover = new MimeContent();
$largeCover->setOdataType('microsoft.graph.mimeContent');

$largeCover->setType('Type value');

$LargeCover->setValue(base64_decode('dmFsdWU='));


$requestBody->setLargeCover($largeCover);
$requestBody->setInformationUrl('https://example.com/informationUrl/');

$requestBody->setPrivacyInformationUrl('https://example.com/privacyInformationUrl/');

$requestBody->setVppTokenId('9148ac60-ac60-9148-60ac-489160ac4891');

$requestBody->setAppleId('Apple Id value');

$requestBody->setVppOrganizationName('Vpp Organization Name value');

$requestBody->setGenres(['Genres value', 	]);

$requestBody->setLanguage('Language value');

$requestBody->setSeller('Seller value');

$requestBody->setTotalLicenseCount(1);

$requestBody->setUsedLicenseCount(0);



$result = $graphServiceClient->deviceAppManagement()->managedEBooks()->post($requestBody);


```