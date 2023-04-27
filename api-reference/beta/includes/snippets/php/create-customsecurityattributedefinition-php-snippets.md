---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CustomSecurityAttributeDefinition();
$requestBody->setAttributeSet('Engineering');

$requestBody->setDescription('Target completion date');

$requestBody->setIsCollection(false);

$requestBody->setIsSearchable(true);

$requestBody->setName('ProjectDate');

$requestBody->setStatus('Available');

$requestBody->setType('String');

$requestBody->setUsePreDefinedValuesOnly(false);



$result = $graphServiceClient->directory()->customSecurityAttributeDefinitions()->post($requestBody);


```