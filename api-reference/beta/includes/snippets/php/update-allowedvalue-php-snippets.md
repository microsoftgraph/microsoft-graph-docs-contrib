---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AllowedValue();
$requestBody->setIsActive(false);



$result = $graphServiceClient->directory()->customSecurityAttributeDefinitionsById('customSecurityAttributeDefinition-id')->allowedValuesById('allowedValue-id')->patch($requestBody);


```