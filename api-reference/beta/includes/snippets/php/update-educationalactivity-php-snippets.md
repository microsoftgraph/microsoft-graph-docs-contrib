---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\EducationalActivity;
use Microsoft\Graph\Generated\Models\InstitutionData;
use Microsoft\Graph\Generated\Models\PhysicalAddress;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationalActivity();
$institution = new InstitutionData();
$institutionLocation = new PhysicalAddress();
$institutionLocation->setType(new PhysicalAddressType('business'));
$institutionLocation->setPostOfficeBox(null);
$institutionLocation->setStreet('12000 E Prospect Rd');
$institutionLocation->setCity('Fort Collins');
$institutionLocation->setState('Colorado');
$institutionLocation->setCountryOrRegion('USA');
$institutionLocation->setPostalCode('80525');
$institution->setLocation($institutionLocation);
$requestBody->setInstitution($institution);

$result = $graphServiceClient->me()->profile()->educationalActivities()->byEducationalActivityId('educationalActivity-id')->patch($requestBody)->wait();

```