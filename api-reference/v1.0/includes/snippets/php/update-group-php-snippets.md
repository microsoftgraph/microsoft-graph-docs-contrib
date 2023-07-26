---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Group();
$requestBody->setDescription('Library Assist');

$requestBody->setDisplayName('Library Assist');

$requestBody->setGroupTypes(['Unified', 	]);

$requestBody->setMailEnabled(true);

$requestBody->setMailNickname('library-help');



$result = $graphServiceClient->groups()->byGroupId('group-id')->patch($requestBody);


```