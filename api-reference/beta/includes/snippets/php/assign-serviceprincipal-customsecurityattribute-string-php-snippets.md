---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ServicePrincipal();
$customSecurityAttributes = new CustomSecurityAttributeValue();
$additionalData = [
		'Engineering' => $customSecurityAttributes = new Engineering();
$		customSecurityAttributes->set@odatatype('#Microsoft.DirectoryServices.CustomSecurityAttributeValue');

$		customSecurityAttributes->setProjectDate('2022-10-01');


$customSecurityAttributes->setEngineering($engineering);

];
$customSecurityAttributes->setAdditionalData($additionalData);



$requestBody->setCustomSecurityAttributes($customSecurityAttributes);


$result = $graphServiceClient->servicePrincipalsById('servicePrincipal-id')->patch($requestBody);


```