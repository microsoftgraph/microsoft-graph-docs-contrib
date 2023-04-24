---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Group();
$requestBody->setDescription('Library Assist');

$requestBody->setDisplayName('Library Assist');

$requestBody->setGroupTypes(['Unified', ]);

$requestBody->setMailEnabled(true);

$requestBody->setMailNickname('library-help');



$result = $graphServiceClient->groupsById('group-id')->patch($requestBody);


```