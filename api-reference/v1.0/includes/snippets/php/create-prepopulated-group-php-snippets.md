---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Group();
$requestBody->setDescription('Group with designated owner and members');

$requestBody->setDisplayName('Operations group');

$requestBody->setGroupTypes([	]);

$requestBody->setMailEnabled(false);

$requestBody->setMailNickname('operations2019');

$requestBody->setSecurityEnabled(true);

$additionalData = [
		'owners@odata.bind' => [
				[
				],
			],
		'members@odata.bind' => [
				[
				],
				[
				],
			],
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->groups()->post($requestBody);


```