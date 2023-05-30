---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Language();
$additionalData = [
		'isEnabled' => false,
];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->identity()->b2cUserFlows()->byB2cUserFlowId('b2cIdentityUserFlow-id')->languages()->byLanguageId('userFlowLanguageConfiguration-id')->put($requestBody);


```