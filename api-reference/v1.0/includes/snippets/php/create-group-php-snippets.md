---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Group();
$requestBody->setDescription('Self help community for library');

$requestBody->setDisplayName('Library Assist');

$requestBody->setGroupTypes(['Unified', ]);

$requestBody->setMailEnabled(true);

$requestBody->setMailNickname('library');

$requestBody->setSecurityEnabled(false);



$result = $graphServiceClient->groups()->post($requestBody);


```