---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Extension();
$additionalData = [
		'theme' => 'light', 
		'color' => 'yellow', 
		'lang' => 'Swahili', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->me()->extensions()->byExtensionId('extension-id')->patch($requestBody);


```