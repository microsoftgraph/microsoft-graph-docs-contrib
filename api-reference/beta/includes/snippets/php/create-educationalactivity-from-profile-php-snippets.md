---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationalActivity();
$requestBody->setCompletionMonthYear(new Date('Date'));

$requestBody->setEndMonthYear(new Date('Date'));

$institution = new InstitutionData();
$Institution->setDescription(null);

$institution->setDisplayName('Colorado State University');

$institutionLocation = new PhysicalAddress();
$institutionLocation->setType(new PhysicalAddressType('business'));

$InstitutionLocation->setPostOfficeBox(null);

$institutionLocation->setStreet('12000 E Prospect Rd');

$institutionLocation->setCity('Fort Collins');

$institutionLocation->setState('Colorado');

$institutionLocation->setCountryOrRegion('USA');

$institutionLocation->setPostalCode('80525');


$institution->setLocation($institutionLocation);
$institution->setWebUrl('https://www.colostate.edu');


$requestBody->setInstitution($institution);
$program = new EducationalActivityDetail();
$program->setAbbreviation('MBA');

$Program->setActivities(null);

$Program->setAwards(null);

$program->setDescription('Master of Business Administration with a major in Entreprenuership and Finance.');

$program->setDisplayName('Master of Business Administration');

$Program->setFieldsOfStudy(null);

$program->setGrade('3.9');

$Program->setNotes(null);

$program->setWebUrl('https://biz.colostate.edu');


$requestBody->setProgram($program);
$requestBody->setStartMonthYear(new Date('Date'));



$result = $graphServiceClient->me()->profile()->educationalActivities()->post($requestBody);


```