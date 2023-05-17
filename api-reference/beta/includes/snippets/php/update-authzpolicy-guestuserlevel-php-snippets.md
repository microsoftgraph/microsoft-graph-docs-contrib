---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AuthorizationPolicy();
$additionalData = [
		'guestUserRole' => '2af84b1e-32c8-42b7-82bc-daa82404023b', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->policies()->authorizationPolicyById('authorizationPolicy-id')->patch($requestBody);


```