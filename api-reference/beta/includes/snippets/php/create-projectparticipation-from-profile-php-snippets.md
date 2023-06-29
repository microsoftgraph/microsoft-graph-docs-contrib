---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ProjectParticipation();
$requestBody->setCategories(['Branding', ]);

$client = new CompanyDetail();
$client->setDisplayName('Contoso Ltd.');

$client->setDepartment('Corporate Marketing');

$client->setWebUrl('https://www.contoso.com');


$requestBody->setClient($client);
$requestBody->setDisplayName('Contoso Re-branding Project');

$detail = new PositionDetail();
$detailCompany = new CompanyDetail();
$detailCompany->setDisplayName('Adventureworks Inc.');

$detailCompany->setDepartment('Consulting');

$detailCompany->setWebUrl('https://adventureworks.com');


$detail->setCompany($detailCompany);
$detail->setDescription('Rebranding of Contoso Ltd.');

$detail->setJobTitle('Lead PM Rebranding');

$detail->setRole('project management');

$detail->setSummary('A 6 month project to help Contoso rebrand after they were divested from a parent organization.');


$requestBody->setDetail($detail);


$result = $graphServiceClient->me()->profile()->projects()->post($requestBody);


```