---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EducationUser();
$requestBody->setDisplayName('Dion Matheson');

$requestBody->setGivenName('Dion');

$requestBody->setMiddleName(null);

$requestBody->setSurname('Matheson');

$requestBody->setMail('DionM@contoso.com');

$requestBody->setMobilePhone('+1 (253) 555-0101');

$createdBy = new IdentitySet();
$createdByUser = new Identity();
$createdByUser->setDisplayName('Susana Rocha');

$createdByUser->setId('14012');


$createdBy->setUser($createdByUser);

$requestBody->setCreatedBy($createdBy);
$requestBody->setExternalSource(new EducationExternalSource('sis'));

$mailingAddress = new PhysicalAddress();
$mailingAddress->setCity('Los Angeles');

$mailingAddress->setCountryOrRegion('United States');

$mailingAddress->setPostalCode('98055');

$mailingAddress->setState('CA');

$mailingAddress->setStreet('12345 Main St.');


$requestBody->setMailingAddress($mailingAddress);
$requestBody->setPrimaryRole(new EducationUserRole('student'));

$residenceAddress = new PhysicalAddress();
$residenceAddress->setCity('Los Angeles');

$residenceAddress->setCountryOrRegion('United States');

$residenceAddress->setPostalCode('98055');

$residenceAddress->setState('CA');

$residenceAddress->setStreet('12345 Main St.');


$requestBody->setResidenceAddress($residenceAddress);


$result = $graphServiceClient->education()->users()->post($requestBody);


```