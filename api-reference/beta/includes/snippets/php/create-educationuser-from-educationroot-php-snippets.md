---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\EducationUser;
use Microsoft\Graph\Beta\Generated\Models\IdentitySet;
use Microsoft\Graph\Beta\Generated\Models\Identity;
use Microsoft\Graph\Beta\Generated\Models\EducationExternalSource;
use Microsoft\Graph\Beta\Generated\Models\PhysicalAddress;
use Microsoft\Graph\Beta\Generated\Models\EducationUserRole;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

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

$result = $graphServiceClient->education()->users()->post($requestBody)->wait();

```