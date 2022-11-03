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
'disabledPlans' => ['113feb6c-3fe4-4440-bddc-54d774bf0318', '14ab5db5-e6c4-4b20-b4bc-13e36fd2227f', ],
'skuId' => 'b05e124f-c7cc-45a0-a6aa-8cf78c946968', 
];
$addLicensesAssignedLicense1->setAdditionalData($additionalData);



$addLicensesArray []= $addLicensesAssignedLicense1;
$addLicensesAssignedLicense2 = new AssignedLicense();
$additionalData = [
'disabledPlans' => ['a413a9ff-720c-4822-98ef-2f37c2a21f4c', ],
'skuId' => 'c7df2760-2c81-4ef7-b578-5b5392b571df', 
];
$addLicensesAssignedLicense2->setAdditionalData($additionalData);



$addLicensesArray []= $addLicensesAssignedLicense2;
$requestBody->setAddLicenses($addLicensesArray);


$requestBody->setRemoveLicenses([]);



$requestResult = $graphServiceClient->groupsById('group-id')->assignLicense()->post($requestBody);


```