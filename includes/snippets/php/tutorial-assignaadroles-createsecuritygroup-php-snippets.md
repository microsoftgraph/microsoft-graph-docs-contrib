---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Group();
$requestBody->setDescription('IT Helpdesk to support Contoso employees');

$requestBody->setDisplayName('IT Helpdesk (User)');

$requestBody->setMailEnabled(false);

$requestBody->setMailNickname('userHelpdesk');

$requestBody->setSecurityEnabled(true);

$requestBody->setIsAssignableToRole(true);

$additionalData = [
		'owners@odata.bind' => ['https://graph.microsoft.com/v1.0/users/1ed8ac56-4827-4733-8f80-86adc2e67db5', ],
	'members@odata.bind' => ['https://graph.microsoft.com/v1.0/users/1ed8ac56-4827-4733-8f80-86adc2e67db5', 'https://graph.microsoft.com/v1.0/users/7146daa8-1b4b-4a66-b2f7-cf593d03c8d2', ],
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->groups()->post($requestBody);


```