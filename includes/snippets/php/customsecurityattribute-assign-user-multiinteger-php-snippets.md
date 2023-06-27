---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new User();
$additionalData = [
		'customSecurityAttributes' => $requestBody = new CustomSecurityAttributes();
$engineering = new Engineering();
$		engineering->set@odatatype('#Microsoft.DirectoryServices.CustomSecurityAttributeValue');

$		engineering->setCostCenter@odatatype('#Collection(Int32)');

$engineering->setCostCenter([1001,1003,]);


$requestBody->setEngineering($engineering);

$requestBody->setCustomSecurityAttributes($customSecurityAttributes);

];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->users()->byUserId('user-id')->patch($requestBody);


```