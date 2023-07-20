---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new OpenTypeExtension();
$requestBody->set@odatatype('microsoft.graph.openTypeExtension');

$requestBody->setExtensionName('com.contoso.roamingSettings');

$additionalData = [
		'theme' => 'dark', 
		'color' => 'purple', 
		'lang' => 'Japanese', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->me()->extensions()->post($requestBody);


```