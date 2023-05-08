---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EducationSchool();
$requestBody->setDisplayName('Fabrikam High School');

$requestBody->setDescription('Magnate school for the arts. Los Angeles School District');

$requestBody->setExternalSource(new EducationExternalSource('string'));

$requestBody->setPrincipalEmail('AmyR@fabrikam.com');

$requestBody->setPrincipalName('Amy Roebuck');

$requestBody->setExternalPrincipalId('14007');

$requestBody->setHighestGrade('12');

$requestBody->setLowestGrade('9');

$requestBody->setSchoolNumber('10002');

$address = new PhysicalAddress();
$address->setCity('Los Angeles');

$address->setCountryOrRegion('United States');

$address->setPostalCode('98055');

$address->setState('CA');

$address->setStreet('12345 Main St.');


$requestBody->setAddress($address);
$requestBody->setExternalId('10002');

$requestBody->setPhone('+1 (253) 555-0102');



$result = $graphServiceClient->education()->schools()->post($requestBody);


```