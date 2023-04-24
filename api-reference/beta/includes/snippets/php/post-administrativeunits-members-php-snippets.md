---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new MembersPostRequestBody();
$additionalData = [
		'@odata.type' => '#microsoft.graph.group', 
		'description' => 'Self help community for golf', 
		'displayName' => 'Golf Assist', 
		'groupTypes' => ['Unified', ],
	'mailEnabled' => true,
	'mailNickname' => 'golfassist', 
	'securityEnabled' => false,
];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->administrativeUnitsById('administrativeUnit-id')->members()->post($requestBody);


```