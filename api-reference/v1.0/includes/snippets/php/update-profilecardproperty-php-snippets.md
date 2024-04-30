---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ProfileCardProperty;
use Microsoft\Graph\Generated\Models\ProfileCardAnnotation;
use Microsoft\Graph\Generated\Models\DisplayNameLocalization;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ProfileCardProperty();
$annotationsProfileCardAnnotation1 = new ProfileCardAnnotation();
$annotationsProfileCardAnnotation1->setDisplayName('Cost Center');
$localizationsDisplayNameLocalization1 = new DisplayNameLocalization();
$localizationsDisplayNameLocalization1->setLanguageTag('no');
$localizationsDisplayNameLocalization1->setDisplayName('Kostnadssenter');
$localizationsArray []= $localizationsDisplayNameLocalization1;
$annotationsProfileCardAnnotation1->setLocalizations($localizationsArray);

$annotationsArray []= $annotationsProfileCardAnnotation1;
$requestBody->setAnnotations($annotationsArray);


$result = $graphServiceClient->admin()->people()->profileCardProperties()->byProfileCardPropertyId('profileCardProperty-id')->patch($requestBody)->wait();

```