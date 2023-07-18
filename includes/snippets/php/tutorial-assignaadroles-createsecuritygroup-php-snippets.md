---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Group();
$requestBody->setDescription('IT Helpdesk to support Contoso employees');

$requestBody->setDisplayName('IT Helpdesk (User)');

$requestBody->setMailEnabled(false);

$requestBody->setMailNickname('userHelpdesk');

$requestBody->setSecurityEnabled(true);

$requestBody->setIsAssignableToRole(true);

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