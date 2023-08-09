---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AssignLicensePostRequestBody();
$addLicensesAssignedLicense1 = new AssignedLicense();
$addLicensesAssignedLicense1->setDisabledPlans(['8a256a2b-b617-496d-b51b-e76466e88db0', 	]);

$addLicensesAssignedLicense1->setSkuId('84a661c4-e949-4bd2-a560-ed7766fcaf2b');


$addLicensesArray []= $addLicensesAssignedLicense1;
$addLicensesAssignedLicense2 = new AssignedLicense();
$addLicensesAssignedLicense2->setDisabledPlans([	]);

$addLicensesAssignedLicense2->setSkuId('f30db892-07e9-47e9-837c-80727f46fd3d');


$addLicensesArray []= $addLicensesAssignedLicense2;
$requestBody->setAddLicenses($addLicensesArray);


$requestBody->setRemoveLicenses([]);



$result = $graphServiceClient->me()->assignLicense()->post($requestBody);


```