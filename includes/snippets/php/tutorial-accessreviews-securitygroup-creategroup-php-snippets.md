---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Group();
$requestBody->setDescription('Building security');

$requestBody->setDisplayName('Building security');

$requestBody->setGroupTypes([]);

$requestBody->setMailEnabled(false);

$requestBody->setMailNickname('buildingsecurity');

$requestBody->setSecurityEnabled(true);

$additionalData = [
	'owners@odata.bind' => ['https://graph.microsoft.com/beta/users/d3bcdff4-4f80-4418-a65e-7bf3778c5dca', ],
'members@odata.bind' => ['https://graph.microsoft.com/beta/users/3b8ceebc-49e6-4e0c-9e14-c906374a7ef6', 'https://graph.microsoft.com/beta/users/bf59c5ba-5304-4c9b-9192-e5a4cb8444e7', ],
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->groups()->post($requestBody);


```