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
'disabledPlans' => ['11b0131d-43c8-4bbb-b2c8-e80f9a50834a', ],
'skuId' => '45715bb8-13f9-4bf6-927f-ef96c102d394', 
];
$addLicensesAssignedLicense1->setAdditionalData($additionalData);



$addLicensesArray []= $addLicensesAssignedLicense1;
$requestBody->setAddLicenses($addLicensesArray);


$requestBody->setRemoveLicenses(['bea13e0c-3828-4daa-a392-28af7ff61a0f', ]);



$requestResult = $graphServiceClient->me()->assignLicense()->post($requestBody);


```