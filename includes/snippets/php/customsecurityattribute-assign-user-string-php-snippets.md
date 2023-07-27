---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new User();
$additionalData = [
		'customSecurityAttributes' => 		[
				'engineering' => 				[
						'@odata.type' => '#Microsoft.DirectoryServices.CustomSecurityAttributeValue', 
						'projectDate' => '2022-10-01', 
				],

		],

];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->users()->byUserId('user-id')->patch($requestBody);


```