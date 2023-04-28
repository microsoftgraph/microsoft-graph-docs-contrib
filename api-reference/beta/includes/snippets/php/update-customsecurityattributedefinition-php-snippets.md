---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CustomSecurityAttributeDefinition();
$requestBody->setDescription('Target completion date (YYYY/MM/DD)');



$result = $graphServiceClient->directory()->customSecurityAttributeDefinitionsById('customSecurityAttributeDefinition-id')->patch($requestBody);


```