---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new WorkPosition();
$detail = new PositionDetail();
$detailCompany = new CompanyDetail();
$detailCompany->setDisplayName('Adventureworks Ltd.');

$detailCompany->setDepartment('Consulting');

$detailCompany->setOfficeLocation('AW23/344');

$detailCompanyAddress = new PhysicalAddress();
$detailCompanyAddress->setType(new PhysicalAddressType('business'));

$detailCompanyAddress->setStreet('123 Patriachy Ponds');

$detailCompanyAddress->setCity('Moscow');

$detailCompanyAddress->setCountryOrRegion('Russian Federation');

$detailCompanyAddress->setPostalCode('RU-34621');


$detailCompany->setAddress($detailCompanyAddress);
$detailCompany->setWebUrl('https://www.adventureworks.com');


$detail->setCompany($detailCompany);
$detail->setJobTitle('Senior Product Branding Manager II');

$detail->setRole('consulting');


$requestBody->setDetail($detail);
$requestBody->setIsCurrent(true);



$result = $graphServiceClient->me()->profile()->positions()->post($requestBody);


```