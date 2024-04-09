---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\RegionalAndLanguageSettings;
use Microsoft\Graph\Generated\Models\LocaleInfo;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RegionalAndLanguageSettings();
$authoringLanguagesLocaleInfo1 = new LocaleInfo();
$authoringLanguagesLocaleInfo1->setLocale('en-US');
$authoringLanguagesArray []= $authoringLanguagesLocaleInfo1;
$authoringLanguagesLocaleInfo2 = new LocaleInfo();
$authoringLanguagesLocaleInfo2->setLocale('es-MX');
$authoringLanguagesArray []= $authoringLanguagesLocaleInfo2;
$requestBody->setAuthoringLanguages($authoringLanguagesArray);

$defaultRegionalFormat = new LocaleInfo();
$defaultRegionalFormat->setLocale('en-US');
$requestBody->setDefaultRegionalFormat($defaultRegionalFormat);

$result = $graphServiceClient->me()->settings()->regionalAndLanguageSettings()->patch($requestBody)->wait();

```