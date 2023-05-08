---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new User();
$customSecurityAttributes = new CustomSecurityAttributeValue();
$additionalData = [
		'Engineering' => $customSecurityAttributes = new Engineering();
$		customSecurityAttributes->set@odatatype('#Microsoft.DirectoryServices.CustomSecurityAttributeValue');

$		customSecurityAttributes->setProject@odatatype('#Collection(String)');

$customSecurityAttributes->setProject(['Baker', 'Cascade', ]);


$customSecurityAttributes->setEngineering($engineering);

];
$customSecurityAttributes->setAdditionalData($additionalData);



$requestBody->setCustomSecurityAttributes($customSecurityAttributes);


$result = $graphServiceClient->usersById('user-id')->patch($requestBody);


```