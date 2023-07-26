---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExtensionProperty();
$requestBody->setName('jobGroup');

$requestBody->setDataType('String');

$requestBody->setIsMultiValued(true);

$requestBody->setTargetObjects(['User', 	]);



$result = $graphServiceClient->applications()->byApplicationId('application-id')->extensionProperties()->post($requestBody);


```