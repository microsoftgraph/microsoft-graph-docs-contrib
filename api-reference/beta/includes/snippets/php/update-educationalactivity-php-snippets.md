---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EducationalActivity();
$institution = new InstitutionData();
$institutionLocation = new PhysicalAddress();
$institutionLocation->setType(new PhysicalAddressType('business'));

$InstitutionLocation->setPostOfficeBox(null);

$institutionLocation->setStreet('12000 E Prospect Rd');

$institutionLocation->setCity('Fort Collins');

$institutionLocation->setState('Colorado');

$institutionLocation->setCountryOrRegion('USA');

$institutionLocation->setPostalCode('80525');


$institution->setLocation($institutionLocation);

$requestBody->setInstitution($institution);


$result = $graphServiceClient->me()->profile()->educationalActivitiesById('educationalActivity-id')->patch($requestBody);


```