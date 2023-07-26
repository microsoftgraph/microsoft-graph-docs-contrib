---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Group();
$requestBody->setDescription('Feelgood Marketing Campaign with external partners and vendors.');

$requestBody->setDisplayName('Feelgood Marketing Campaign');

$requestBody->setGroupTypes(['Unified', 	]);

$requestBody->setMailEnabled(true);

$requestBody->setMailNickname('FeelGoodCampaign');

$requestBody->setSecurityEnabled(true);

$additionalData = [
		'owners@odata.bind' => [
				[
				],
			],
		'members@odata.bind' => [
				[
				],
			],
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->groups()->post($requestBody);


```