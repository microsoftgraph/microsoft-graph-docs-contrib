---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ServicePrincipal();
$additionalData = [
		'customSecurityAttributes' => $requestBody = new CustomSecurityAttributes();
$engineering = new Engineering();
$		engineering->set@odatatype('#Microsoft.DirectoryServices.CustomSecurityAttributeValue');

$		engineering->setProjectDate('2022-10-01');


$requestBody->setEngineering($engineering);

$requestBody->setCustomSecurityAttributes($customSecurityAttributes);

];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->patch($requestBody);


```