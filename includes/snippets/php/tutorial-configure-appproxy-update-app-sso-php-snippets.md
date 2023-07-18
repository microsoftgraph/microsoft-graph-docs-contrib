---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Application();
$additionalData = [
		'onPremisesPublishing' => 		[
				'singleSignOnSettings' => 				[
						'kerberosSignOnSettings' => 						[
								'kerberosServicePrincipalName' => 'HTTP/iwademo.contoso.com', 
								'kerberosSignOnMappingAttributeType' => 'userPrincipalName', 
						],

						'singleSignOnMode' => 'onPremisesKerberos', 
				],

		],

];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->applications()->byApplicationId('application-id')->patch($requestBody);


```