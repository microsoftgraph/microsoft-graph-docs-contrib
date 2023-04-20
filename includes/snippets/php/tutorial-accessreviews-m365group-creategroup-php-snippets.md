---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Group();
$requestBody->setDescription('Feelgood Marketing Campaign with external partners and vendors.');

$requestBody->setDisplayName('Feelgood Marketing Campaign');

$requestBody->setGroupTypes(['Unified', ]);

$requestBody->setMailEnabled(true);

$requestBody->setMailNickname('FeelGoodCampaign');

$requestBody->setSecurityEnabled(true);

$additionalData = [
	'owners@odata.bind' => ['https://graph.microsoft.com/v1.0/users/cdb555e3-b33e-4fd5-a427-17fadacbdfa7', ],
'members@odata.bind' => ['https://graph.microsoft.com/v1.0/users/baf1b0a0-1f9a-4a56-9884-6a30824f8d20', ],
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->groups()->post($requestBody);


```