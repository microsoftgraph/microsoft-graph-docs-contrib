---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AllowedValue();
$requestBody->setId('Alpine');

$requestBody->setIsActive(true);



$result = $graphServiceClient->directory()->customSecurityAttributeDefinitionsById('customSecurityAttributeDefinition-id')->allowedValues()->post($requestBody);


```