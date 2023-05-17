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




$graphServiceClient->identity()->b2cUserFlowsById('b2cIdentityUserFlow-id')->languagesById('userFlowLanguageConfiguration-id')->put($requestBody);


```