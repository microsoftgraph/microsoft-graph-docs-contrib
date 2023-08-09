---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ProfileCardProperty();
$annotationsProfileCardAnnotation1 = new ProfileCardAnnotation();
$localizationsDisplayNameLocalization1 = new DisplayNameLocalization();
$localizationsDisplayNameLocalization1->setLanguageTag('no-NB');

$localizationsDisplayNameLocalization1->setDisplayName('Kostnads Senter');


$localizationsArray []= $localizationsDisplayNameLocalization1;
$annotationsProfileCardAnnotation1->setLocalizations($localizationsArray);



$annotationsArray []= $annotationsProfileCardAnnotation1;
$requestBody->setAnnotations($annotationsArray);




$result = $graphServiceClient->organization()->byOrganizationId('organization-id')->settings()->profileCardProperties()->byProfileCardPropertyId('profileCardProperty-id')->patch($requestBody);


```