---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\DeviceManagement;
use Microsoft\Graph\Generated\Models\IntuneBrand;
use Microsoft\Graph\Generated\Models\RgbColor;
use Microsoft\Graph\Generated\Models\MimeContent;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeviceManagement();
$requestBody->setOdataType('#microsoft.graph.deviceManagement');
$intuneBrand = new IntuneBrand();
$intuneBrand->setOdataType('microsoft.graph.intuneBrand');
$intuneBrand->setDisplayName('Display Name value');
$intuneBrandThemeColor = new RgbColor();
$intuneBrandThemeColor->setOdataType('microsoft.graph.rgbColor');
$intuneBrandThemeColor->setR(1);
$intuneBrandThemeColor->setG(1);
$intuneBrandThemeColor->setB(1);
$intuneBrand->setThemeColor($intuneBrandThemeColor);
$intuneBrand->setShowLogo(true);
$intuneBrandLightBackgroundLogo = new MimeContent();
$intuneBrandLightBackgroundLogo->setOdataType('microsoft.graph.mimeContent');
$intuneBrandLightBackgroundLogo->setType('Type value');
$intuneBrandLightBackgroundLogo->setValue(\GuzzleHttp\Psr7\Utils::streamFor(base64_decode('dmFsdWU=')));
$intuneBrand->setLightBackgroundLogo($intuneBrandLightBackgroundLogo);
$intuneBrandDarkBackgroundLogo = new MimeContent();
$intuneBrandDarkBackgroundLogo->setOdataType('microsoft.graph.mimeContent');
$intuneBrandDarkBackgroundLogo->setType('Type value');
$intuneBrandDarkBackgroundLogo->setValue(\GuzzleHttp\Psr7\Utils::streamFor(base64_decode('dmFsdWU=')));
$intuneBrand->setDarkBackgroundLogo($intuneBrandDarkBackgroundLogo);
$intuneBrand->setShowNameNextToLogo(true);
$intuneBrand->setShowDisplayNameNextToLogo(true);
$intuneBrand->setContactITName('Contact ITName value');
$intuneBrand->setContactITPhoneNumber('Contact ITPhone Number value');
$intuneBrand->setContactITEmailAddress('Contact ITEmail Address value');
$intuneBrand->setContactITNotes('Contact ITNotes value');
$intuneBrand->setOnlineSupportSiteUrl('https://example.com/onlineSupportSiteUrl/');
$intuneBrand->setOnlineSupportSiteName('Online Support Site Name value');
$intuneBrand->setPrivacyUrl('https://example.com/privacyUrl/');
$requestBody->setIntuneBrand($intuneBrand);

$result = $graphServiceClient->deviceManagement()->patch($requestBody)->wait();

```