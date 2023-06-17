---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Group();
$requestBody->setDescription('Marketing group');

$requestBody->setDisplayName('Marketing resources');

$requestBody->setMailEnabled(false);

$requestBody->setMailNickname('markres');

$requestBody->setSecurityEnabled(true);



$result = $graphServiceClient->groups()->post($requestBody);


```