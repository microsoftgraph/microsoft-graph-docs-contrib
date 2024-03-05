---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ProfileCardProperty();
$annotationsProfileCardAnnotation1 = new ProfileCardAnnotation();
$annotationsProfileCardAnnotation1->setDisplayName('Cost Center');
$localizationsDisplayNameLocalization1 = new DisplayNameLocalization();
$localizationsDisplayNameLocalization1->setLanguageTag('nb-NO');
$localizationsDisplayNameLocalization1->setDisplayName('Kostnadssenter');
$localizationsArray []= $localizationsDisplayNameLocalization1;
$annotationsProfileCardAnnotation1->setLocalizations($localizationsArray);

$annotationsArray []= $annotationsProfileCardAnnotation1;
$requestBody->setAnnotations($annotationsArray);


$result = $graphServiceClient->admin()->people()->profileCardProperties()->byProfileCardPropertyId('profileCardProperty-id')->patch($requestBody)->wait();

```