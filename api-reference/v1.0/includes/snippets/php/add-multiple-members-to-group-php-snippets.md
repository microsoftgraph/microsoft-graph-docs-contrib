---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Group();
$additionalData = [
		'members@odata.bind' => [
				[
				],
				[
				],
				[
				],
			],
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->groups()->byGroupId('group-id')->patch($requestBody);


```