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
$requestBody->setSourceId('bamboohr1');
$requestBody->setDisplayName('HR Platform');
$requestBody->setKind('BambooHR');
$requestBody->setWebUrl('https://bamboohr.contoso.com/login');
$localizationsProfileSourceLocalization1 = new ProfileSourceLocalization();
$localizationsProfileSourceLocalization1->setDisplayName('HR-Plattform');
$localizationsProfileSourceLocalization1->setWebUrl('http://bamboohr.contoso.com/de/login');
$localizationsProfileSourceLocalization1->setLanguageTag('de');
$localizationsArray []= $localizationsProfileSourceLocalization1;
$requestBody->setLocalizations($localizationsArray);


$result = $graphServiceClient->admin()->people()->profileSources()->post($requestBody)->wait();

```