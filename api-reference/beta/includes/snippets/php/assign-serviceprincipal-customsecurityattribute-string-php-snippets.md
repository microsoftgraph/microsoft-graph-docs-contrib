---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ServicePrincipal();
$customSecurityAttributes = new CustomSecurityAttributeValue();
$additionalData = [
		'Engineering' => 		[
				'@odata.type' => '#Microsoft.DirectoryServices.CustomSecurityAttributeValue', 
				'projectDate' => '2022-10-01', 
		],

];
$customSecurityAttributes->setAdditionalData($additionalData);



$requestBody->setCustomSecurityAttributes($customSecurityAttributes);


$result = $graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->patch($requestBody);


```