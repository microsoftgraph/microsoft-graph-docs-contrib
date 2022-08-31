---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AssignLicensePostRequestBody();
$addLicensesAssignedLicense1 = new AssignedLicense();
$additionalData = [
'disabledPlans' => ['8a256a2b-b617-496d-b51b-e76466e88db0', ],
'skuId' => '84a661c4-e949-4bd2-a560-ed7766fcaf2b', 
];
$addLicensesAssignedLicense1->setAdditionalData($additionalData);



$addLicensesArray []= $addLicensesAssignedLicense1;
$addLicensesAssignedLicense2 = new AssignedLicense();
$additionalData = [
'disabledPlans' => [],
'skuId' => 'f30db892-07e9-47e9-837c-80727f46fd3d', 
];
$addLicensesAssignedLicense2->setAdditionalData($additionalData);



$addLicensesArray []= $addLicensesAssignedLicense2;
$requestBody->setAddLicenses($addLicensesArray);


$requestBody->setRemoveLicenses([]);



$requestResult = $graphServiceClient->me()->assignLicense()->post($requestBody);


```