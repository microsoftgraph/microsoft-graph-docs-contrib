---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AssignLicensePostRequestBody();
$addLicensesAssignedLicense1 = new AssignedLicense();
$addLicensesAssignedLicense1->setDisabledPlans(['113feb6c-3fe4-4440-bddc-54d774bf0318', '14ab5db5-e6c4-4b20-b4bc-13e36fd2227f', 	]);

$addLicensesAssignedLicense1->setSkuId('b05e124f-c7cc-45a0-a6aa-8cf78c946968');


$addLicensesArray []= $addLicensesAssignedLicense1;
$addLicensesAssignedLicense2 = new AssignedLicense();
$addLicensesAssignedLicense2->setDisabledPlans(['a413a9ff-720c-4822-98ef-2f37c2a21f4c', 	]);

$addLicensesAssignedLicense2->setSkuId('c7df2760-2c81-4ef7-b578-5b5392b571df');


$addLicensesArray []= $addLicensesAssignedLicense2;
$requestBody->setAddLicenses($addLicensesArray);


$requestBody->setRemoveLicenses([]);



$result = $graphServiceClient->groups()->byGroupId('group-id')->assignLicense()->post($requestBody);


```