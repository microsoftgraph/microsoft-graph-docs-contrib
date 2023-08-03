---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new User();
$customSecurityAttributes = new CustomSecurityAttributeValue();
$additionalData = [
		'Engineering' => 		[
				'@odata.type' => '#Microsoft.DirectoryServices.CustomSecurityAttributeValue', 
				'numVendors@odata.type' => '#Int32', 
				'numVendors' => 8,
		],

];
$customSecurityAttributes->setAdditionalData($additionalData);



$requestBody->setCustomSecurityAttributes($customSecurityAttributes);


$result = $graphServiceClient->users()->byUserId('user-id')->patch($requestBody);


```