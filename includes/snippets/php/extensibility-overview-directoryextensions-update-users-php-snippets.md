---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new User();
$additionalData = [
		'extension_b7d8e648520f41d3b9c0fdeb91768a0a_permanent_pensionable' => 		null,
		'extension_b7d8e648520f41d3b9c0fdeb91768a0a_jobGroupTracker' => 'E4', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->usersById('user-id')->patch($requestBody);


```