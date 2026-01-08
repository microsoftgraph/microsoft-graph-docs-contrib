---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ProfileSource;
use Microsoft\Graph\Beta\Generated\Models\ProfileSourceLocalization;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ProfileSource();
$requestBody->setOdataType('#microsoft.graph.profileSource');
$requestBody->setSourceId('bamboohr1');
$requestBody->setKind('BambooHR');
$requestBody->setDisplayName('BambooHR Updated');
$requestBody->setWebUrl('https://bamboohr.contoso.com/login');
$localizationsProfileSourceLocalization1 = new ProfileSourceLocalization();
$localizationsProfileSourceLocalization1->setDisplayName('HR-Platform');
$localizationsProfileSourceLocalization1->setWebUrl('http://bamboohr.contoso.com/en-us/login');
$localizationsProfileSourceLocalization1->setLanguageTag('en-us');
$localizationsArray []= $localizationsProfileSourceLocalization1;
$localizationsProfileSourceLocalization2 = new ProfileSourceLocalization();
$localizationsProfileSourceLocalization2->setDisplayName('HR-Plattform');
$localizationsProfileSourceLocalization2->setWebUrl('http://bamboohr.contoso.com/de/login');
$localizationsProfileSourceLocalization2->setLanguageTag('de');
$localizationsArray []= $localizationsProfileSourceLocalization2;
$requestBody->setLocalizations($localizationsArray);


$result = $graphServiceClient->admin()->people()->profileSourcesWithSourceId('{sourceId}', )->patch($requestBody)->wait();

```