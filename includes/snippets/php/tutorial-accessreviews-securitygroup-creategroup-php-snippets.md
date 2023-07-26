---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Group();
$requestBody->setDescription('Building security');

$requestBody->setDisplayName('Building security');

$requestBody->setGroupTypes([	]);

$requestBody->setMailEnabled(false);

$requestBody->setMailNickname('buildingsecurity');

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